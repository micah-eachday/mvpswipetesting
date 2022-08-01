//
//  File.swift
//  mvpswiptetesting
//
//  Created by Micah Turpin on 7/20/22.
//

import Foundation
import SwiftUI
import OrderedCollections
import OrderedCollections

struct xpCounter {
    static var xpInfo: [Int] = [1, 0, 0]
}

struct doInfo {
    static var originalDoList = ["Wake up on time", "Make your bed", "Take ADHD Medication","Brush your teeth", "Use mouthwash", "Floss", "Shower", "Apply deoderant", "Put on clean clothes", "Eat a healthy breakfast", "Eat a healthy lunch", "Clean your workspace", "Eat a light dinner", "Pack your bag"]
    static var morningDoList = ["Wake up on time", "Make your bed", "Take ADHD medication", "Brush your teeth", "Use mouthwash", "Floss", "Shower", "Apply deoderant", "Put on clean clothes", "Eat a healthy breakfast"]
    static var afternoonDoList = ["Eat a healthy lunch"]
    static var eveningDoList = ["Clean your workspace", "Eat a light dinner", "Pack your bag"]
    static var doColors = ["Wake up on time": "BodyLightGreen",
                    "Make your bed": "EnvironmentPurple",
                    "Take ADHD medication": "MindHotPink",
                    "Brush your teeth": "BodyLightGreen",
                    "Use mouthwash": "BodyLightGreen",
                    "Floss": "BodyLightGreen",
                    "Shower": "BodyLightGreen",
                    "Apply deoderant": "BodyLightGreen",
                    "Put on clean clothes": "RelationshipsOrange",
                           "Eat a healthy breakfast": "BodyLightGreen",
                           "Eat a healthy lunch": "BodyLightGreen",
                           "Clean your workspace": "EnvironmentPurple",
                           "Eat a light dinner": "BodyLightGreen",
                           "Pack your bag": "EnvironmentPurple"]
    static var doGIFs: [String: String] = ["Wake up on time": "WakeUpOnTime",
                                           "Make your bed": "MakeYourBed",
                                           "Take ADHD medication": "TakeADHDMedication",
                                           "Brush your teeth": "BrushYourTeeth",
                                           "Use mouthwash": "UseMouthwash",
                                           "Floss": "Floss",
                                           "Shower": "Shower",
                                           "Apply deoderant": "ApplyDeoderant",
                                           "Put on clean clothes": "PutOnCleanClothes",
                                                  "Eat a healthy breakfast": "EatAHealthyBreakfast",
                                                  "Eat a healthy lunch": "EatAHealthyLunch",
                                                  "Clean your workspace": "CleanYourWorkspace",
                                                  "Eat a light dinner": "EatALightDinner",
                                                  "Pack your bag": "PackYourBag"]
    static var doDescriptions: [String: String] = ["Wake up on time": "Starting the day makes a difference, oversleeping makes you feel groggy",
                                            "Make your bed": "Declutter your sleeping space to gain mental clarity all day long",
                                                   "Take ADHD medication": "Improve your dopamine transfer to increase focus and task completion",
                                            "Brush your teeth": "Get rid of plaque that can lead to diseases like gingivitis. . .oh no!",
                                            "Use mouthwash": "It will help drown out that stanky morning breath that people hate",
                                                   "Floss": "Flossing sucks, unless it's in Fortnite. At least your dentist will be happy.",
                                                   "Shower": "Wash the night away. Make sure to clean your pits, privates, and pimples",
                                                   "Apply deoderant": "Smell good and feel good. Try to use deoderants without aluminum",
                                                   "Put on clean clothes": "Stains are temporary, first impressions are forever",
                                                   "Eat a healthy breakfast": "They say it's the most important meal of the day, make it yours.",
                                                   "Eat a healthy lunch": "Avoid fried foods, sugary snacks, and heavily processed packaged meals",
                                                   "Clean your workspace": "Declutter your environment to free your mind from a busy work day",
                                                   "Eat a light dinner": "Small amounts will mean less food for your body to digest overnight",
                                                   "Pack your bag": "Include chargers, pens, your water bottle, and a snack.",
                                                   "Nothing to do": "Good job!",
                                                   "Another do": "Wordzzzz"]
    static var doStreaks: [String: Int] = ["Wake up on time": 0,
                                           "Make your bed": 0,
                                           "Take ADHD mediciation": 0,
                                           "Brush your teeth": 0,
                                           "Use mouthwash": 0,
                                           "Floss": 0,
                                           "Shower": 0,
                                           "Apply deoderant": 0,
                                           "Put on clean clothes": 0,
                                           "Eat a healthy breakfast": 0,
                                           "Eat a healthy lunch": 0,
                                           "Clean your workspace": 0,
                                           "Eat a light dinner": 0,
                                           "Pack your bag": 0]
    static var dosDone: [String: Bool] = ["Wake up on time": false,
                                          "Make your bed": false,
                                          "Take ADHD mediciation": false,
                                          "Brush your teeth": false,
                                          "Use mouthwash": false,
                                          "Floss": false,
                                          "Shower": false,
                                          "Apply deoderant": false,
                                          "Put on clean clothes": false,
                                          "Eat a healthy breakfast": false,
                                          "Eat a healthy lunch": false,
                                          "Clean your workspace": false,
                                          "Eat a light dinner": false,
                                          "Pack your bag": false]
    static var isActive: [String: Bool] = ["Wake up on time": false,
                                           "Make your bed": false,
                                           "Take ADHD mediciation": false,
                                           "Brush your teeth": false,
                                           "Use mouthwash": false,
                                           "Floss": false,
                                           "Shower": false,
                                           "Apply deoderant": false,
                                           "Put on clean clothes": false,
                                           "Eat a healthy breakfast": false,
                                           "Eat a healthy lunch": false,
                                           "Clean your workspace": false,
                                           "Eat a light dinner": false,
                                           "Pack your bag": false]
    static var doTodos: OrderedDictionary<String, String> = ["Wake up on time": "Starting the day makes a difference, oversleeping makes you feel groggy",
                                                             "Make your bed": "Declutter your sleeping space to gain mental clarity all day long",
                                                             "Shower": "Wash the night away. Make sure to clean your pits, privates, and pimples",
                                                             "Brush your teeth": "Get rid of plaque that can lead to diseases like gingivitis. . .oh no!",
                                                             "Use mouthwash": "It will help drown out that stanky morning breath that people hate",]
    static var snoozedDos: OrderedDictionary<String, String> = ["Nothing snoozed": "No snoozed dos"]
    static var completedDos: OrderedDictionary<String, String> = ["Nothing completed": "Get cracking!"]
}

struct count {
    @State var doCount: Int = doInfo.originalDoList.count
}

struct SheetPresentationForSwiftUI<Content>: UIViewRepresentable where Content: View {
    
