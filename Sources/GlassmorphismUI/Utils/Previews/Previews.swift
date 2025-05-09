//
//  SwiftUIView.swift
//  GlassmorphismUI
//
//  Created by nekoribocchi on 2025/03/20.
//

import SwiftUI

@available(iOS 14.0, *)
struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            GradientBackground(startColor: .g_Orange, endColor: .g_Purple)
            RoundedBottomBar(text: "", isGradient: false){
                Text("a")
            }
        }
    }
}
@available(iOS 14.0, *)
struct QuizView_Previews: PreviewProvider {
    
    static var previews: some View {
        ZStack {
            RoundedTopBar(isGradient: true){
                Text("スコア")
            }
            RoundedBottomBar(opacity: 0.3, text: "", isGradient: false){
            }
            VStack{
                CapsuleButton(title: "ホーム画面に戻る", action: {
                    print("送信されました")
                })
                .padding()
                CapsuleButton(
                    title: "リプレイ",
                    backgroundColor: .r_Orange
                )
                .padding()
            }
            
        }
    }
}
