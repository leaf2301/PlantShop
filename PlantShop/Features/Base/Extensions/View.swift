//
//  View.swift
//  PlantShop
//
//  Created by Tran Hieu on 29/05/2023.
//

import Foundation
import SwiftUI

extension View {
    func withLargeTitle() -> some View {
        modifier(CustomFont(size: 24, weight: .medium))
    }
    func withLargeHeadingFormat() -> some View {
        modifier(CustomFont(size: 20, weight: .bold))
    }
    func withHeadingFormat() -> some View {
        modifier(CustomFont(size: 18, weight: .semibold))
    }
    func withBoldParagraphFormat() -> some View {
        modifier(CustomFont(size: 12, weight: .medium))
    }
    func withParagraphFormat() -> some View {
        modifier(CustomFont(size: 12, weight: .regular))
    }

}