    @Binding var isPresented: Bool
    let onDismiss: (() -> Void)?
    let detents: [UISheetPresentationController.Detent]
    let content: Content
    
    
    init(
        _ isPresented: Binding<Bool>,
        onDismiss: (() -> Void)? = nil,
        detents: [UISheetPresentationController.Detent] = [.medium()],
        @ViewBuilder content: () -> Content
    ) {
        self._isPresented = isPresented
        self.onDismiss = onDismiss
        self.detents = detents
        self.content = content()
    }
    
    func makeUIView(context: Context) -> UIView {
        let view = UIView()
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
        
        // Create the UIViewController that will be presented by the UIButton
        let viewController = UIViewController()
        
        // Create the UIHostingController that will embed the SwiftUI View
        let hostingController = UIHostingController(rootView: content)
        
        // Add the UIHostingController to the UIViewController
        viewController.addChild(hostingController)
        viewController.view.addSubview(hostingController.view)
        
        // Set constraints
        hostingController.view.translatesAutoresizingMaskIntoConstraints = false
        hostingController.view.leftAnchor.constraint(equalTo: viewController.view.leftAnchor).isActive = true
        hostingController.view.topAnchor.constraint(equalTo: viewController.view.topAnchor).isActive = true
        hostingController.view.rightAnchor.constraint(equalTo: viewController.view.rightAnchor).isActive = true
        hostingController.view.bottomAnchor.constraint(equalTo: viewController.view.bottomAnchor).isActive = true
        hostingController.didMove(toParent: viewController)
        
        // Set the presentationController as a UISheetPresentationController
        if let sheetController = viewController.presentationController as? UISheetPresentationController {
            sheetController.detents = detents
            sheetController.prefersGrabberVisible = true
            sheetController.prefersScrollingExpandsWhenScrolledToEdge = false
            sheetController.largestUndimmedDetentIdentifier = .medium
        }
        
        // Set the coordinator (delegate)
        // We need the delegate to use the presentationControllerDidDismiss function
        viewController.presentationController?.delegate = context.coordinator
        
        
        if isPresented {
            // Present the viewController
            uiView.window?.rootViewController?.present(viewController, animated: true)
        } else {
            // Dismiss the viewController
            uiView.window?.rootViewController?.dismiss(animated: true)
        }
        
    }
    
    /* Creates the custom instance that you use to communicate changes
    from your view controller to other parts of your SwiftUI interface.
     */
    func makeCoordinator() -> Coordinator {
        Coordinator(isPresented: $isPresented, onDismiss: onDismiss)
    }
    
    class Coordinator: NSObject, UISheetPresentationControllerDelegate {
        @Binding var isPresented: Bool
        let onDismiss: (() -> Void)?
        
        init(isPresented: Binding<Bool>, onDismiss: (() -> Void)? = nil) {
            self._isPresented = isPresented
            self.onDismiss = onDismiss
        }
        
        func presentationControllerDidDismiss(_ presentationController: UIPresentationController) {
            isPresented = false
            if let onDismiss = onDismiss {
                onDismiss()
            }
        }
        
    }
    
}

struct sheetWithDetentsViewModifier<SwiftUIContent>: ViewModifier where SwiftUIContent: View {
    
    @Binding var isPresented: Bool
    let onDismiss: (() -> Void)?
    let detents: [UISheetPresentationController.Detent]
    let swiftUIContent: SwiftUIContent
    
    init(isPresented: Binding<Bool>, detents: [UISheetPresentationController.Detent] = [.medium()] , onDismiss: (() -> Void)? = nil, content: () -> SwiftUIContent) {
        self._isPresented = isPresented
        self.onDismiss = onDismiss
        self.swiftUIContent = content()
        self.detents = detents
    }
    
    func body(content: Content) -> some View {
        ZStack {
            SheetPresentationForSwiftUI($isPresented,onDismiss: onDismiss, detents: detents) {
                swiftUIContent
            }.fixedSize()
            content
        }
    }
}

extension View {
    
    func sheetWithDetents<Content>(
        isPresented: Binding<Bool>,
        detents: [UISheetPresentationController.Detent],
        onDismiss: (() -> Void)?,
        content: @escaping () -> Content) -> some View where Content : View {
            modifier(
                sheetWithDetentsViewModifier(
                    isPresented: isPresented,
                    detents: detents,
                    onDismiss: onDismiss,
                    content: content)
            )
        }
}

struct ContentView: View {
    @State private var showingPopover = false
    
    @State var originalList = doInfo.originalDoList
    
    @State var dos = doInfo()
    @State var doCount: Int = doInfo.originalDoList.count
    
    @State var currentProgress: CGFloat = 0.0
    
    @State private var date = Date.now
    
