//
//  Menu.swift
//  SwiftUI Combine and Data
//
//  Created by Nikita Kosolapov on 13.03.2024.
//

import SwiftUI

struct MenuItem: Identifiable {
    let id = UUID()
    let leftIcon: String
    let title: String
    let rightIcon: String
}

let menuItems = [
    MenuItem(leftIcon: "questionmark", title: "FAQ / Contact", rightIcon: "chevron.right"),
    MenuItem(leftIcon: "square.stack.3d.up.fill", title: "SwiftUI Packages", rightIcon: "chevron.right"),
    MenuItem(leftIcon: "play.rectangle.fill", title: "YouTube Channel", rightIcon: "link")
]
