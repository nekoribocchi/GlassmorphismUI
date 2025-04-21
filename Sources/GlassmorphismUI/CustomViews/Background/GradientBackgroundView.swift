//
//  File.swift
//  GlassmorphismUI
//
//  Created by nekoribocchi on 2025/03/17.
//

import SwiftUI

@available(iOS 14.0, *)
public struct GradientBackground: View {
    var startColor : Color
    var endColor : Color
    
    public init(startColor: Color, endColor: Color){
        self.startColor = startColor
        self.endColor = endColor
    }
    
    public var body: some View {
        LinearGradient(gradient: Gradient(colors: [startColor, endColor]), startPoint: .top, endPoint:.bottom)
            .edgesIgnoringSafeArea(.all)
    }
}


@available(macOS 14.0, *)
@available(iOS 14.0, *)
struct GradientBackground_Previews: PreviewProvider {
    static var previews: some View {
        GradientBackground(startColor: .g_Orange, endColor: .g_Purple)
    }
}

