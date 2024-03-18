//
//  ContentView.swift
//  SwiftUI Combine and Data
//
//  Created by Nikita Kosolapov on 13.03.2024.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.colorScheme) var colorScheme
    @State var scrollOffset: CGFloat = 0
    
    var body: some View {
        NavigationStack {
            ZStack(alignment: .top) {
                TrackableScrollView(offsetChanged: { offset in
                    withAnimation(.easeIn) {
                        scrollOffset = offset.y
                    }
                }, content: {
                    menu
                    
                    Text("Version 1.28")
                        .font(.footnote)
                        .foregroundStyle(.white.opacity(0.7))
                })
                
                Color.clear
                    .background(
                        .ultraThinMaterial, in: Rectangle()
                    )
                    .opacity(scrollOffset < -16 ? 1 : 0)
                    .ignoresSafeArea()
                    .frame(height: 0)
            }
            .frame(maxHeight: .infinity, alignment: .top)
            .background(AccountBackground())
            .toolbar(.hidden)
            .navigationBarTitleDisplayMode(.inline)
        }
        .accentColor(colorScheme == .dark ? .white : Color(#colorLiteral(red: 0.6196078431, green: 0.6784313725, blue: 1, alpha: 1)))
    }
    
    var menu: some View {
        VStack(alignment: .leading, spacing: 8) {
            NavigationLink(destination: {
                FAQview()
            }, label: {
                MenuRow(item: menuItems[0])
                    .padding(.horizontal, 16)
            })
            
            Divider()
                .padding(.leading, 8)
            
            NavigationLink(destination: {
                PackagesView()
            }, label: {
                MenuRow(item: menuItems[1])
                    .padding(.horizontal, 16)
            })
            
            Divider()
                .padding(.leading, 8)
            
            Link(destination: URL(string: "https://www.youtube.com/channel/UCTIhfOopxukTIRkbXJ3kN-g")!, label: {
                MenuRow(item: menuItems[2])
                    .padding(.horizontal, 16)
            })
        }
        .foregroundStyle(.primary)
        .padding(.vertical, 16)
        .background(Color("Background 1"))
        .frostedGlassStyle(cornerRadius: 20)
        .padding(20)
    }
}

#Preview {
    ContentView()
}
