//
//  Views.swift
//  Converse
//
//  Created by Cédric Bahirwe on 21/08/2021.
//

import SwiftUI

extension Text {
    
    /// Returns a large title as the one used for `NavigationTitle`
    /// - Parameter size: the font-size for the title, defaults to 38
    /// - Returns: the modified view with the specified font-size
    func largeTitle(size: CGFloat = 38) -> some View {
        self.font(.prodSans(.bold, size: size))
            .lineLimit(1)
    }
}

extension View {
    
    /// A View's extension for dismissing keyboard when the views is tapped
    /// - Returns: A View which when tapped dismisses the keyboard if it is shown
    var dissmissKeyBoardOnTap: some View {
        self.onTapGesture {
            withAnimation {
                hideKeyboard()
            }
        }
    }
    
    /// Used for to dismiss Keyboard
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}



/// Used for to dismiss Keyboard
//func hideKeyboard() {
//    UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
//}
