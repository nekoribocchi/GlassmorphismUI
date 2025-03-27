//
//  File.swift
//  GlassmorphismUI
//
//  Created by nekoribocchi on 2025/03/17.
//

import SwiftUICore
import SwiftUI

@available(iOS 14.0, *)
struct RoundRectangleView: View {
    
    var heightRatio: CGFloat
    
    init(heightRatio: CGFloat = 0.3) {
        self.heightRatio = heightRatio

    }
    
    @available(iOS 14.0, *)
    var body: some View {
        GeometryReader { geometry in
            Rectangle()
                .cornerRadius(50)
                .foregroundColor(.white)
                .shadow(radius: 30)
                .opacity(0.7)
                .frame(height: geometry.size.height * heightRatio)
                .padding(.horizontal, 25)
                .padding(.bottom, 25)
                .position(
                    x: geometry.size.width / 2,
                    y: geometry.size.height - (geometry.size.height * heightRatio / 2)
                                )
        }
    }
}

@available(iOS 14.0, *)
struct RoundRectangleView_Preview: PreviewProvider {
    static var previews: some View {
        ZStack {
//            RoundedTopBar(
//                startColor: .g_Orange,
//                endColor: .g_Purple,
//                heightRatio: 0.3,
//                text: "第3問 / 10問"
//            )
            VStack {
                RoundRectangleView(heightRatio: 0.8)
            }
        }
    }
}
