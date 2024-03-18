//
//  AngularGradientGlow.swift
//  SwiftUI Combine and Data
//
//  Created by Nikita Kosolapov on 17.03.2024.
//

import SwiftUI

extension View {
    func angularGradientGlow(colors: [Color]) -> some View {
        overlay(
            AngularGradient(colors: colors, center: .center, angle: .zero)
        )
        .mask(self)
    }
}
