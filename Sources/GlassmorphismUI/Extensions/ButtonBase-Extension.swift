//
//  File.swift
//  GlassmorphismUI
//
//  Created by nekoribocchi on 2025/03/31.
//

import Foundation
import SwiftUI

// MARK: - Factory Methods
@available(iOS 13.0, *)
public extension ButtonBase {
    static func icon(
        title: String,
        backgroundColor: Color = .r_Purple,
        textColor: Color = .white,
        font: String = "",
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
            font: font,
            iconName: iconName,
            iconColor: iconColor,
            action: action
        )
    }
    
    static func simple(
        title: String,
        backgroundColor: Color = .r_Purple,
        textColor: Color = .white,
        cornerRadius: CGFloat = 60,
        font: String = "",
        showPressAnimation: Bool = false,
        action: @escaping () -> Void
    ) -> ButtonBase {
        ButtonBase(
            title: title,
            backgroundColor: backgroundColor,
            textColor: textColor,
            cornerRadius: cornerRadius,
            font: font,
            iconName: nil,
            showPressAnimation: showPressAnimation,
            action: action
        )
    }
}

// MARK: - Preview
@available(iOS 13.0, *)
#Preview {
    VStack(spacing: 20) {
        ButtonBase.icon(
            title: "ホーム画面に戻る",
            iconName: "checkmark",
            action: {
                print("チェックされた")
            }
        )
        
        ButtonBase.icon(
            title: "キャンセル",
            backgroundColor: .r_Orange,
            iconName: "xmark",
            action: {
                print("キャンセル")
            }
        )

        ButtonBase.simple(
            title: "シンプルボタン",
            action: {
                print("送信されました")
            }
        )
        
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
