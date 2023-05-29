//
//  CustomFont.swift
//  PlantShop
//
//  Created by Tran Hieu on 29/05/2023.
//

import Foundation
import SwiftUI

struct CustomFont: ViewModifier {
    let size: CGFloat
    let weight: Font.Weight
    
    func body(content: Content) -> some View {
        content
            .font(.system(size: size, weight: weight))
    }
}
