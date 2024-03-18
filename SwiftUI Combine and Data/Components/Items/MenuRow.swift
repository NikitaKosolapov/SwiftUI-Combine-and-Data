//
//  MenuRow.swift
//  SwiftUI Combine and Data
//
//  Created by Nikita Kosolapov on 13.03.2024.
//

import SwiftUI

struct MenuRow: View {
    var item: MenuItem = menuItems[0]
    
    var body: some View {
        HStack(spacing: 12) {
            IconContainer(icon: item.leftIcon)
            
            Text(item.title)
                .font(.subheadline.weight(.semibold))
            
            Spacer()
            
            Image(systemName: item.rightIcon)
                .font(.subheadline.weight(.semibold))
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct MenuRow_Previews: PreviewProvider {
    static var previews: some View {
        MenuRow()
    }
}
