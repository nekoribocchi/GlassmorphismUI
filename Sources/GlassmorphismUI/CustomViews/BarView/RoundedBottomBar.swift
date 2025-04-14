//
//  File.swift
//  GlassmorphismUI
//
//  Created by nekoribocchi on 2025/03/17.
//

import SwiftUI

@available(iOS 14.0, *)
public struct RoundedBottomBar<Content: View>: View {
    var startColor: Color
    var endColor: Color?
    var opacity: Double?
    var heightRatio: CGFloat
    var text: String?
    var isGradient: Bool
    var content: Content?
    
    public init(startColor: Color = .white,
                endColor: Color? = nil,
                opacity: Double? = 0.3,
                heightRatio: CGFloat = 0.15,
                text: String? = nil,
                isGradient: Bool = true,
                @ViewBuilder content: () -> Content? = {
        nil
    }) {
        self.startColor = startColor
        self.endColor = endColor
        self.opacity = opacity
        self.heightRatio = heightRatio
        self.text = text
        self.isGradient = isGradient
        self.content = content()
    }
    
    public var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .bottom) {
                if let content = content {
                    RoundedBarBase(
                        startColor: startColor,
                        endColor: endColor ?? .white,
                        heightRatio: heightRatio,
                        opacity: opacity ?? 0.3,
                        text: text,
                        position: .bottom,
                        isGradient: isGradient
                    ) {
                        content
                    }
                } else {
                    RoundedBarBase(
                        startColor: startColor,
                        endColor: endColor ?? .white,
                        heightRatio: heightRatio,
                        opacity: opacity ?? 0.3,
                        text: text,
                        position: .bottom,
                        isGradient: isGradient
                    ) {
                        EmptyView()
                    }
                }
            }
            .edgesIgnoringSafeArea(.bottom)
        }
    }
}

@available(iOS 14.0, *)
struct RoundedBottomBar_Previews: PreviewProvider {
    static var previews: some View {
            RoundedBottomBar(startColor:.g_Orange,
                             endColor: .g_Purple,
                             opacity: 0.8,
                             heightRatio: 0.15,
                             text: nil,
                             isGradient: true){
                    Text("Insert any custom View content here")
                    .foregroundColor(.white)
        }
    }
}
