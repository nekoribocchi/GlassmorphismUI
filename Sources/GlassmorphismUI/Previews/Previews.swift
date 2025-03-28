//
//  SwiftUIView.swift
//  GlassmorphismUI
//
//  Created by nekoribocchi on 2025/03/20.
//

import SwiftUI

@available(iOS 14.0, *)
struct FirstView_Previews: PreviewProvider {

    static var previews: some View {
        ZStack {
            GradientBackground(startColor: .g_Orange, endColor: .g_Purple)
            RoundedBottomBar(text: "", isGradient: false)
        }
    }
}
@available(iOS 14.0, *)
struct QuizView_Previews: PreviewProvider {

    static var previews: some View {
        ZStack {
            GradientBackground(startColor: .g_Orange, endColor: .g_Purple)
            RoundedTopBar(text: "第3問 / 10問", isGradient: true)
            //RoundRectangleView(heightRatio: 0.8)
            RoundedBottomBar(opacity: 0.3, text: "", isGradient: false)
        }
    }
}
