//
//  iconStack.swift
//  Converse
//
//  Created by Vince Sgherzi on 8/25/21.
//

import SwiftUI

struct iconStack: View {
    
    var imageName: String
    var imageText: String
    
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 30, height: 30, alignment: .center)
            
            Text(imageText)
                .frame(alignment: .center)
                .font(.prodSans())
                .minimumScaleFactor(0.001)
                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
        }
        .padding(3)
    }
}

struct iconStack_Previews: PreviewProvider {
    static var previews: some View {
        iconStack(imageName: "admit", imageText: "Admit").preferredColorScheme(.dark)
    }
}
