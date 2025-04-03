//
//  SwiftUIView.swift
//  GlassmorphismUI
//
//  Created by nekoribocchi on 2025/03/20.
//

import SwiftUI

@available(iOS 13.0.0, *)
public struct CustomCircleButton: View {
    var action: () -> Void
    var color: Color = .g_Orange
    var size: CGFloat = 50
    var icon: Image?
    
    public init(
            action: @escaping () -> Void,
            color: Color = .r_Orange,
            size: CGFloat = 50,
            icon: Image? = nil
        ) {
            self.action = action
            self.color = color
            self.size = size
            self.icon = icon
        }
    
    public var body: some View {
        Button(action: action) {
            ZStack {
                Circle()
                    .fill(
                        AngularGradient(
                            gradient: Gradient(colors: [color, color.opacity(0.7)]),
                            center: .center,
                            angle: .degrees(270)
                        )
                    )
                    .frame(width: size, height: size)
                    .shadow(radius: 3)
                
                if let icon = icon {
                    icon
                        .resizable()
                        .scaledToFit()
                        .frame(width: size * 0.5, height: size * 0.5)
                        .foregroundColor(.white)
                }
            }
        }
    }
}
@available(iOS 13.0.0, *)
#Preview {
    HStack{
        CustomCircleButton(action: {
            print("ボタンが押された")
        },  size: 80, icon: Image(systemName: "gearshape.fill"))
        Spacer()
        CustomCircleButton(action: {
            print("ボタンが押された")
        },  size: 80, icon: Image(systemName: "gamecontroller.fill"))
        Spacer()

        CustomCircleButton(action: {
            print("ボタンが押された")
        },  size: 80, icon: Image(systemName: "medal.fill"))
        
    }
    .padding(.horizontal, 30)
}
