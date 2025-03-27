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
    
    public var body: some View {
        Button(action: action) {
            ZStack {
                Circle()
                    .fill(color)
                    .frame(width: size, height: size)
                    .shadow(radius: 5)
                
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
