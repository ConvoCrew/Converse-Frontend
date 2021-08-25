//
//  GoLive.swift
//  Converse
//
//  Created by Vince Sgherzi on 8/23/21.
//

import SwiftUI

struct GoLive: View {
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.05484384298, green: 0.06042201072, blue: 0.1235707179, alpha: 1)).ignoresSafeArea()
            
            VStack(alignment: .leading) {
                Text("Difference b/n Capitalism & Socialism")
                    .font(.prodSans(.bold,size: 30))
                    .foregroundColor(.white)
                    .padding()
                
                Text("Categroy: Social Notes")
                    .font(.prodSans(.bold,size: 20))
                    .foregroundColor(.white)
                    .padding(.leading)
                
                let columns: [GridItem] = [GridItem(.flexible()),
                                           GridItem(.flexible()),
                                           GridItem(.flexible())]
                
                ScrollView {
                    LazyVGrid(columns: columns){
                        userListIcon()
                        userListIcon()
                        userListIcon()
                        userListIcon()
                    }
                }
                
                Text("5:20")
                    .frame(maxWidth: .infinity, alignment: .center)
                    .font(.prodSans(.bold,size: 25))
                    .foregroundColor(.white)
                
                Text("You are the host")
                    .frame(maxWidth: .infinity, alignment: .center)
                    .font(.prodSans(.bold,size: 20))
                    .foregroundColor(Color(#colorLiteral(red: 0.2099429369, green: 0.4875565171, blue: 0.9146992564, alpha: 1)))
                
                ZStack {
                    RoundedRectangle(cornerRadius: 15)
                        .frame(height: 70)
                        .foregroundColor(Color(#colorLiteral(red: 0.1434547901, green: 0.1532291174, blue: 0.2099429369, alpha: 1)))
                        .padding(.bottom)
                    
                    Image("admit")
                        .resizable()
                        .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                }
                
                Text("Tap to invite friends or use code: 11111")
                    .frame(maxWidth: .infinity, alignment: .center)
                    .font(.prodSans(.bold,size: 17))
                    .foregroundColor(.white)
                    .padding(.bottom)
    
            }
        }
    }
}

struct GoLive_Previews: PreviewProvider {
    static var previews: some View {
        GoLive()
    }
}
