//
//  TrackableScrollView.swift
//  SwiftUI Combine and Data
//
//  Created by Nikita Kosolapov on 13.03.2024.
//

import SwiftUI

struct TrackableScrollView<Content: View>: View {
    let axes: Axis.Set
    let offsetChanged: (CGPoint) -> Void
    let content: Content
    
    init(axes: Axis.Set = .vertical, offsetChanged: @escaping (CGPoint) -> Void, @ViewBuilder content: () -> Content) {
        self.axes = axes
        self.offsetChanged = offsetChanged
        self.content = content()
    }
    
    var body: some View {
        ScrollView {
            GeometryReader { proxy in
                Color.clear.preference(key: ScrollOffsetPreferenceKey.self, value: proxy.frame(in: .named("scollView")).origin)
            }
            .onPreferenceChange(ScrollOffsetPreferenceKey.self, perform: { value in
                offsetChanged(value)
            })
            
            content
        }
        .coordinateSpace(name: "scrollView")
    }
}

struct ScrollOffsetPreferenceKey: PreferenceKey {
    static var defaultValue: CGPoint = .zero
    
    static func reduce(value: inout CGPoint, nextValue: () -> CGPoint) {}
}
