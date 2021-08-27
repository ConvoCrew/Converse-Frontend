//
//  TabBarView.swift
//  Converse
//
//  Created by Cédric Bahirwe on 21/08/2021.
//

import SwiftUI

struct TabItem: Identifiable, Equatable {
    var id:Int
    var image: String
    var title: String
    
    static let tabs = [
        TabItem(id: 0, image: "➕", title: "Create Room"),
        TabItem(id: 1, image: "📚", title: "Explore"),
        TabItem(id: 2, image: "📆", title: "Schedule"),
        TabItem(id: 3, image: "👧🏼", title: "Profile")
    ]
    
}

struct TabBarView: View {
    enum  Tab: Int {
        case explore = 0, restaurants, orders, profile
    }
    
    @Binding var selection: Int
    @State private var tabs = TabItem.tabs
    
    var body: some View {
        HStack(spacing: 0) {
            ForEach(tabs) { tab in
                VStack(spacing: 2) {
                    if tab == tabs.first {
                        Text(tab.image).hidden()
                            .font(.prodSans(.bold, size: 30))
                        Text(tab.title)
                            .lineLimit(1)
                            .minimumScaleFactor(0.8)
                            .font(.prodSans(selection == tab.id ? .bold : .regular, size: 14))
                    } else if tab == tabs.last {
                        Image("avatar.girl")
                            .resizable()
                            .scaledToFit()
                            .padding(8)
                            .background(Color.offWhite)
                            .clipShape(Circle())
                            .padding(5)
                            .background(Color.primaryBlue)
                            .clipShape(Circle())
                            .frame(height: 60)
                    } else {
                        Text(tab.image)
                            .font(.prodSans(.bold, size: 30))
                        Text(tab.title)
                            .lineLimit(1)
                            .font(.prodSans(selection == tab.id ? .bold : .regular, size: 14))
                    }
                }
                .foregroundColor(selection == tab.id ? .primaryBlue : .offWhite)
                .frame(maxWidth: .infinity)
                .frame(height: 75)
                .onTapGesture {
                    withAnimation(.linear) {
                        selection = tab.id
                    }
                }
            }
        }
        .overlay(plusButton, alignment: .leading)
        .padding(.horizontal, 20)
        .frame(height: 75)
        .background(
            Color.transBackground
                .cornerRadius(20, corners: [.topLeft, .topRight])
                .ignoresSafeArea()
        )
        
    }
    
    private var plusButton: some View {
        Image("plus")
            .padding(15)
            .background(Color.secondaryBlue)
            .clipShape(Circle())
            .padding(10)
            .background(
                Color.secondaryBlue.opacity(0.6)
            )
            .clipShape(Circle())
            .offset(y: -35)
            .onTapGesture {
                selection = 0
            }
    }
    
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            Spacer()
            TabBarView(selection: .constant(1))
        }
        .previewLayout(.fixed(width: 400, height: 180))
    }
}
