//
//  FAQRow.swift
//  SwiftUI Combine and Data
//
//  Created by Nikita Kosolapov on 17.03.2024.
//

import SwiftUI

struct FAQRow: View {
    var faq: FAQ = faqData[1]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("\(faq.question)")
                .font(.title3.bold())
            Text("\(faq.answer)")
                .font(.subheadline)
                .foregroundStyle(.primary.opacity(0.7))
            
            Divider()
                .overlay(.primary.opacity(0.1))
        }
        .padding(.horizontal, 20)
    }
}

#Preview {
    FAQRow()
}
