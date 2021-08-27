//
//  ParticipantUserView.swift
//  Converse
//
//  Created by Cédric Bahirwe on 27/08/2021.
//

import SwiftUI

struct ParticipantUserView: View {
    var body: some View {
        VStack(spacing: 5) {
            Image("avatar.girl")
                .resizable()
                .frame(width: 60, height: 60)
                .frame(width: 80, height: 80)
                .background(Color(#colorLiteral(red: 0.925021708, green: 0.9796730876, blue: 1, alpha: 1)))
                .clipShape(Circle())
                .frame(width: 100, height: 100)
                .background(Color(#colorLiteral(red: 0.5762303472, green: 0.6101606488, blue: 0.6474125981, alpha: 1)))
                .clipShape(Circle())
            
            Text("Erica")
                .font(.prodSans(.bold,size: 25))
                .foregroundColor(.offWhite)
                .scaledToFit()
            
            Image(systemName: "mic")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 20, height: 25)
        }
        .padding()
    }
}

struct ParticipantUserView_Previews: PreviewProvider {
    static var previews: some View {
        ParticipantUserView()
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 200, height: 200))
    }
}
