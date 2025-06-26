//
//  File.swift
//  GlassmorphismUI
//
//  Created by nekoribocchi on 2025/03/17.
//

import SwiftUI

@available(iOS 16.0, *)
public struct RoundRectangleView<Content: View>: View {
    var heightRatio: CGFloat
    var widthRatio: CGFloat
    var shadow: CGFloat
    var content: Content
    
    
    public init(heightRatio: CGFloat = 0.5, widthRatio:CGFloat = 0.8, shadow: CGFloat = 5, @ViewBuilder content: () -> Content) {
        self.heightRatio = heightRatio
        self.widthRatio = widthRatio
        self.shadow = shadow
        self.content = content()
    }
    
    @available(iOS 16.0, *)
    public var body: some View {
        GeometryReader { geometry in
            ZStack {
                RoundedRectangle(cornerRadius: 50)
                    .fill(Color.white.opacity(0.93))
                    .shadow(color: Color.black.opacity(0.2), radius: 5, x: 5, y: 5)
                    .frame(width: widthRatio * geometry.size.width, height: geometry.size.height * heightRatio)
                
                content
                    .padding(30)
                    .frame(
                        width: geometry.size.width,
                        height: geometry.size.height * heightRatio
                    )
            }
            .frame(width: geometry.size.width, height: geometry.size.height)
        }
    }
}


@available(iOS 16.0, *)
struct RoundRectangleView_Previews: PreviewProvider {
    @available(iOS 16.0, *)
    static var previews: some View {
        ZStack {
            Color(.systemGray5)
            .ignoresSafeArea()
            
            VStack {
                Spacer()
                RoundRectangleView(heightRatio: 0.5, widthRatio:0.5) {
                    Text("test")
                }
            }
        }
    }
}

