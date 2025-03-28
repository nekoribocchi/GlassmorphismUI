//
//  File.swift
//  GlassmorphismUI
//
//  Created by nekoribocchi on 2025/03/17.
//

import SwiftUICore
import SwiftUI

@available(iOS 16.0, *)
public struct RoundRectangleView<Content: View>: View {
    
    var heightRatio: CGFloat
    var content: Content
    
    public init(heightRatio: CGFloat = 0.3, @ViewBuilder content: () -> Content) {
        self.heightRatio = heightRatio
        self.content = content()
    }
    
    @available(iOS 16.0, *)
    public var body: some View {
        GeometryReader { geometry in
            ZStack {
                RoundedRectangle(cornerRadius: 50)
                    .fill(Color.white.opacity(0.7))
                    .shadow(radius: 30)
                    .frame(height: geometry.size.height * heightRatio)
                    .padding(.horizontal, 25)
                
                content
                    .padding(30)
                    .frame(
                        width: geometry.size.width,
                        height: geometry.size.height * heightRatio
                    )
            }
            // ZStack全体を画面下部に配置
            .frame(width: geometry.size.width, height: geometry.size.height, alignment: .bottom)
        }
    }
    
}


@available(iOS 16.0, *)
struct RoundRectangleView_Previews: PreviewProvider {
    @available(iOS 16.0, *)
    static var previews: some View {
        ZStack {
            // 背景色
            LinearGradient(colors: [Color.blue.opacity(0.3), Color.purple.opacity(0.3)],
                           startPoint: .top,
                           endPoint: .bottom)
            .ignoresSafeArea()
            
            VStack {
                Spacer()
                
                // RoundRectangleView の中に好きなビューを配置できる！
                RoundRectangleView(heightRatio: 0.7) {
                    List{
                        Text("a")
                        Text("b")
                    }
                    .listRowBackground(Color.clear)
                    .scrollContentBackground(.hidden)
                    
                }
                .padding()
            }
        }
    }
}

