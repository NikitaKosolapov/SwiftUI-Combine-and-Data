//
//  FAQView.swift
//  SwiftUI Combine and Data
//
//  Created by Nikita Kosolapov on 13.03.2024.
//

import SwiftUI

struct FAQview: View {
    var body: some View {
        NavigationStack {
            ZStack(alignment: .top) {
                TrackableScrollView(offsetChanged: { offset in
                    
                }, content: {
                    VStack(alignment: .leading, spacing: 16) {
                        ForEach(faqData) { item in
                            FAQRow(faq: item)
                        }
                        
                        Text("Have any question?")
                            .font(.subheadline)
                            .foregroundStyle(.primary.opacity(0.7))
                            .padding(.leading, 20)
                        
                        Button {
                            
                        } label: {
                            ZStack {
                                RoundedRectangle(cornerRadius: 16, style: .continuous)
                                    .frame(height: 50)
                                    .angularGradientGlow(colors: [Color(#colorLiteral(red: 0.3843137255, green: 0.5176470588, blue: 1, alpha: 1)), Color(#colorLiteral(red: 1, green: 0.4470588235, blue: 0.7137254902, alpha: 1)), Color(#colorLiteral(red: 0.8509803922, green: 0.6862745098, blue: 0.8509803922, alpha: 1)), Color(#colorLiteral(red: 0.5921568627, green: 0.8823529412, blue: 0.831372549, alpha: 1))])
                                    .blur(radius: 15)
                                
                                Text("Contact Support")
                                    .frame(maxWidth: .infinity)
                                    .linearGradientBackground(colors: [Color(#colorLiteral(red: 0.6196078431, green: 0.6784313725, blue: 1, alpha: 1)), Color(#colorLiteral(red: 1, green: 0.5607843137, blue: 0.9803921569, alpha: 1))])
                                    .padding()
                                    .background(
                                        .background2.opacity(0.9)
                                    )
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 16, style: .continuous)
                                            .stroke(.white, lineWidth: 1)
                                            .blendMode(.overlay)
                                    )
                                    
                                .frostedGlassStyle(cornerRadius: 16)
                            }
                            .padding(.horizontal, 20)
                        }
                    }
                })
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.background2)
            .navigationTitle("FAQ")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

struct FAQView_Previews: PreviewProvider {
    static var previews: some View {
        FAQview()
    }
}
