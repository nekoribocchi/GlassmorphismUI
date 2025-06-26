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
    var shadow: Int
    var content: Content
    
    
    public init(heightRatio: CGFloat = 0.3, widthRatio:CGFloat = 0.8, shadow: Int = 10, @ViewBuilder content: () -> Content) {
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
                    .fill(Color.white.opacity(0.7))
                    .shadow(radius: 10)
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
            Color(.white)
            .ignoresSafeArea()
            
            VStack {
                Spacer()
                RoundRectangleView(heightRatio: 0.7, widthRatio:0.3) {
                    Text("test")
                }
            }
        }
    }
}

