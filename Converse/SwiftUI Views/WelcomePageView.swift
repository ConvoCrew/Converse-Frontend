//
//  WelcomePageView.swift
//  Converse
//
//  Created by Cédric Bahirwe on 20/08/2021.
//

import SwiftUI

struct WelcomePageView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 30) {
            Image("converse-icon")
                .resizable()
                .scaledToFit()
                .frame(width: 120)
            Text("Converse\(Text(".").foregroundColor(.secondaryBlue))")
                .font(.prodSans(.bold,size: 38))
            
            
            Text("Converse is a students roundtable audio-only platform to learn, discuss topics, homeworks or exchange ideas with classmates or other students around the world.")
                .font(.prodSans(.bold, size: 18))
                .foregroundColor(.offWhite)
            Spacer()
            
            
            VStack(spacing: 20) {
                Button(action: {
                    
                }, label: {
                    HStack(spacing: 5) {
                        Text("Start Conversing")
                        Text("🗣️")
                        
                    }
                    .font(.prodSans(.bold, size: 20))
                    .foregroundColor(.secondaryBlue)
                    .frame(maxWidth: 250, maxHeight: 65)
                    .background(Color.offWhite)
                    .cornerRadius(15)
                })
                
                
                Text("No sign up required: \(Text("nickname & avatar is all you need").foregroundColor(.offWhite))")
                    .font(.prodSans(size: 16))
                    .lineLimit(1)
                    .minimumScaleFactor(0.5)
            }
            .frame(maxWidth: .infinity)
            
        }
        .padding(20)
        .padding(.vertical)
        .frame(maxWidth: .infinity)
        .foregroundColor(.white)
        .background(
            Color.backgroundBlue.ignoresSafeArea()
        )
    }
}


struct WelcomePageView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomePageView()
    }
}
