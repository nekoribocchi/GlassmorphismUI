//
//  SwiftUIView.swift
//  GlassmorphismUI
//
//  Created by nekoribocchi on 2025/04/21.
//

import SwiftUI

//This is the version of all component included
@available(iOS 13.0, *)
#Preview("all component included Preview") {
    //Add furigana
    CapsuleButton(
        title: "Button",
        heightRatio:0.1,
        backgroundColor: .r_Purple,
        textColor: .white,
        furigana: "button",
        iconName: "xmark",
        iconColor: .white,
        action: {
            print("Button Tapped!")
        }
    )
}
    
@available(iOS 13.0, *)
#Preview("Button Previews") {
    //You can change the button height by setting heightRatio, which represents the ratio of the button's height to the screen height.
    Text("Button Height")
    VStack(spacing: 20) {
        CapsuleButton(
            title: "Button",
            heightRatio: 0.1
        )
        
        CapsuleButton(
            title: "Button",
            heightRatio: 0.08
        )
        
        CapsuleButton(
            title: "Button",
            heightRatio: 0.04
        )
    }
    .padding()
}

// You can change the button color by setting backgrondColor.
@available(iOS 13.0, *)
#Preview("Button Color Preview") {
    Text("Button Color")
    
    CapsuleButton(
        title: "Button",
        heightRatio: 0.08,
        backgroundColor: .r_Orange
    )
    
    CapsuleButton(
        title: "Button",
        heightRatio: 0.08,
        backgroundColor: .r_Purple
    )
    CapsuleButton(
        title: "Button",
        heightRatio: 0.08,
        backgroundColor: .gray
    )
}

// You can change the icon by setting iconName.
@available(iOS 13.0, *)
#Preview("Button with Icon Preview") {
    CapsuleButton(
        title: "Button",
        iconName: "xmark"
    )
    CapsuleButton(
        title: "Button",
        iconName: "checkmark"
    )
    CapsuleButton(
        title: "Button",
        iconName: "star"
    )
}

@available(iOS 13.0, *)
#Preview("Button with Furigana Preview") {
    //Add furigana
    CapsuleButton(
        title: "Button",
        furigana: "button"
    )
    
    // This is the versiton of No Furigana
    CapsuleButton(
        title: "Button"
    )
}



