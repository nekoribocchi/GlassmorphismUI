//
//  SwiftUIView.swift
//  GlassmorphismUI
//
//  Created by nekoribocchi on 2025/03/29.
//

import SwiftUI
@available(iOS 13.0, *)
struct SimpleButton: View {
    let title: String
    let action: () -> Void
    let backGroundColor: Color
    let textColor: Color
    let cornerRadius: CGFloat
    
    @available(iOS 13.0, *)
    init(
        title: String,
        action: @escaping () -> Void,
        backGroundColor: Color = .r_Purple,
        textColor: Color = .white,
        cornerRadius:CGFloat = 60
    ) {
        self.title = title
        self.action = action
        self.backGroundColor = backGroundColor
        self.textColor = textColor
        self.cornerRadius = cornerRadius
    }
    
    var body: some View {
        Button(action: action, label: {
            Text(title)
                .font(.system(size: 20,weight: .bold, design: .serif))
                .foregroundColor(.white)
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
        })
    }
}

@available(iOS 13.0, *)
#Preview {
    VStack(spacing: 20) {
        SimpleButton(title: "ホーム画面に戻る", action: {
            print("送信されました")
        })
        
        SimpleButton(title: "キャンセル", action: {
            print("キャンセルされました")
        }, backGroundColor: .gray, textColor: .black)
    }
    .padding()
}
