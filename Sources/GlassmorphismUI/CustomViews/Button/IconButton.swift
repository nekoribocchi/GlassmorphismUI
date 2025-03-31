//
//  SwiftUIView.swift
//  GlassmorphismUI
//
//  Created by nekoribocchi on 2025/03/29.
//

import SwiftUI

@available(iOS 13.0, *)
struct IconButton: View {
    let title: String
    let backGroundColor: Color
    let textColor: Color
    let cornerRadius: CGFloat
    let iconName: String?
    let iconColor: Color
    let action: () -> Void
    
    @State private var isPressed = false
    
    init(
        title: String,
        backGroundColor: Color = .r_Purple,
        textColor: Color = .white,
        cornerRadius: CGFloat = 60,
        iconName: String? = nil,
        iconColor: Color = .white,
        action: @escaping () -> Void
    ) {
        self.title = title
        self.backGroundColor = backGroundColor
        self.textColor = textColor
        self.cornerRadius = cornerRadius
        self.iconName = iconName
        self.iconColor = iconColor
        self.action = action
    }

    var body: some View {
        Button(action: {
            isPressed = true
            DispatchQueue.main.asyncAfter(deadline: .now()){
                isPressed = false
                action()
            }
        }) {
            ZStack{
                HStack {
                    Spacer()
                    
                    Text(title)
                        .font(.system(size: 20, weight: .bold, design: .serif))
                        .foregroundColor(textColor)
                    
                    Spacer()
                }
                
                if let iconName = iconName {
                    HStack{
                        Spacer()
                        
                        Circle()
                            .fill(Color.white.opacity(0.3))
                            .frame(width: 50, height: 50)
                            .overlay(
                                Image(systemName: iconName)
                                    .foregroundColor(iconColor)
                                    .font(.system(size: 19, weight: .heavy))
                            )
                            .padding(.trailing, 20)
                    }
                }
            }
            
        }
        
            .frame(height: 80)
            .frame(maxWidth: .infinity)
            .background(
                AngularGradient(
                    gradient: Gradient(colors: [backGroundColor, backGroundColor.opacity(0.7)]),
                    center: .center,
                    angle: .degrees(270)
                )
            )
            .clipShape(Capsule())
            .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 3)
            .padding(.horizontal)
            .scaleEffect(isPressed ? 0.9 : 1.0)
            .animation(.easeOut(duration: 0.2), value: isPressed)
        }
    }

@available(iOS 13.0, *)
#Preview {
    VStack(spacing: 20) {
        IconButton(
            title: "ホーム画面に戻る",
            iconName: "checkmark",
            action: {
                print("チェックされた")
            }
        )

        IconButton(
            title: "キャンセル",
            backGroundColor: .r_Orange,
            textColor: .white,
            iconName: "xmark",
            iconColor: .white,
            action: {
                print("キャンセル")
            }
        )

        IconButton(
            title: "福生市",
            backGroundColor: .white,
            textColor: .black,
            action: {
                print("キャンセル")
            }
            
        )
    }
    .padding()
}