    let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter
    } ()
    
    let timeFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.timeStyle = .short
        return formatter
    } ()
    
    var dateStr: String {
        dateFormatter.string(from: self.date)
    }
    
    var timeStr: String {
        timeFormatter.string(from: self.date)
    }
    
    @State var bgColors = [Color](repeating: Color.BlackBackground, count: count().doCount)
    @State var leadingPadding = [CGFloat](repeating: 25, count: count().doCount)
    @State var trailingPadding = [CGFloat](repeating: 25, count: count().doCount)
    @State var systemImage = [String](repeating: "smile.fill", count: count().doCount)
    @State var iconAlignment = [SwiftUI.Alignment](repeating: .center, count: count().doCount)
    @State var padding = [Edge.Set](repeating: .leading, count: count().doCount)
    @State var isChanging = true
    @State private var offsets = [CGSize](repeating: CGSize.zero, count: count().doCount)
    
    @State var dosForCount = doInfo.doTodos.keys
    
    @State private var isPresented = false
    
    @State private var doNameForCard: String = "Do Name Goes Here"
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(self.dateStr)
                  .font(Font.custom("SFProDisplay-Semibold", size: 14))
                  .textCase(.uppercase)
                  .foregroundColor(Color(red: 0.82, green: 0.82, blue: 0.82))
                  .frame(minWidth: 127.00, minHeight: 17.00, alignment: .topLeading)
                Text("Today")
                  .font(Font.custom("SFProDisplay-Bold", size: 35))
                  .foregroundColor(Color.white)
                  .frame(minWidth: 96.00, minHeight: 42.00, alignment: .topLeading)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
            VStack(alignment: .center) {
                ZStack() {
                    Text("\(Image(systemName: "person.fill"))")
                      .font(.system(size: 24))
                      .multilineTextAlignment(.center)
                      .foregroundColor(Color.white)
                      .frame(minWidth: 26.00, minHeight: 27.00, alignment: .center)
                    ZStack(alignment: .bottom) {
                        Circle() // baseline progress bar
                            .stroke(
                                Color.gray,
                                lineWidth: 5
                            )
                        Circle() // snoozed progress bar
                            .trim(from: 0, to: 0.4)
                            .stroke(
                                Color.SnoozedLightPurple,
                                lineWidth: 5
                            )
                            .rotationEffect(.degrees(90))
                        Circle() // completed progress bar
                            .trim(from: 0, to: 0.25)
                            .stroke(
                                Color.EnvironmentPurple,
                                lineWidth: 5
                            )
                            .rotationEffect(.degrees(90))
                        HStack(spacing: 20) {
                            Text("001")
                              .font(.system(size: 10, design: .monospaced))
                              .fontWeight(.semibold)
                              .multilineTextAlignment(.center)
                              .foregroundColor(Color.black)
                              .frame(minWidth: 19.00, minHeight: 12.00, alignment: .center)

                        }
                        .padding(EdgeInsets(top: 5, leading: 10, bottom: 5, trailing: 10))
                          .background(Color(red: 1, green: 0.84, blue: 0).clipShape(RoundedRectangle(cornerRadius:5)))
                          .frame(width: 30.00, height: 14.00)
                    }
                    .frame(maxWidth: 100)
                }
            }
        } // closing brace for HStack
        .frame(maxWidth: .infinity, maxHeight: 62.00)
        
        Rectangle() // separator
            .frame(maxWidth: .infinity, maxHeight: 0.30)
            .padding(.top, 20)
          .rotationEffect(.degrees(-0.00))
        
        NavigationView {
            ScrollView {
                // welcome section
                VStack(alignment: .leading) {
                    Label {
                        Text("Welcome")
                          .font(Font.custom("SFProDisplay-Semibold", size: 30))
                          .foregroundColor(Color.white)
                          .frame(minWidth: 91.00, minHeight: 26.00, alignment: .leading)
                    } icon: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 50)
                                .foregroundColor(.gray)
                                .frame(maxWidth: 30, maxHeight: 30)
                            Image(systemName: "hand.wave.fill")
                                .frame(minWidth: 25.00, minHeight: 25.00)
                        }
                        .padding(.bottom, 10)
                    }
                    HStack {
                        VStack {
                            ZStack(alignment: .topLeading) {
                                RoundedRectangle(cornerRadius: 10)
                                    .foregroundColor(.gray)
                                    .frame(maxWidth: 2, maxHeight: .infinity)
                                RoundedRectangle(cornerRadius: 10)
                                    .foregroundColor(.gray)
                                    .frame(maxWidth: 2, maxHeight: .infinity)
                            }
                            .padding(.leading, 15)
                            .onAppear(perform: self.startLoading)
                        }
                        WelcomeCards()
                    }
                    .padding(.top, -10)
                    .frame(maxHeight: .infinity)
                }
                .frame(minHeight: 250)
                // Todo section
                VStack(alignment: .leading) {
                    Label {
                        Text("Todo")
                          .font(Font.custom("SFProDisplay-Semibold", size: 30))
                          .foregroundColor(Color.white)
                          .frame(minWidth: 91.00, minHeight: 26.00, alignment: .leading)
                    } icon: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 50)
                                .foregroundColor(.yellow)
                                .frame(maxWidth: 30, maxHeight: 30)
                            Image(systemName: "sun.max.fill")
                                .foregroundColor(.black)
                                .frame(minWidth: 25.00, minHeight: 25.00)
                        }
                        .padding(.bottom, 10)
                    }
                    HStack {
                        VStack {
                            ZStack(alignment: .topLeading) {
                                RoundedRectangle(cornerRadius: 10)
                                    .foregroundColor(.gray)
                                    .frame(maxWidth: 2, maxHeight: .infinity)
                                RoundedRectangle(cornerRadius: 10)
                                    .foregroundColor(.yellow)
                                    .frame(maxWidth: 2, maxHeight: .infinity)
                            }
                            .padding(.leading, 15)
                            .onAppear(perform: self.startLoading)
                        }
                        VStack {
                            ForEach(doInfo.doTodos.keys, id: \.self) {
                                doName in
                                let index = dosForCount.firstIndex(of: doName)
                                var element = doInfo.doTodos.elements[index!]
                                ZStack{
                                    Button(action: {
                                        if doInfo.dosDone[doName] == false && doInfo.isActive[doName] == true {
                                            self.offsets[index!] = .zero
                                            self.bgColors[index!] = Color.BlackBackground
                                            doInfo.dosDone[doName] = true
                                            doInfo.doStreaks[doName]! += 1
                                            xpCounter.xpInfo[1] += 10
                                            print(xpCounter.xpInfo[1])
                                        } else {
                                            self.offsets[index!] = .zero
                                            self.bgColors[index!] = Color.BlackBackground
                                        }
                                        self.leadingPadding[index!] = 25
                                        self.trailingPadding[index!] = 25
                                    }) {
                                        HStack {
                                            Text("\(Image(systemName: self.systemImage[index!]))")
                                                .padding([.trailing, .leading], 7.5)
                                        }
                                        .foregroundColor(.white)
                                        .frame(maxWidth: .infinity, maxHeight: 60, alignment: self.iconAlignment[index!])
                                        .background(bgColors[index!])
                                        .cornerRadius(10)
                                    } // closing brace for button
                                    .padding()
                                    VStack(alignment: .leading) {
                                        let color = Color(doInfo.doColors[doName] ?? "EnvironmentPurple")
                                        HStack {
                                            ZStack {
                                                let doStreak = (doInfo.doStreaks[doName] ?? 0) as Int
                                                let streak = String(format: "%02d", doStreak)
                                                RoundedRectangle(cornerRadius: 10)
                                                    .fill(color)
                                                .frame(width: 50, height: 50)
                                                Text(streak)
                                                  .font(.system(size: 16, design: .monospaced))
                                                  .fontWeight(.bold)
                                                  .multilineTextAlignment(.center)
                                                  .foregroundColor(Color.black)
                                                  .frame(minWidth: 20.00, minHeight: 19.00, alignment: .center)

                                            }
                                            VStack(alignment: .leading) {
                                                Text("\(doName)")
                                                    .font(Font.custom("SFProDisplay-Medium", size: 22))
                                                Label {
                                                    if doInfo.doStreaks[doName] == 0 {
                                                        Text("\(doInfo.doDescriptions[doName] ?? "")")
                                                            .frame(width: 150, alignment: .leading)
                                                            .font(.subheadline)
                                                            .foregroundColor(.gray)
                                                            .lineLimit(1)
                                                            .truncationMode(.tail)
                                                            .padding(.leading, -10)
                                                    } else {
                                                        Text("\(doInfo.doDescriptions[doName] ?? "")")
                                                            .frame(width: 150, alignment: .leading)
                                                            .font(.subheadline)
                                                            .foregroundColor(.StreakTextOrange)
                                                            .lineLimit(1)
                                                            .truncationMode(.tail)
                                                            .padding(.leading, -10)
                                                    }
                                                } icon: {
                                                    if doInfo.doStreaks[doName] == 0 {
                                                        Image(systemName: "info.circle.fill")
                                                        .foregroundColor(.gray)
                                                    } else {
                                                        LinearGradient(gradient: Gradient(colors: [Color.red, Color.orange]), startPoint: .top, endPoint: .bottom)
                                                            .mask(Image(systemName: "flame.fill"))
                                                    }
                                                }
                                                .frame(maxHeight: 20)
                                            }
                                            .padding(.leading, 5)
                                        }
                                        .padding()
                                    }
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .background(
                                        RoundedRectangle(cornerRadius: 20).fill(Color.DoCardGray))
                                    .padding([.top, .bottom], 2)
                                    .offset(x: offsets[index!].width)
                                    .gesture(
                                        DragGesture()
                                            .onChanged { gesture in
                                                self.offsets[index!] = gesture.translation
                                                doInfo.isActive[doName] = true
                                                if offsets[index!].width > 0 {
                                                    self.bgColors[index!] = Color.GreenBackground
                                                    self.leadingPadding[index!] = 1
                                                    self.trailingPadding[index!] = 25
                                                    self.systemImage[index!] = "checkmark.circle"
                                                    self.iconAlignment[index!] = .leading
                                                    self.padding[index!] = .leading
                                                } else if offsets[index!].width < 0 {
                                                    self.bgColors[index!] = Color.RedBackground
                                                    self.trailingPadding[index!] = 1
                                                    self.leadingPadding[index!] = 25
                                                    self.systemImage[index!] = "zzz"
                                                    self.iconAlignment[index!] = .trailing
                                                    self.padding[index!] = .trailing
                                                }
                                            }
                                            .onEnded { _ in
                                                if self.offsets[index!].width < -100 {
                                                    if element.key == "\(dosForCount[index!])snoozed" {
                                                        self.offsets[index!] = .zero
                                                        self.bgColors[index!] = Color.BlackBackground
                                                    } else {
                                                        doInfo.doTodos[doName] = "\(dosForCount[index!])snoozed"
                                                        self.offsets[index!] = .zero
                                                        self.bgColors[index!] = Color.BlackBackground
                                                    }
                                                    self.leadingPadding[index!] = 25
                                                    self.trailingPadding[index!] = 25
                                                }
                                                else if self.offsets[index!].width > 100 {
                                                    if element.key == "\(dosForCount[index!])completed" {
                                                        self.offsets[index!] = .zero
                                                        self.bgColors[index!] = Color.BlackBackground
                                                    } else {
                                                        element.key = "\(dosForCount[index!])completed"
                                                        self.offsets[index!] = .zero
                                                        self.bgColors[index!] = Color.BlackBackground
                                                    }
                                                    self.leadingPadding[index!] = 25
                                                    self.trailingPadding[index!] = 25
                                                }
                                                else if self.offsets[index!].width < -50 {
                                                    self.offsets[index!].width = -50
                                                }
                                                else if self.offsets[index!].width > 50 {
                                                    self.offsets[index!].width = 50
                                                }
                                                else if (self.offsets[index!].width < 50 && self.offsets[index!].width > 0) || (self.offsets[index!].width > -50 && self.offsets[index!].width < 0){
                                                    self.offsets[index!].width = .zero
                                                    self.leadingPadding[index!] = 25
                                                    self.trailingPadding[index!] = 25
                                                }
                                                doInfo.isActive[doName] = false
                                            }
                                )
                                }
                                .onTapGesture(count: 1) {
                                    self.isPresented.toggle()
                                    self.doNameForCard = doName
                                    print(self.isPresented)
                                    print(self.doNameForCard)
                                }
                            }
                        }
                    }
                    .padding(.top, -10)
                    .frame(maxHeight: .infinity)
                }
                
            }
            .sheetWithDetents(
                isPresented: $isPresented,
                detents: [.medium(),.large()]
            ) {
                print("The sheet has been dismissed")
            } content: {
                Group {
                    let _ = print(doNameForCard)
                    let _ = print(doInfo.doGIFs[doNameForCard] ?? "")
                    VStack {
                        GifImage(doInfo.doGIFs[doNameForCard] ?? "")
                            .scaledToFit()
                            .frame(alignment: .top)
                    }
                    VStack(alignment: .leading) {
                        Text("\(doNameForCard)")
                          .font(Font.custom("SFProDisplay-Bold", size: 34))
                          .foregroundColor(Color.white)
                          .frame(minWidth: 259.00, minHeight: 41.00, alignment: .bottomLeading)
                          .lineLimit(1)
                        Text("\(doInfo.doDescriptions[doNameForCard] ?? "")")
                          .font(.system(size: 18))
                          .foregroundColor(Color.white)
                          .frame(minWidth: 320.00, minHeight: 42.00, alignment: .topLeading)
                          .opacity(0.69)
                          .lineLimit(2)
                        HStack {
                            VStack(alignment: .leading) {
                                Text("Alarm")
                            }
                            VStack(alignment: .trailing) {
                                Text("\(timeStr)")
                            }
                        }
                        .frame(maxWidth: .infinity)
                        .border(.green)
                    }
                    .padding()
                }
                .frame(alignment: .top)
            }
            .padding(.top)
            .navigationBarHidden(true)
        } // closing brace for NavigationView
    } // closing brace for body
        
    func startLoading() {
        Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in
            withAnimation() {
                if self.currentProgress >= 1.0 {
                    timer.invalidate()
                }
                self.currentProgress += 0.01
                
            }
        }
    }
}

