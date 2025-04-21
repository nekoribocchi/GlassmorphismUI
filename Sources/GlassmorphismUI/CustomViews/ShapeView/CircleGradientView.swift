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
    var size: CGFloat
    
    public init(
        @ViewBuilder content: () -> Content,
        size: CGFloat = 500
    ){
        self.content = content()
        self.size = size
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
                .frame(maxWidth: size, maxHeight: size)
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
                .font(.potta(size: 60))
            
            Text("惜しい。もう少し！")
                .font(.custom("PottaOne-Regular", size: 20))
        }
    })
}
