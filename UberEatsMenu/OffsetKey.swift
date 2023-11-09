//
//  OffsetKey.swift
//  UberEatsMenu
//
//  Created by Hologram1 on 11/9/23.
//

import SwiftUI

struct OffsetKey: PreferenceKey {
  static var defaultValue: CGRect = .zero
  
    static func reduce(value: inout CGRect, nextValue: () -> CGRect) {
        value = nextValue()
    }
}
