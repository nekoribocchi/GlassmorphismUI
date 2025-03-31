//
//  RButton.swift
//  GlassmorphismUI
//
//  Created by nekoribocchi on 2025/03/29.
//

import SwiftUI

@available(iOS 13.0, *)
public struct ButtonBase: View {
    // MARK: - Properties
    let title: String
    let backgroundColor: Color
    let textColor: Color
    let font: String
    let cornerRadius: CGFloat
    let isFurigana: Bool
    let furigana: String
    let iconName: String?
    let iconColor: Color
    let showPressAnimation: Bool
    let action: () -> Void
    
    @State private var isPressed = false
    
    // MARK: - Initializer
    public init(
        title: String,
        backgroundColor: Color = .r_Purple,
        textColor: Color = .white,
        cornerRadius: CGFloat = 60,
        font: String = "",
        isFurigana: Bool = true,
        furigana:String = "",
        iconName: String? = nil,
        iconColor: Color = .white,
        showPressAnimation: Bool = false,
        action: @escaping () -> Void
    ) {
        self.title = title
        self.backgroundColor = backgroundColor
        self.textColor = textColor
        self.cornerRadius = cornerRadius
        self.iconName = iconName
        self.iconColor = iconColor
        self.showPressAnimation = showPressAnimation
        self.action = action
        self.font = font
        self.isFurigana = isFurigana
        self.furigana = furigana
    }
    
    // MARK: - Body
    public var body: some View {
        Button(action: {
            if showPressAnimation {
                isPressed = true
                DispatchQueue.main.asyncAfter(deadline: .now()) {
                    isPressed = false
                    action()
                }
            } else {
                action()
            }
        }) {
            ZStack {
                HStack {
                    Spacer()
                    VStack{
                        if(isFurigana){
                            Text(furigana)
                                .font(.custom(font, size: 10))
                                .foregroundColor(textColor)
                        }
                        Text(title)
                            .font(.custom(font, size: 20))
                            .foregroundColor(textColor)
    
                    }
                    Spacer()
                }
                
                if let iconName = iconName {
                    HStack {
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
                gradient: Gradient(colors: [backgroundColor, backgroundColor.opacity(0.7)]),
                center: .center,
                angle: .degrees(270)
            )        )
        .clipShape(Capsule())
        .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 3)
        .padding(.horizontal)
        .scaleEffect(showPressAnimation && isPressed ? 0.9 : 1.0)
        .animation(.easeOut(duration: 0.2), value: isPressed)
    }
}

