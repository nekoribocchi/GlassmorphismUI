//
//  SwiftUIView.swift
//  GlassmorphismUI
//
//  Created by Mao Hatano on 2025/06/30.
//

import SwiftUI

@available(iOS 18.0, *)
public struct WhiteCapsule<Content: View>: View {
    let content: Content
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    public var body: some View {
            content
                .padding()
                .background(Color.white.opacity(0.93))
                .cornerRadius(25)
                .shadow(color: Color.black.opacity(0.2), radius: 3, x: 3, y: 3)
        }
    }

@available(iOS 18.0, *)
#Preview {
    WhiteCapsule {
        Text("Capsule Content")
    }
}
