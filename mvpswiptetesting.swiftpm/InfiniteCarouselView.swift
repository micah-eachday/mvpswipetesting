//
//  File.swift
//  mvpswiptetesting
//
//  Created by Micah Turpin on 7/29/22.
//

import SwiftUI

struct InfiniteCarouselView: View{
    // Tabs...
    @Binding var tabs: [Tab]
    @Binding var currentIndex: Int
    
    @State var fakeIndex: Int = 0
    
    @State var offset: CGFloat = 0
    
    @State var genericTabs: [Tab] = []
    
    var body: some View{
        
        TabView(selection: $fakeIndex){
            
            ForEach(genericTabs){tab in
                
                // Card View...
                VStack {
                    Image(uiImage: UIImage(named: tab.title)!)
                        .resizable()
                        .frame(maxWidth: .infinity)
                        .scaledToFit()
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .overlay(
                
                    GeometryReader{proxy in
                        Color.clear
                            .preference(key: OffsetKey.self, value: proxy.frame(in: .global).minX)
                    }
                )
                .frame(height: 200)
                .onPreferenceChange(OffsetKey.self, perform: { offset in
                    self.offset = offset
                })
                .tag(getIndex(tab: tab))
            }
        }
        .tabViewStyle(.page(indexDisplayMode: .never))
        .frame(maxHeight: .infinity)
        .onChange(of: offset) { newValue in
            if fakeIndex == 0 && offset == 0{
                fakeIndex = genericTabs.count - 2
                print("fakeIndex is 0 and offset is 0")
            }
            if fakeIndex == genericTabs.count + 1 && offset == 0 {
                fakeIndex = 1
                print("fakeIndex is \(genericTabs.count) - 1 and offset is 0")
            }
        }
        .onAppear {
            
            genericTabs = tabs
            
            // Add first and last extra two items...
            guard var first = genericTabs.first else{
                return
            }
            
            guard var last = genericTabs.last else{
                return
            }
            
            first.id = UUID().uuidString
            last.id = UUID().uuidString
            
            genericTabs.append(first)
            genericTabs.insert(last, at: 0)
            
            fakeIndex = 1
        }
        // Updating Real Time...
        .onChange(of: tabs) { newValue in
            
            
            genericTabs = tabs
            
            // Add first and last extra two items...
            guard var first = genericTabs.first else{
                return
            }
            
            guard var last = genericTabs.last else{
                return
            }
            
            first.id = UUID().uuidString
            last.id = UUID().uuidString
            
            genericTabs.append(first)
            genericTabs.insert(last, at: 0)
        }
        // Updating CurrentIndex...
        .onChange(of: fakeIndex) { newValue in
            print("fakeIndex >>> \(fakeIndex)")
            currentIndex = fakeIndex - 1
            print("currentIndex >>> \(currentIndex)")
        }
    }
    
    func getIndex(tab: Tab)->Int{
        let index = genericTabs.firstIndex { currentTab in
            return currentTab.id == tab.id
        } ?? 0
        
        return index
    }
}

// Offset Key..
struct OffsetKey: PreferenceKey{
    static var defaultValue: CGFloat = 0
    
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}
