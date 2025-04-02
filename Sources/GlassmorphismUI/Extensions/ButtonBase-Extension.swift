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
        isFurigana: Bool = false,
        furigana: String = "",
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
            isFurigana: isFurigana,
            furigana: furigana,
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
        isFurigana: Bool = false,
        furigana: String = "",
        action: @escaping () -> Void
    ) -> ButtonBase {
        ButtonBase(
            title: title,
            backgroundColor: backgroundColor,
            textColor: textColor,
            cornerRadius: cornerRadius,
            font: font,
            isFurigana: isFurigana,
            furigana: furigana,
            iconName: nil,
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
            isFurigana: true,
            furigana: "ほーむがめんにもどる",
            iconName: "checkmark",
            action: {
                print("チェックされた")
            }
        )
        
        ButtonBase.icon(
            title: "キャンセル",
            backgroundColor: .r_Orange,
            isFurigana: false,
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
            action: {
                print("キャンセルされました")
            }
        )
    }
    .padding()
}
