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
            RoundedBottomBar(text: "", isGradient: false)
        }
    }
}
@available(iOS 14.0, *)
struct QuizView_Previews: PreviewProvider {
    
    static var previews: some View {
        ZStack {
            //GradientBackground(startColor: .g_Orange, endColor: .g_Purple)
            RoundedTopBar(isGradient: true){
                Text("スコア")
            }
            //RoundRectangleView(heightRatio: 0.8)
            RoundedBottomBar(opacity: 0.3, text: "", isGradient: false)
            
            VStack{
                SimpleButton(title: "ホーム画面に戻る", action: {
                    print("送信されました")
                })
                .padding()
                SimpleButton(
                    title: "リプレイ",
                    action: {print("送信されました")},
                    backGroundColor: .r_Orange
                )
                .padding()
            }
            
        }
    }
}
