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
            .frame(width: geometry.size.width, height: geometry.size.height, alignment: .bottom)
        }
    }
}


@available(iOS 16.0, *)
struct RoundRectangleView_Previews: PreviewProvider {
    @available(iOS 16.0, *)
    static var previews: some View {
        ZStack {
            LinearGradient(colors: [Color.g_Purple, .g_Orange],
                           startPoint: .top,
                           endPoint: .bottom)
            .ignoresSafeArea()
            
            VStack {
                Spacer()
                RoundRectangleView(heightRatio: 0.7) {
                    List{
                        Text("1st Item")
                        Text("2nd Item")
                        Text("3rd Item")
                        Text("4th Item")
                        Text("5th Item")
                    }
                    .listRowBackground(Color.clear)
                    .scrollContentBackground(.hidden)
                }
                .padding()
            }
        }
    }
}

