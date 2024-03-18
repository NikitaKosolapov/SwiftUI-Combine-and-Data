//
//  LinearGradientBackground.swift
//  SwiftUI Combine and Data
//
//  Created by Nikita Kosolapov on 17.03.2024.
//

import SwiftUI

extension View {
    func linearGradientBackground(colors: [Color]) -> some View {
        self.overlay(
            LinearGradient(colors: colors, startPoint: .topLeading, endPoint: .bottomTrailing)
        )
        .mask(self)
    }
}
