//
//  CustomButton.swift
//  GlassmorphismUI
//
//  Created by nekoribocchi on 2025/03/29.
//

import SwiftUI

@available(iOS 13.0, *)
public struct CustomButton: View {
    // MARK: - Properties
    let title: String
    let heightRatio: CGFloat
    let backgroundColor: Color
    let textColor: Color
    let font: String
    let cornerRadius: CGFloat
    let isFurigana: Bool
    let furigana: String
    let iconName: String?
    let iconColor: Color
    let action: () -> Void
    
    @State private var isPressed = false
    
    // MARK: - Initializer
    public init(
        title: String,
        heightRatio: CGFloat = 0.1,
        backgroundColor: Color = .r_Purple,
        textColor: Color = .white,
        cornerRadius: CGFloat = 60,
        font: String = "",
        isFurigana: Bool = false,
        furigana:String = "",
        iconName: String? = nil,
        iconColor: Color = .white,
        action: @escaping () -> Void = {}
    ) {
        self.title = title
        self.heightRatio = heightRatio
        self.backgroundColor = backgroundColor
        self.textColor = textColor
        self.cornerRadius = cornerRadius
        self.iconName = iconName
        self.iconColor = iconColor
        self.action = action
        self.font = font
        self.isFurigana = isFurigana
        self.furigana = furigana
    }
    
    // MARK: - Body
    public var body: some View {
        Button(action: handleAction) {
            ZStack{
                buttonContent()
                if iconName != nil {
                    iconView()
                }
            }
        }
        .frame(height: UIScreen.main.bounds.height * heightRatio)
        .frame(maxWidth: .infinity)
        .background(
            backgroundgradient()
        )
        .clipShape(Capsule())
        .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 3)
        .padding(.horizontal)
        .scaleEffect(isPressed ? 0.9 : 1.0)
        .animation(.easeOut(duration: 0.2), value: isPressed)
    }
    
    //  MARK: - Methods
    private func handleAction() {
        isPressed = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            isPressed = false
            action()
        }
    }
    
    private func buttonContent() -> some View {
        HStack {
            Spacer()
            VStack {
                if furigana != "" {
                    Text(furigana)
                        .font(.custom(font, size: 13))
                        .foregroundColor(textColor)
                }
                Text(title)
                    .font(.custom(font, size: 20))
                    .foregroundColor(textColor)
            }
            Spacer()
        }
    }
    
    private func iconView() -> some View {
        let iconSize = heightRatio * 0.7 * UIScreen.main.bounds.height
        return HStack {
            Spacer()
            Circle()
                .fill(iconColor)
                .opacity(0.4)
                .frame(width: iconSize, height: iconSize)
                .overlay(
                    Image(systemName: iconName ?? "")
                        .foregroundColor(iconColor)
                        .font(.system(size: 19, weight: .heavy))
                )
                .padding(.trailing, 10)
        }
    }
    private func backgroundgradient() -> some View {
        AngularGradient(
            gradient: Gradient(colors: [backgroundColor, backgroundColor.opacity(0.7)]),
            center: .center,
            angle: .degrees(270)
        )
    }
}
@available(iOS 13.0, *)
#Preview {
    VStack(spacing: 20) {
        CustomButton(
            title: "青梅市",
            furigana: "おうめし",
            iconName: "checkmark",
            action: {
                print("Button Tapped!")
            }
        )
        
        CustomButton(
            title: "青梅市",
            heightRatio: 0.08,
            backgroundColor: .r_Orange,
            iconName: "xmark"
        )
        
        CustomButton(
            title: "No Furigana"
        )

    }
    .padding()
}