/*Section(header:
    Label {
        Text("Afternoon")
        .font(.title)
} icon: {
    Image(systemName: "fork.knife.circle.fill")
        .symbolRenderingMode(.palette)
        .foregroundStyle(Color.blue, Color.SymbolBackgroundGray)
        .font(.title)
        .frame(minWidth: 25.00, minHeight: 25.00, alignment: .bottom)
}) {
    HStack {
        VStack {
            ZStack(alignment: .topLeading) {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(.gray)
                    .frame(maxWidth: 2, maxHeight: .infinity)
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(.blue)
                    .frame(maxWidth: 2, maxHeight: 1000*currentProgress)
            }
            .onAppear(perform: self.startLoading)
        }
        // section that contains proper dos
        VStack (alignment: .leading) {
            ForEach(doInfo.doTodos.keys, id: \.self) {
                doName in
                let index = dosForCount.firstIndex(of: doName)
                var element = doInfo.doTodos.elements[index!]
                ZStack{
                    Button(action: {
                        if doInfo.dosDone[doName] == false && doInfo.isActive[doName] == true {
                            self.offsets[index!] = .zero
                            self.bgColors[index!] = Color.BlackBackground
                            doInfo.dosDone[doName] = true
                            doInfo.doStreaks[doName]! += 1
                            xpCounter.xpInfo[1] += 10
                            print(xpCounter.xpInfo[1])
                        } else {
                            self.offsets[index!] = .zero
                            self.bgColors[index!] = Color.BlackBackground
                        }
                        self.leadingPadding[index!] = 25
                        self.trailingPadding[index!] = 25
                    }) {
                        HStack {
                            Text("\(Image(systemName: self.systemImage[index!]))")
                                .padding([.trailing, .leading], 7.5)
                        }
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, maxHeight: 60, alignment: self.iconAlignment[index!])
                        .background(bgColors[index!])
                        .cornerRadius(10)
                    } // closing brace for button
                    .padding()
                    VStack(alignment: .leading) {
                        let color = Color(doInfo.doColors[doName] ?? "EnvironmentPurple")
                        HStack {
                            ZStack {
                                let doStreak = (doInfo.doStreaks[doName] ?? 0) as Int
                                let streak = String(format: "%02d", doStreak)
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(color)
                                .frame(width: 50, height: 50)
                                Text(streak)
                                  .font(.system(size: 16, design: .monospaced))
                                  .fontWeight(.bold)
                                  .multilineTextAlignment(.center)
                                  .foregroundColor(Color.black)
                                  .frame(minWidth: 20.00, minHeight: 19.00, alignment: .center)

                            }
                            VStack(alignment: .leading) {
                                Text("\(doName)")
                                    .font(Font.custom("SFProDisplay-Medium", size: 22))
                                Label {
                                    if doInfo.doStreaks[doName] == 0 {
                                        Text("\(doInfo.doDescriptions[doName] ?? "")")
                                            .frame(width: 150, alignment: .leading)
                                            .font(.subheadline)
                                            .foregroundColor(.gray)
                                            .lineLimit(1)
                                            .truncationMode(.tail)
                                            .padding(.leading, -10)
                                    } else {
                                        Text("\(doInfo.doDescriptions[doName] ?? "")")
                                            .frame(width: 150, alignment: .leading)
                                            .font(.subheadline)
                                            .foregroundColor(.StreakTextOrange)
                                            .lineLimit(1)
                                            .truncationMode(.tail)
                                            .padding(.leading, -10)
                                    }
                                } icon: {
                                    if doInfo.doStreaks[doName] == 0 {
                                        Image(systemName: "info.circle.fill")
                                        .foregroundColor(.gray)
                                    } else {
                                        LinearGradient(gradient: Gradient(colors: [Color.red, Color.orange]), startPoint: .top, endPoint: .bottom)
                                            .mask(Image(systemName: "flame.fill"))
                                    }
                                }
                                .frame(maxHeight: 20)
                            }
                            .padding(.leading, 5)
                        }
                        .padding()
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(
                        RoundedRectangle(cornerRadius: 20).fill(Color.DoCardGray))
                    .padding([.top, .bottom], 2)
                    .offset(x: offsets[index!].width)
                    .gesture(
                        DragGesture()
                            .onChanged { gesture in
                                self.offsets[index!] = gesture.translation
                                doInfo.isActive[doName] = true
                                if offsets[index!].width > 0 {
                                    self.bgColors[index!] = Color.GreenBackground
                                    self.leadingPadding[index!] = 1
                                    self.trailingPadding[index!] = 25
                                    self.systemImage[index!] = "checkmark.circle"
                                    self.iconAlignment[index!] = .leading
                                    self.padding[index!] = .leading
                                } else if offsets[index!].width < 0 {
                                    self.bgColors[index!] = Color.RedBackground
                                    self.trailingPadding[index!] = 1
                                    self.leadingPadding[index!] = 25
                                    self.systemImage[index!] = "zzz"
                                    self.iconAlignment[index!] = .trailing
                                    self.padding[index!] = .trailing
                                }
                            }
                            .onEnded { _ in
                                if self.offsets[index!].width < -100 {
                                    if element.key == "\(dosForCount[index!])snoozed" {
                                        self.offsets[index!] = .zero
                                        self.bgColors[index!] = Color.BlackBackground
                                    } else {
                                        doInfo.doTodos[doName] = "\(dosForCount[index!])snoozed"
                                        self.offsets[index!] = .zero
                                        self.bgColors[index!] = Color.BlackBackground
                                    }
                                    self.leadingPadding[index!] = 25
                                    self.trailingPadding[index!] = 25
                                }
                                else if self.offsets[index!].width > 100 {
                                    if element.key == "\(dosForCount[index!])completed" {
                                        self.offsets[index!] = .zero
                                        self.bgColors[index!] = Color.BlackBackground
                                    } else {
                                        element.key = "\(dosForCount[index!])completed"
                                        self.offsets[index!] = .zero
                                        self.bgColors[index!] = Color.BlackBackground
                                    }
                                    self.leadingPadding[index!] = 25
                                    self.trailingPadding[index!] = 25
                                }
                                else if self.offsets[index!].width < -50 {
                                    self.offsets[index!].width = -50
                                }
                                else if self.offsets[index!].width > 50 {
                                    self.offsets[index!].width = 50
                                }
                                else if (self.offsets[index!].width < 50 && self.offsets[index!].width > 0) || (self.offsets[index!].width > -50 && self.offsets[index!].width < 0){
                                    self.offsets[index!].width = .zero
                                    self.leadingPadding[index!] = 25
                                    self.trailingPadding[index!] = 25
                                }
                                doInfo.isActive[doName] = false
                            }
                )
                }
            }
        }
        .frame(maxWidth: .infinity)
        .padding(.trailing, -10)
    } // closing brace for HStack
    .padding(EdgeInsets(top: 1, leading: -3, bottom: 5
                        , trailing: 0))
} // closing brace for To Do section
.listRowBackground(Color.clear)
.headerProminence(.increased)
.padding([.leading, .trailing], -10)
Section(header:
    Label {
        Text("Evening")
        .font(.title)
} icon: {
    Image(systemName: "moon.stars.fill")
        .symbolRenderingMode(.palette)
        .foregroundStyle(Color.purple, Color.purple)
        .font(.title)
        .frame(minWidth: 25.00, minHeight: 25.00, alignment: .bottom)
}) {
    HStack {
        VStack {
            ZStack(alignment: .topLeading) {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(.gray)
                    .frame(maxWidth: 2, maxHeight: .infinity)
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(.purple)
                    .frame(maxWidth: 2, maxHeight: 1000*currentProgress)
            }
            .onAppear(perform: self.startLoading)
        }
        // section that contains proper dos
        VStack (alignment: .leading) {
            ForEach(doInfo.doTodos.keys, id: \.self) {
                doName in
                let index = dosForCount.firstIndex(of: doName)
                var element = doInfo.doTodos.elements[index!]
                ZStack{
                    Button(action: {
                        if doInfo.dosDone[doName] == false && doInfo.isActive[doName] == true {
                            self.offsets[index!] = .zero
                            self.bgColors[index!] = Color.BlackBackground
                            doInfo.dosDone[doName] = true
                            doInfo.doStreaks[doName]! += 1
                            xpCounter.xpInfo[1] += 10
                            print(xpCounter.xpInfo[1])
                        } else {
                            self.offsets[index!] = .zero
                            self.bgColors[index!] = Color.BlackBackground
                        }
                        self.leadingPadding[index!] = 25
                        self.trailingPadding[index!] = 25
                    }) {
                        HStack {
                            Text("\(Image(systemName: self.systemImage[index!]))")
                                .padding([.trailing, .leading], 7.5)
                        }
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, maxHeight: 60, alignment: self.iconAlignment[index!])
                        .background(bgColors[index!])
                        .cornerRadius(10)
                    } // closing brace for button
                    .padding()
                    VStack(alignment: .leading) {
                        let color = Color(doInfo.doColors[doName] ?? "EnvironmentPurple")
                        HStack {
                            ZStack {
                                let doStreak = (doInfo.doStreaks[doName] ?? 0) as Int
                                let streak = String(format: "%02d", doStreak)
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(color)
                                .frame(width: 50, height: 50)
                                Text(streak)
                                  .font(.system(size: 16, design: .monospaced))
                                  .fontWeight(.bold)
                                  .multilineTextAlignment(.center)
                                  .foregroundColor(Color.black)
                                  .frame(minWidth: 20.00, minHeight: 19.00, alignment: .center)

                            }
                            VStack(alignment: .leading) {
                                Text("\(doName)")
                                    .font(Font.custom("SFProDisplay-Medium", size: 22))
                                Label {
                                    if doInfo.doStreaks[doName] == 0 {
                                        Text("\(doInfo.doDescriptions[doName] ?? "")")
                                            .frame(width: 150, alignment: .leading)
                                            .font(.subheadline)
                                            .foregroundColor(.gray)
                                            .lineLimit(1)
                                            .truncationMode(.tail)
                                            .padding(.leading, -10)
                                    } else {
                                        Text("\(doInfo.doDescriptions[doName] ?? "")")
                                            .frame(width: 150, alignment: .leading)
                                            .font(.subheadline)
                                            .foregroundColor(.StreakTextOrange)
                                            .lineLimit(1)
                                            .truncationMode(.tail)
                                            .padding(.leading, -10)
                                    }
                                } icon: {
                                    if doInfo.doStreaks[doName] == 0 {
                                        Image(systemName: "info.circle.fill")
                                        .foregroundColor(.gray)
                                    } else {
                                        LinearGradient(gradient: Gradient(colors: [Color.red, Color.orange]), startPoint: .top, endPoint: .bottom)
                                            .mask(Image(systemName: "flame.fill"))
                                    }
                                }
                                .frame(maxHeight: 20)
                            }
                            .padding(.leading, 5)
                        }
                        .padding()
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(
                        RoundedRectangle(cornerRadius: 20).fill(Color.DoCardGray))
                    .padding([.top, .bottom], 2)
                    .offset(x: offsets[index!].width)
                    .gesture(
                        DragGesture()
                            .onChanged { gesture in
                                self.offsets[index!] = gesture.translation
                                doInfo.isActive[doName] = true
                                if offsets[index!].width > 0 {
                                    self.bgColors[index!] = Color.GreenBackground
                                    self.leadingPadding[index!] = 1
                                    self.trailingPadding[index!] = 25
                                    self.systemImage[index!] = "checkmark.circle"
                                    self.iconAlignment[index!] = .leading
                                    self.padding[index!] = .leading
                                } else if offsets[index!].width < 0 {
                                    self.bgColors[index!] = Color.RedBackground
                                    self.trailingPadding[index!] = 1
                                    self.leadingPadding[index!] = 25
                                    self.systemImage[index!] = "zzz"
                                    self.iconAlignment[index!] = .trailing
                                    self.padding[index!] = .trailing
                                }
                            }
                            .onEnded { _ in
                                if self.offsets[index!].width < -100 {
                                    if element.key == "\(dosForCount[index!])snoozed" {
                                        self.offsets[index!] = .zero
                                        self.bgColors[index!] = Color.BlackBackground
                                    } else {
                                        doInfo.doTodos[doName] = "\(dosForCount[index!])snoozed"
                                        self.offsets[index!] = .zero
                                        self.bgColors[index!] = Color.BlackBackground
                                    }
                                    self.leadingPadding[index!] = 25
                                    self.trailingPadding[index!] = 25
                                }
                                else if self.offsets[index!].width > 100 {
                                    if element.key == "\(dosForCount[index!])completed" {
                                        self.offsets[index!] = .zero
                                        self.bgColors[index!] = Color.BlackBackground
                                    } else {
                                        element.key = "\(dosForCount[index!])completed"
                                        self.offsets[index!] = .zero
                                        self.bgColors[index!] = Color.BlackBackground
                                    }
                                    self.leadingPadding[index!] = 25
                                    self.trailingPadding[index!] = 25
                                }
                                else if self.offsets[index!].width < -50 {
                                    self.offsets[index!].width = -50
                                }
                                else if self.offsets[index!].width > 50 {
                                    self.offsets[index!].width = 50
                                }
                                else if (self.offsets[index!].width < 50 && self.offsets[index!].width > 0) || (self.offsets[index!].width > -50 && self.offsets[index!].width < 0){
                                    self.offsets[index!].width = .zero
                                    self.leadingPadding[index!] = 25
                                    self.trailingPadding[index!] = 25
                                }
                                doInfo.isActive[doName] = false
                            }
                )
                }
            }
        }
        .frame(maxWidth: .infinity)
        .padding(.trailing, -10)
    } // closing brace for HStack
    .padding(EdgeInsets(top: 1, leading: -3, bottom: 5
                        , trailing: 0))
} // closing brace for To Do section
.listRowBackground(Color.clear)
.headerProminence(.increased)
.padding([.leading, .trailing], -10)
Section(header:
    Label {
        Text("Snoozed")
        .font(.title)
} icon: {
    Image(systemName: "speaker.zzz.fill")
        .symbolRenderingMode(.palette)
        .foregroundStyle(Color.blue, Color.SymbolBackgroundGray)
        .font(.title)
        .frame(minWidth: 25.00, minHeight: 25.00, alignment: .bottom)
}) {
    HStack {
        VStack {
            ZStack(alignment: .topLeading) {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(.gray)
                    .frame(maxWidth: 2, maxHeight: .infinity)
            }
        }
        // section that contains proper dos
        VStack (alignment: .leading) {
            ForEach(doInfo.doTodos.keys, id: \.self) {
                doName in
                let index = dosForCount.firstIndex(of: doName)
                var element = doInfo.doTodos.elements[index!]
                ZStack{
                    Button(action: {
                        if doInfo.dosDone[doName] == false && doInfo.isActive[doName] == true {
                            self.offsets[index!] = .zero
                            self.bgColors[index!] = Color.BlackBackground
                            doInfo.dosDone[doName] = true
                            doInfo.doStreaks[doName]! += 1
                            xpCounter.xpInfo[1] += 10
                            print(xpCounter.xpInfo[1])
                        } else {
                            self.offsets[index!] = .zero
                            self.bgColors[index!] = Color.BlackBackground
                        }
                        self.leadingPadding[index!] = 25
                        self.trailingPadding[index!] = 25
                    }) {
                        HStack {
                            Text("\(Image(systemName: self.systemImage[index!]))")
                                .padding([.trailing, .leading], 7.5)
                        }
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, maxHeight: 60, alignment: self.iconAlignment[index!])
                        .background(bgColors[index!])
                        .cornerRadius(10)
                    } // closing brace for button
                    .padding()
                    VStack(alignment: .leading) {
                        let color = Color(doInfo.doColors[doName] ?? "EnvironmentPurple")
                        HStack {
                            ZStack {
                                let doStreak = (doInfo.doStreaks[doName] ?? 0) as Int
                                let streak = String(format: "%02d", doStreak)
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(color)
                                .frame(width: 50, height: 50)
                                Text(streak)
                                  .font(.system(size: 16, design: .monospaced))
                                  .fontWeight(.bold)
                                  .multilineTextAlignment(.center)
                                  .foregroundColor(Color.black)
                                  .frame(minWidth: 20.00, minHeight: 19.00, alignment: .center)

                            }
                            VStack(alignment: .leading) {
                                Text("\(doName)")
                                    .font(Font.custom("SFProDisplay-Medium", size: 22))
                                Label {
                                    if doInfo.doStreaks[doName] == 0 {
                                        Text("\(doInfo.doDescriptions[doName] ?? "")")
                                            .frame(width: 150, alignment: .leading)
                                            .font(.subheadline)
                                            .foregroundColor(.gray)
                                            .lineLimit(1)
                                            .truncationMode(.tail)
                                            .padding(.leading, -10)
                                    } else {
                                        Text("\(doInfo.doDescriptions[doName] ?? "")")
                                            .frame(width: 150, alignment: .leading)
                                            .font(.subheadline)
                                            .foregroundColor(.StreakTextOrange)
                                            .lineLimit(1)
                                            .truncationMode(.tail)
                                            .padding(.leading, -10)
                                    }
                                } icon: {
                                    if doInfo.doStreaks[doName] == 0 {
                                        Image(systemName: "info.circle.fill")
                                        .foregroundColor(.gray)
                                    } else {
                                        LinearGradient(gradient: Gradient(colors: [Color.red, Color.orange]), startPoint: .top, endPoint: .bottom)
                                            .mask(Image(systemName: "flame.fill"))
                                    }
                                }
                                .frame(maxHeight: 20)
                            }
                            .padding(.leading, 5)
                        }
                        .padding()
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(
                        RoundedRectangle(cornerRadius: 20).fill(Color.DoCardGray))
                    .padding([.top, .bottom], 2)
                    .offset(x: offsets[index!].width)
                    .gesture(
                        DragGesture()
                            .onChanged { gesture in
                                self.offsets[index!] = gesture.translation
                                doInfo.isActive[doName] = true
                                if offsets[index!].width > 0 {
                                    self.bgColors[index!] = Color.GreenBackground
                                    self.leadingPadding[index!] = 1
                                    self.trailingPadding[index!] = 25
                                    self.systemImage[index!] = "checkmark.circle"
                                    self.iconAlignment[index!] = .leading
                                    self.padding[index!] = .leading
                                } else if offsets[index!].width < 0 {
                                    self.bgColors[index!] = Color.RedBackground
                                    self.trailingPadding[index!] = 1
                                    self.leadingPadding[index!] = 25
                                    self.systemImage[index!] = "zzz"
                                    self.iconAlignment[index!] = .trailing
                                    self.padding[index!] = .trailing
                                }
                            }
                            .onEnded { _ in
                                if self.offsets[index!].width < -100 {
                                    if element.key == "\(dosForCount[index!])snoozed" {
                                        self.offsets[index!] = .zero
                                        self.bgColors[index!] = Color.BlackBackground
                                    } else {
                                        doInfo.doTodos[doName] = "\(dosForCount[index!])snoozed"
                                        self.offsets[index!] = .zero
                                        self.bgColors[index!] = Color.BlackBackground
                                    }
                                    self.leadingPadding[index!] = 25
                                    self.trailingPadding[index!] = 25
                                }
                                else if self.offsets[index!].width > 100 {
                                    if element.key == "\(dosForCount[index!])completed" {
                                        self.offsets[index!] = .zero
                                        self.bgColors[index!] = Color.BlackBackground
                                    } else {
                                        element.key = "\(dosForCount[index!])completed"
                                        self.offsets[index!] = .zero
                                        self.bgColors[index!] = Color.BlackBackground
                                    }
                                    self.leadingPadding[index!] = 25
                                    self.trailingPadding[index!] = 25
                                }
                                else if self.offsets[index!].width < -50 {
                                    self.offsets[index!].width = -50
                                }
                                else if self.offsets[index!].width > 50 {
                                    self.offsets[index!].width = 50
                                }
                                else if (self.offsets[index!].width < 50 && self.offsets[index!].width > 0) || (self.offsets[index!].width > -50 && self.offsets[index!].width < 0){
                                    self.offsets[index!].width = .zero
                                    self.leadingPadding[index!] = 25
                                    self.trailingPadding[index!] = 25
                                }
                                doInfo.isActive[doName] = false
                            }
                )
                }
            }
        }
        .frame(maxWidth: .infinity)
        .padding(.trailing, -10)
    } // closing brace for HStack
    .padding(EdgeInsets(top: 1, leading: -3, bottom: 5
                        , trailing: 0))
} // closing brace for To Do section
.listRowBackground(Color.clear)
.headerProminence(.increased)
.padding([.leading, .trailing], -10)*/

