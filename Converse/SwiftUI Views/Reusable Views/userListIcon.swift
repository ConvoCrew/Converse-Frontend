//
//  userListIcon.swift
//  Converse
//
//  Created by Vince Sgherzi on 8/23/21.
//

import SwiftUI

struct userListIcon: View {
    var body: some View {
        VStack(spacing: 5) {
            ZStack {
                Circle() //outter circle
                    .frame(width: 100, height: 100)
                    .foregroundColor(Color(#colorLiteral(red: 0.5762303472, green: 0.6101606488, blue: 0.6474125981, alpha: 1)))
                Circle() //inner circle
                    .frame(width: 80, height: 80)
                    .foregroundColor(Color(#colorLiteral(red: 0.925021708, green: 0.9796730876, blue: 1, alpha: 1)))
                
                Image("avatar.girl")
                    .resizable()
                    .frame(width: 60, height: 60)
                
            }
            
            Text("Erica")
                .font(.prodSans(.bold,size: 25))
                .foregroundColor(Color(#colorLiteral(red: 0.7530786395, green: 0.8206391931, blue: 0.925021708, alpha: 1)))
                .scaledToFit()
            //.minimumScaleFactor(0.4)
            
            Image(systemName: "mic")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 20, height: 25)
                
                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
        }
        .padding()
    }
}

struct userListIcon_Previews: PreviewProvider {
    static var previews: some View {
        userListIcon()
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 200, height: 200))
    }
}
