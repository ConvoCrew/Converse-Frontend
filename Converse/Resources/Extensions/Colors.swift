//
//  Colors.swift
//  Converse
//
//  Created by Cédric Bahirwe on 20/08/2021.
//

import SwiftUI

enum CustomColors: String {
    case backgroundBlue
    case offWhite
    case transBackground
    case primaryBlue, secondaryBlue, tertiaryBlue
}

extension Color {
    
    init(_ custom: CustomColors) {
        self.init(custom.rawValue)
    }
    
    static let backgroundBlue = Color(.backgroundBlue)
    static let offWhite = Color(.offWhite)
    static let primaryBlue = Color(.primaryBlue)
    static let secondaryBlue = Color(.secondaryBlue)
    static let tertiaryBlue = Color(.tertiaryBlue)
    
    static let transBackground = Color(.transBackground)
}

extension UIColor{
    convenience init(custom: CustomColors) {
        self.init(named: custom.rawValue)!
    }
}
