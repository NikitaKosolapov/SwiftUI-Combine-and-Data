//
//  IconContainer.swift
//  SwiftUI Combine and Data
//
//  Created by Nikita Kosolapov on 13.03.2024.
//

import SwiftUI

struct IconContainer: View {
    var icon: String = "link"
    
    var body: some View {
        LinearGradient(colors: [Color(#colorLiteral(red: 0.6196078431, green: 0.6784313725, blue: 1, alpha: 1)), Color(#colorLiteral(red: 1, green: 0.5607843137, blue: 0.9803921569, alpha: 1))], startPoint: .topLeading, endPoint: .bottomTrailing)
            .mask(
                Image(systemName: icon)
                    .font(.headline)
            )
            .frame(width: 36, height: 36)
            .background(
                RoundedRectangle(cornerRadius: 12, style: .continuous)
                    .fill(.background2)
            )
            .strokeStyle(cornerRadius: 12)
    }
}

#Preview {
    IconContainer()
}
