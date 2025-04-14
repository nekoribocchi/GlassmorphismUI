//
//  SwiftUIView.swift
//  GlassmorphismUI
//
//  Created by nekoribocchi on 2025/03/20.
//

import SwiftUI

@available(iOS 14.0, *)
public struct RoundedTopBar<Content: View>: View {
    var startColor: Color
    var endColor: Color
    var heightRatio: CGFloat
    var isGradient: Bool
    var content: Content
    
    public init(startColor: Color = .g_Orange,
                endColor: Color = .g_Purple,
                heightRatio: CGFloat = 0.3,
                isGradient: Bool = true,
                @ViewBuilder content: () -> Content) {
        self.startColor = startColor
        self.endColor = endColor
        self.heightRatio = heightRatio
        self.isGradient = isGradient
        self.content = content()
    }
    
    public var body: some View {
        ZStack{
            RoundedBarBase(startColor: startColor,
                           endColor: endColor,
                           heightRatio: heightRatio,
                           position: .top,
                           isGradient: isGradient){
                content
            }
        }
    }
    
    func topPadding(for ratio: CGFloat) -> CGFloat {
        let topPaddoing = UIScreen.main.bounds.height * ratio
        return topPaddoing / 4
    }
}

@available(iOS 14.0, *)
struct RoundedTopBar_preview: PreviewProvider {
    static var previews: some View {
        RoundedTopBar(){
            Text("Insert any custom View content here")
                .foregroundColor(.white)
        }
    }
}

@available(iOS 14.0, *)
struct RoundedTopBar_custom_preview: PreviewProvider {
    static var previews: some View {
        RoundedTopBar(startColor: .blue,
                      endColor: .green,
                      heightRatio:0.3,
                      isGradient:true){
            Text("Insert any custom View content here")
                .foregroundColor(.white)
        }
    }
}
