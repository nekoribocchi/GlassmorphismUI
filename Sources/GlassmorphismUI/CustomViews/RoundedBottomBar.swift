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
    var heightRatio: CGFloat
    var text: String?
    var isGradient: Bool
    
    public init(startColor: Color = .white,
                endColor: Color? = nil,
                heightRatio: CGFloat = 0.15,
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
                       endColor: endColor ?? .white,
                       heightRatio: heightRatio,
                       text: text,
                       position: .bottom,
                       isGradient: isGradient)
    }
}


@available(iOS 14.0, *)
struct RoundedBottomBar_Previews: PreviewProvider {
    static var previews: some View {
            RoundedBottomBar(text: "", isGradient: false)
    }
}