/*VStack {
    ZStack(alignment: .topLeading) {
        RoundedRectangle(cornerRadius: 10)
            .foregroundColor(.gray)
            .frame(maxWidth: 2, maxHeight: .infinity)
        RoundedRectangle(cornerRadius: 10)
            .foregroundColor(.yellow)
            .frame(maxWidth: 2, maxHeight: 1000*currentProgress)
    }
    .onAppear(perform: self.startLoading)
}
// section that contains proper dos
VStack (alignment: .leading) {
    ForEach(doInfo.doTodos.keys, id: \.self) {
        doName in
        let index = dosForCount.firstIndex(of: doName)
        var element = doInfo.doTodos.elements[index!]
        ZStack{
            Button(action: {
                if doInfo.dosDone[doName] == false && doInfo.isActive[doName] == true {
                    self.offsets[index!] = .zero
                    self.bgColors[index!] = Color.BlackBackground
                    doInfo.dosDone[doName] = true
                    doInfo.doStreaks[doName]! += 1
                    xpCounter.xpInfo[1] += 10
                    print(xpCounter.xpInfo[1])
                } else {
                    self.offsets[index!] = .zero
                    self.bgColors[index!] = Color.BlackBackground
                }
                self.leadingPadding[index!] = 25
                self.trailingPadding[index!] = 25
            }) {
                HStack {
                    Text("\(Image(systemName: self.systemImage[index!]))")
                        .padding([.trailing, .leading], 7.5)
                }
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, maxHeight: 60, alignment: self.iconAlignment[index!])
                .background(bgColors[index!])
                .cornerRadius(10)
            } // closing brace for button
            .padding()
            VStack(alignment: .leading) {
                let color = Color(doInfo.doColors[doName] ?? "EnvironmentPurple")
                HStack {
                    ZStack {
                        let doStreak = (doInfo.doStreaks[doName] ?? 0) as Int
                        let streak = String(format: "%02d", doStreak)
                        RoundedRectangle(cornerRadius: 10)
                            .fill(color)
                        .frame(width: 50, height: 50)
                        Text(streak)
                          .font(.system(size: 16, design: .monospaced))
                          .fontWeight(.bold)
                          .multilineTextAlignment(.center)
                          .foregroundColor(Color.black)
                          .frame(minWidth: 20.00, minHeight: 19.00, alignment: .center)

                    }
                    VStack(alignment: .leading) {
                        Text("\(doName)")
                            .font(Font.custom("SFProDisplay-Medium", size: 22))
                        Label {
                            if doInfo.doStreaks[doName] == 0 {
                                Text("\(doInfo.doDescriptions[doName] ?? "")")
                                    .frame(width: 150, alignment: .leading)
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                                    .lineLimit(1)
                                    .truncationMode(.tail)
                                    .padding(.leading, -10)
                            } else {
                                Text("\(doInfo.doDescriptions[doName] ?? "")")
                                    .frame(width: 150, alignment: .leading)
                                    .font(.subheadline)
                                    .foregroundColor(.StreakTextOrange)
                                    .lineLimit(1)
                                    .truncationMode(.tail)
                                    .padding(.leading, -10)
                            }
                        } icon: {
                            if doInfo.doStreaks[doName] == 0 {
                                Image(systemName: "info.circle.fill")
                                .foregroundColor(.gray)
                            } else {
                                LinearGradient(gradient: Gradient(colors: [Color.red, Color.orange]), startPoint: .top, endPoint: .bottom)
                                    .mask(Image(systemName: "flame.fill"))
                            }
                        }
                        .frame(maxHeight: 20)
                    }
                    .padding(.leading, 5)
                }
                .padding()
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(
                RoundedRectangle(cornerRadius: 20).fill(Color.DoCardGray))
            .padding([.top, .bottom], 2)
            .offset(x: offsets[index!].width)
            .gesture(
                DragGesture()
                    .onChanged { gesture in
                        self.offsets[index!] = gesture.translation
                        doInfo.isActive[doName] = true
                        if offsets[index!].width > 0 {
                            self.bgColors[index!] = Color.GreenBackground
                            self.leadingPadding[index!] = 1
                            self.trailingPadding[index!] = 25
                            self.systemImage[index!] = "checkmark.circle"
                            self.iconAlignment[index!] = .leading
                            self.padding[index!] = .leading
                        } else if offsets[index!].width < 0 {
                            self.bgColors[index!] = Color.RedBackground
                            self.trailingPadding[index!] = 1
                            self.leadingPadding[index!] = 25
                            self.systemImage[index!] = "zzz"
                            self.iconAlignment[index!] = .trailing
                            self.padding[index!] = .trailing
                        }
                    }
                    .onEnded { _ in
                        if self.offsets[index!].width < -100 {
                            if element.key == "\(dosForCount[index!])snoozed" {
                                self.offsets[index!] = .zero
                                self.bgColors[index!] = Color.BlackBackground
                            } else {
                                doInfo.doTodos[doName] = "\(dosForCount[index!])snoozed"
                                self.offsets[index!] = .zero
                                self.bgColors[index!] = Color.BlackBackground
                            }
                            self.leadingPadding[index!] = 25
                            self.trailingPadding[index!] = 25
                        }
                        else if self.offsets[index!].width > 100 {
                            if element.key == "\(dosForCount[index!])completed" {
                                self.offsets[index!] = .zero
                                self.bgColors[index!] = Color.BlackBackground
                            } else {
                                element.key = "\(dosForCount[index!])completed"
                                self.offsets[index!] = .zero
                                self.bgColors[index!] = Color.BlackBackground
                            }
                            self.leadingPadding[index!] = 25
                            self.trailingPadding[index!] = 25
                        }
                        else if self.offsets[index!].width < -50 {
                            self.offsets[index!].width = -50
                        }
                        else if self.offsets[index!].width > 50 {
                            self.offsets[index!].width = 50
                        }
                        else if (self.offsets[index!].width < 50 && self.offsets[index!].width > 0) || (self.offsets[index!].width > -50 && self.offsets[index!].width < 0){
                            self.offsets[index!].width = .zero
                            self.leadingPadding[index!] = 25
                            self.trailingPadding[index!] = 25
                        }
                        doInfo.isActive[doName] = false
                    }
        )
        }
    }
}
.frame(maxWidth: .infinity)
.padding(.trailing, -10)*/

/*Section(header:
    Label {
        Text("Welcome")
        .font(.title)
} icon: {
    Image(systemName: "hand.wave.fill")
        .font(.title)
        .frame(minWidth: 25.00, minHeight: 25.00, alignment: .bottom)
}) {
    HStack {
        VStack {
            ZStack(alignment: .topLeading) {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(.gray)
                    .frame(maxWidth: 2, maxHeight: .infinity)
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(.yellow)
                    .frame(maxWidth: 2, maxHeight: 1000*currentProgress)
            }
            .onAppear(perform: self.startLoading)
        }
    } // closing brace for HStack
    .padding(EdgeInsets(top: 1, leading: -3, bottom: 5
                        , trailing: 0))
} // closing brace for To Do section
.listRowBackground(Color.clear)
.headerProminence(.increased)
.padding([.leading, .trailing], -10)*/
