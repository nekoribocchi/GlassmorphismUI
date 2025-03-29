//
//  SwiftUIView.swift
//  GlassmorphismUI
//
//  Created by nekoribocchi on 2025/03/20.
//

import SwiftUI

@available(iOS 14.0, *)
public struct RoundedTopBar: View {
    var startColor: Color
    var endColor: Color
    var heightRatio: CGFloat
    var text: String?
    var isGradient: Bool
    
    public init(startColor: Color = .g_Orange,
                endColor: Color = .g_Purple,
                heightRatio: CGFloat = 0.3,
                text: String? = nil,
                isGradient: Bool = true) {
        self.startColor = startColor
        self.endColor = endColor
        self.heightRatio = heightRatio
        self.text = text
        self.isGradient = isGradient
    }
    
    public var body: some View {
        RoundedBarBase(startColor: startColor,
                       endColor: endColor,
                       heightRatio: heightRatio,
                       text: text,
                       position: .top,
                       isGradient: isGradient)
    }
}

@available(iOS 14.0, *)
struct RoundedTopBar_preview: PreviewProvider {
    static var previews: some View {
            RoundedTopBar(text: "第3問 / 10問", isGradient: true) 
    }
}
