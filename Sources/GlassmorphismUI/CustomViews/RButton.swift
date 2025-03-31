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
        iconName: String? = nil,
        iconColor: Color = .white,
        showPressAnimation: Bool = true,
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
                    
                    Text(title)
                        .font(.custom(font, size: 20))
                        .foregroundColor(textColor)
                    
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

// MARK: - Factory Methods
@available(iOS 13.0, *)
public extension ButtonBase {
    /// アイコン付きボタンを作成する
    static func icon(
        title: String,
        backgroundColor: Color = .r_Purple,
        textColor: Color = .white,
        cornerRadius: CGFloat = 60,
        iconName: String,
        iconColor: Color = .white,
        action: @escaping () -> Void
    ) -> ButtonBase {
        ButtonBase(
            title: title,
            backgroundColor: backgroundColor,
            textColor: textColor,
            cornerRadius: cornerRadius,
            iconName: iconName,
            iconColor: iconColor,
            action: action
        )
    }
    
    /// シンプルボタンを作成する
    static func simple(
        title: String,
        backgroundColor: Color = .r_Purple,
        textColor: Color = .white,
        cornerRadius: CGFloat = 60,
        showPressAnimation: Bool = false,
        action: @escaping () -> Void
    ) -> ButtonBase {
        ButtonBase(
            title: title,
            backgroundColor: backgroundColor,
            textColor: textColor,
            cornerRadius: cornerRadius,
            iconName: nil,
            showPressAnimation: showPressAnimation,
            action: action
        )
    }
}

@available(iOS 13.0, *)
#Preview {
    VStack(spacing: 20) {
        // 元のIconButtonと同等
        ButtonBase.icon(
            title: "ホーム画面に戻る",
            iconName: "checkmark",
            action: {
                print("チェックされた")
            }
        )
        
        // 元のIconButtonと同等（色変更）
        ButtonBase.icon(
            title: "キャンセル",
            backgroundColor: .r_Orange,
            iconName: "xmark",
            action: {
                print("キャンセル")
            }
        )
        
        // 元のSimpleButtonと同等
        ButtonBase.simple(
            title: "シンプルボタン",
            action: {
                print("送信されました")
            }
        )
        
        // プレスアニメーション付きシンプルボタン
        ButtonBase.simple(
            title: "アニメーション付き",
            backgroundColor: .gray,
            showPressAnimation: true,
            action: {
                print("キャンセルされました")
            }
        )
    }
    .padding()
}
