//
//  Fonts.swift
//  Converse
//
//  Created by Cédric Bahirwe on 20/08/2021.
//

import SwiftUI

enum ProductSansFont: String {
    case regular = "Product Sans Regular"
    case bold = "Product Sans Bold"
    case italic = "Product Sans Italic"
    case boldItalic = "Product Sans Bold Italic"
}

extension Font {
    static func prodSans(_ name: ProductSansFont = .regular,
                         _ size: CGFloat) -> Font {
        Font.custom(name.rawValue, size: size)
    }
    
    static func prodSans(_ name: ProductSansFont = .regular,
                         _ size: CGFloat,
                         relativeTo: TextStyle) -> Font {
        Font.custom(name.rawValue, size: size, relativeTo: relativeTo)
    }
}
