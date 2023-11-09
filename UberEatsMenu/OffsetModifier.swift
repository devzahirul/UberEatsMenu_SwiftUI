//
//  OffsetModifier.swift
//  UberEatsMenu
//
//  Created by Hologram1 on 11/9/23.
//

import SwiftUI


struct OffsetModifier: ViewModifier {
    let option: MenuBarOptions
    
    func body(content: Content) -> some View {
        content
        .overlay(
            GeometryReader(content: { proxy in
                Color.red
                .preference(key: OffsetKey.self, value: proxy.frame(in: .named("scroll")))
            })
        )
        .onPreferenceChange(OffsetKey.self) { proxy in
            
            print("For \(option.title) => \(proxy.minY)")
        }
    }
}
