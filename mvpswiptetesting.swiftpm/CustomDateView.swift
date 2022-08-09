//
//  File.swift
//  mvpswiptetesting
//
//  Created by Micah Turpin on 7/7/22.
//

import Foundation
import SwiftUI

extension View {
    @ViewBuilder func changeTextColor(_ color: Color) -> some View {
        if UITraitCollection.current.userInterfaceStyle == .light {
            self.colorInvert().colorMultiply(color)
        } else {
            self.colorMultiply(color)
        }
    }
}

// Code for countdown timer, test 1-2
struct CustomDateView: View {
    @Environment(\.dismiss) var dismiss
    
    @State private var date = Date.now
    @State private var isDateEnabled: Bool = false
    @State private var datePickerColor: ColorScheme = .light
    //var GifString: String
    
    @State var dateInfo: Info
    
    let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter
    }()
    
    let timeFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.timeStyle = .short
        return formatter
    }()
    
    var dateStr: String {
        dateFormatter.string(from: self.date)
    }
    
    var timeStr: String {
        timeFormatter.string(from: self.date)
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.black.edgesIgnoringSafeArea(.all)
                //GifImage(dateInfo.DoGif)
                GifImage("WakeUpOnTime")
                ScrollView {
                    VStack(alignment: .leading) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 5)
                                .foregroundColor(.BodyLightGreen)
                                .frame(width: 50, height: 30)
                            Text("Body")
                                .changeTextColor(.black)
                        }
                        Text("Wake up on time")
                            .font(Font.custom("SFProDisplay-Bold", size: 34))
                            .foregroundColor(Color.white)
                            .frame(alignment: .leading)
                            .lineLimit(1)
                            .padding(.bottom, -10)
                        Text("Starting the day makes a difference, oversleeping makes you feel groggy")
                            .font(.system(size: 20))
                            .foregroundColor(Color.white)
                            .frame(minWidth: 320.00, minHeight: 42.00, alignment: .topLeading)
                            .opacity(0.69)
                            .lineLimit(2)
                            .padding([.top])
                    }
                    HStack {
                        VStack {
                            Text("Alarm")
                                .font(.title2)
                        }
                        .padding(.leading, 20)
                        HStack {
                            VStack {
                                if isDateEnabled {
                                    DatePicker("Please enter a date", selection: $dateInfo.DoDate, displayedComponents: .hourAndMinute)
                                        .labelsHidden()
                                        .allowsHitTesting(isDateEnabled)
                                        .changeTextColor(.white)
                                }
                                else {
                                    DatePicker("Please enter a date", selection: $dateInfo.DoDate, displayedComponents: .hourAndMinute)
                                        .labelsHidden()
                                        .allowsHitTesting(isDateEnabled)
                                        .changeTextColor(.gray)
                                }
                            }
                            VStack {
                                Toggle("Show welcome message", isOn: $isDateEnabled)
                                    .font(.title)
                                    .labelsHidden()
                                    .toggleStyle(SwitchToggleStyle(tint: .EnvironmentPurple))
                            }
                            .padding(.leading)
                        }
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .padding(.trailing)
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(.AlarmInfoBackgroundGray)
                            .frame(height: 60)
                    )
                    .padding(.leading, 50)
                    .padding(.trailing, 20)
                    .padding(.top, 25)
                }
                .padding(.top, -15)
                .padding(.leading, -30)
                .background(
                Rectangle()
                    .fill(.black)
                )
                .offset(y: 250)
                .frame(maxHeight: .infinity)
                ZStack {
                    RoundedRectangle(cornerRadius: 50)
                        .frame(width: 40, height: 40)
                        .foregroundColor(.white.opacity(0.5))
                    Image(systemName: "xmark")
                        .font(.title)
                        .foregroundColor(.black)
                        .onTapGesture {
                            dismiss()
                        }
                }
                .offset(x: 170, y: -350)
            }
            .navigationBarHidden(true)
        }
    }
    func secondsToHoursMinutesSeconds(_ seconds: Int) -> (Int, Int, Int) {
        return (seconds / 3600, (seconds % 3600) / 60, (seconds % 3600) % 60)
    }
    
    func timeInfo(_ currentTime: Date, _ startDayTime: Date) -> (Int, Int, Int) {
        let currentTimeInterval = currentTime.timeIntervalSince1970
        let startDayTimeInterval = startDayTime.timeIntervalSince1970
        let currentTimeInt = Int(currentTimeInterval)
        print("Time and date value for right now\n>>> \(currentTimeInt)")
        let startDayTimeInt = Int(startDayTimeInterval)
        print("Time and date value for start of day\n>>> \(startDayTimeInt)")
        let timeDifference = Int(currentTimeInt - startDayTimeInt)
        print("Difference between two values as integer\n>>> \(timeDifference)")
        return (currentTimeInt, startDayTimeInt, timeDifference)
    }
}
