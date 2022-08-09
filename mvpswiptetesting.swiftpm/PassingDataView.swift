//
//  File.swift
//  mvpswiptetesting
//
//  Created by ec2-user on 8/8/22.
//
import SwiftUI
import Foundation


struct PassingDataView: View {
    @State private var showSecondView = false
    
    var infoForSecondView = Info(
        DoName: "Wake up on time",
        DoDescription: "Waking up on time is very important",
        DoGif: "WakeUpOnTime",
        DoDate: Foundation.Date.now)
    
    var body: some View {
        Button(action: {
            self.showSecondView.toggle()
        }, label: {
            Text("Button")
        })
        .sheet(isPresented: $showSecondView) {
            CustomDateView(dateInfo: infoForSecondView)
        }
    }
}
