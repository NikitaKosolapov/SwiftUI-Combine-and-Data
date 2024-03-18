//
//  SwiftUIpackagesView.swift
//  SwiftUI Combine and Data
//
//  Created by Nikita Kosolapov on 13.03.2024.
//

import SwiftUI

struct PackagesView: View {
    @State var scrollOffset: CGFloat = 0
    
    var body: some View {
        NavigationStack {
            ZStack(alignment: .top) {
                TrackableScrollView(offsetChanged: { offset in
                    scrollOffset = offset.y
                }) {
                    VStack(alignment: .leading, spacing: 16) {
                        Text("This app was 100% made using SwiftUI. We’d like to thank these amazing Swift Packages for making our lives as creators easier.")
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                        
                        ForEach(Array(packages.enumerated()), id: \.offset) { index, package in
                            if index != 0 { Divider() }
                            
                            Link(destination: URL(string: package.link)!, label: {
                                LinearGradient(colors: [Color(#colorLiteral(red: 0.6196078431, green: 0.6784313725, blue: 1, alpha: 1)), Color(#colorLiteral(red: 1, green: 0.5607843137, blue: 0.9803921569, alpha: 1))], startPoint: .leading, endPoint: .trailing)
                                    .mask(
                                        Text(package.title.uppercased())
                                            .font(.subheadline)
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                    )
                                    .frame(height: 20)
                            })
                        }
                    }
                    .padding(.horizontal, 20)
                }
            }
            .navigationTitle("SwiftUI Packages")
            .navigationBarTitleDisplayMode(.large)
            .background(.background2)
        }
    }
}

struct SwiftUIpackagesView_Previews: PreviewProvider {
    static var previews: some View {
        PackagesView()
    }
}
