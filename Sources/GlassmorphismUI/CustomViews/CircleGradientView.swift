//
//  SwiftUIView.swift
//  GlassmorphismUI
//
//  Created by nekoribocchi on 2025/03/29.
//



import SwiftUI
@available(iOS 13.0, *)
public struct CircleGradientView<Content: View>: View{
    let content: Content
    
    public init(@ViewBuilder content: () -> Content){
        self.content = content()
    }
    
    public var body: some View {
        ZStack {
            Circle()
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [.g_Orange, .g_Purple]),
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
                .frame(maxWidth: 400, maxHeight: 400)
                                .shadow(radius: 10)
                                .padding()
            
            content
                           .foregroundColor(.white)
                           .multilineTextAlignment(.center)
        }
    }
    
}
@available(iOS 13.0, *)
#Preview{
    CircleGradientView(content: {
        VStack{
            Text("30点")
                .font(.title)
                .bold()
            Text("惜しい。もう少し！")
                .font(.subheadline)
        }
    })
}
