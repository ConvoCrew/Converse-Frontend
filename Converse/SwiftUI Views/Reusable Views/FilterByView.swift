//
//  FilterByView.swift
//  Converse
//
//  Created by Cédric Bahirwe on 25/08/2021.
//

import SwiftUI

struct FilterByView: View {
    var body: some View {
        ZStack {
            VStack(alignment: .leading, spacing: 6) {
                Text("Filter by").largeTitle(size: 25)
                
                HStack {
                    Text("Discussions").font(.prodSans(.bold))
                        .foregroundColor(.primaryBlue)
                    Button(action: {}) {
                        Image("triangle.down")
                    }
                }
                
                VStack(alignment: .leading, spacing: 0) {
                    ForEach(["Science", "Math", "Social Studies", "Literature"], id:\.self) { item in
                        Text(item)
                            .frame(height: 35)
                        Color.offWhite.frame(height: 1)
                    }
                }
                .frame(width: 120, alignment: .leading)
                
                HStack {
                    Spacer()
                    Button(action: {}) {
                        Text("Done")
                            .font(.prodSans(.bold))
                            .frame(width: 100, height: 40)
                            .background(Color.secondaryBlue)
                            .cornerRadius(20)
                    }
                }
            }
            .frame(width: 260, height: 260, alignment: .leading)
            .padding(30)
            .background(Color.backgroundBlue)
            .cornerRadius(8)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.primaryBlue, lineWidth: 3)
            )
        }
        .foregroundColor(.white)
    }
}

struct FilterByView_Previews: PreviewProvider {
    static var previews: some View {
        FilterByView()
//            .preferredColorScheme(.dark)
    }
}
