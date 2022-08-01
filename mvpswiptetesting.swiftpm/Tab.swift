//
//  File.swift
//  mvpswiptetesting
//
//  Created by Micah Turpin on 7/25/22.
//

import Foundation

struct Tab: Identifiable, Hashable {
    var id = UUID().uuidString
    var title: String
}
