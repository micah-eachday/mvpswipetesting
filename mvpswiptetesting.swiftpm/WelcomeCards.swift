//
//  Home.swift
//  mvpswiptetesting
//
//  Created by Micah Turpin on 7/29/22.
//


import SwiftUI

struct WelcomeCards: View {
    
    // Tabs...
    @State var tabs: [Tab] = [
    
        Tab(title: "Carousel 1"),
        Tab(title: "Carousel 2"),
        Tab(title: "Carousel 3")
    ]
    
    @State var currentIndex: Int = 0
    
    var body: some View {
        
        VStack(spacing: 0){
            // ScrollView for adapting for small screens..
            ScrollView(getRect().height < 750 ? .vertical : .init(), showsIndicators: false) {
                
                VStack(spacing: 20){
                    InfiniteCarouselView(tabs: $tabs, currentIndex: $currentIndex)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            }
        }
    }
}
