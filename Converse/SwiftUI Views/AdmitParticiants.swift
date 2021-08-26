//
//  AdmitParticiants.swift
//  Converse
//
//  Created by Vince Sgherzi on 8/25/21.
//

import SwiftUI

struct AdmitParticiants: View {
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
                        userListIcon()
                        userListIcon()
                        userListIcon()
                    }
                }
            }
        }
    }
}

struct AdmitParticiants_Previews: PreviewProvider {
    static var previews: some View {
        AdmitParticiants()
    }
}
