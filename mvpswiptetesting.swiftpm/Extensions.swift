//
//  File.swift
//  mvpswiptetesting
//
//  Created by Micah Turpin on 7/29/22.
//

import Foundation
import SwiftUI


extension Color {
    static let BodyLightGreen = Color("BodyLightGreen")
    static let EnvironmentPurple = Color("EnvironmentPurple")
    static let MindHotPink = Color("MindHotPink")
    static let RelationshipsOrange = Color("RelationshipOrange")
    static let SnoozedLightPurple = Color("SnoozedLightPurple")
    static let DoCardGray = Color("DoCardGray")
    static let SymbolBackgroundGray = Color("SymbolBackgroundGray")
    static let BlackBackground = Color("SymbolBackgroundGray")
    static let GreenBackground = Color("GreenBackground")
    static let RedBackground = Color("RedBackground")
    static let StreakTextOrange = Color("StreakTextOrange")
}

extension View{
    func getRect()->CGRect{
        return UIScreen.main.bounds
    }
}

