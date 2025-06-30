//
//  File.swift
//  GlassmorphismUI
//
//  Created by Mao Hatano on 2025/06/30.
//

import Foundation
import SwiftUI

@available(iOS 15.0, *)
public struct WhiteCircle<Content: View>: View {
    
    let content: Content
    let backgroundColor : Color?
    let size: CGFloat
    let shadow_opacity: Double
    let opacity: Double
    let radius: CGFloat
    let x: CGFloat
    
    public init(
        size: CGFloat = 90,
        backgroundColor: Color = .white,
        shadow_opacity: CGFloat = 0.2,
        opacity: Double = 0.93,
        radius: CGFloat = 3,
        x: CGFloat = 2,
        @ViewBuilder content: () -> Content
    ) {
        self.content = content()
        self.backgroundColor = backgroundColor
        self.size = size
        self.shadow_opacity = shadow_opacity
        self.opacity = opacity
        self.radius = radius
        self.x = x
    }
    
    public var body: some View {
        ZStack{
            Circle()
                .fill(backgroundColor ?? .white).opacity(opacity)
                .frame(width: size, height: size)
                .shadow(color: Color.black.opacity(shadow_opacity), radius: radius, x: x, y: x)
                .overlay(content)
        }
    }
}

@available(iOS 15.0, *)
#Preview {
    WhiteCircle {
            Image(systemName: "star.fill")
            .resizable()
            .frame(width: 50, height: 50)
    }
}
