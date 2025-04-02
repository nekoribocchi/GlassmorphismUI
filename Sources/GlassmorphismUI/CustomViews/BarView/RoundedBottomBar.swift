//
//  File.swift
//  GlassmorphismUI
//
//  Created by nekoribocchi on 2025/03/17.
//

import SwiftUI


@available(iOS 14.0, *)
public struct RoundedBottomBar: View {
    var startColor: Color
    var endColor: Color?
    var opacity: Double?
    var heightRatio: CGFloat
    var text: String?
    var isGradient: Bool

    public init(startColor: Color = .white,
                endColor: Color? = nil,
                opacity: Double? = 0.3,
                heightRatio: CGFloat = 0.15,
                text: String? = nil,
                isGradient: Bool = true) {
        self.startColor = startColor
        self.endColor = endColor
        self.opacity = opacity
        self.heightRatio = heightRatio
        self.text = text
        self.isGradient = isGradient
    }

    public var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .bottom) {
                // 背景バー
                RoundedBarBase(
                    startColor: startColor,
                    endColor: endColor ?? .white,
                    heightRatio: heightRatio,
                    opacity: opacity ?? 0.3,
                    text: text,
                    position: .bottom,
                    isGradient: isGradient
                ){
                    Text("TEST")
                }
            }
            .edgesIgnoringSafeArea(.bottom)
        }
    }
}
@available(iOS 14.0, *)
struct RoundedBottomBar_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            GradientBackground(startColor: .g_Orange, endColor: .g_Purple)
            RoundedBottomBar(text: "", isGradient: false)
        }
    }
}
