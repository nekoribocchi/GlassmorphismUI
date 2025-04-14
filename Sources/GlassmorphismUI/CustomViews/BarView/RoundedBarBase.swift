//
//  File.swift
//  GlassmorphismUI
//
//  Created by nekoribocchi on 2025/03/20.
//

import SwiftUI

@available(iOS 14.0, *)
public struct RoundedBarBase<Content: View>: View {
    var isGradient: Bool
    var startColor: Color
    var endColor: Color
    var opacity: Double
    var heightRatio: CGFloat
    var text: String?
    var position: Position
    var content:Content
    public enum Position {
        case top
        case bottom
    }
    
    public init(startColor: Color = .g_Orange,
                endColor: Color = .g_Purple,
                heightRatio: CGFloat = 0.3,
                opacity: Double = 1,
                text: String? = nil,
                position: Position = .top,
                isGradient: Bool = true,
                @ViewBuilder content: ()->Content) {
        self.startColor = startColor
        self.endColor = endColor
        self.heightRatio = heightRatio
        self.opacity = opacity
        self.text = text
        self.position = position
        self.isGradient = isGradient
        self.content = content()
    }
    
    public var body: some View {
        GeometryReader { geometry in
            VStack {
                if position == .bottom { Spacer() }
                
                ZStack {
                    if isGradient {
                        LinearGradient(gradient: Gradient(colors: [startColor, endColor]),
                                       startPoint: .top,
                                       endPoint: .bottom)
                        .opacity(opacity)
                        .frame(height: geometry.size.height * heightRatio)
                            .clipShape(PartialRoundedRectangle(
                                radius: 60,
                                corners: position == .top ? [.bottomLeft, .bottomRight] : [.topLeft, .topRight]
                            ))
                    } else {
                        Rectangle()
                            .fill(startColor)
                            .opacity(opacity)
                            .frame(height: geometry.size.height * heightRatio)
                                .clipShape(PartialRoundedRectangle(
                                    radius: 60,
                                    corners: position == .top ? [.bottomLeft, .bottomRight] : [.topLeft, .topRight]
                                ))
                    }
                    content
                }
                .shadow(radius: 5)
                
                if position == .top { Spacer() }
            }
            .edgesIgnoringSafeArea(position == .top ? .top : .bottom)
        }
    }
}

@available(iOS 14.0, *)
struct RoundedBarBase_Previews: PreviewProvider {

    static var previews: some View {
        ZStack {
            RoundedTopBar(isGradient: true){
                Text("ランキング")
                    .foregroundColor(.white)
            }
            RoundedBottomBar(opacity: 0.8, text: "", isGradient: false){
                
            }
        }
    }
}
