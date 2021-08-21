//
//  CreateRoomView.swift
//  Converse
//
//  Created by Cédric Bahirwe on 21/08/2021.
//

import SwiftUI

struct CreateRoomView: View {
    @State private var roomCode = ""
    var body: some View {
        VStack(spacing: 20) {
            Text("Create Room")
                .largeTitle()
            
            Group {
                largeButton("Study Room", icon: "📖") { }
                largeButton("Debate Room", icon: "📣") { }
                largeButton("Quiz Room", icon: "🏆") { }
            }
            .frame(maxWidth: 280)
            .font(.prodSans(.bold, size: 20))

            
            Color.offWhite.frame(height: 1)
            
        
            TextField("", text: $roomCode)
                .placeholder(when: roomCode.isEmpty) {
                    Text("Enter Room Code     🏠")
                        .foregroundColor(.offWhite)
                        .frame(maxWidth: .infinity)
               }
                .keyboardType(.numberPad)
                .font(.prodSans(.bold, size: 20))
                .padding()
                .frame(width: 280, height: 60)
                .font(.prodSans(.bold, size: 20))
                .background(Color.transBackground)
                .cornerRadius(12)
                .overlay(
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(Color(red: 0.098,
                                      green: 0.2,
                                      blue: 0.3137),
                                lineWidth: 2)
                )
            Spacer()
        }
        .padding()
        .foregroundColor(.white)
        .background(
            Color.backgroundBlue
                .dissmissKeyBoardOnTap
                .ignoresSafeArea()
        )
    }
    
    private func largeButton(_ title: String, icon: String,
                             action: @escaping() -> ()) -> some View {
        Button(action: action, label: {
            HStack(spacing: 8) {
                Text(icon)
                    .largeTitle()
                Text( title)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .frame(height: 60)
            .padding(.horizontal, 50)
            .background(Color.secondaryBlue)
            .cornerRadius(15)
        })
        
    }
}

struct CreateRoomView_Previews: PreviewProvider {
    static var previews: some View {
        CreateRoomView()
    }
}

extension View {
    func placeholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .leading,
        @ViewBuilder placeholder: () -> Content) -> some View {

        ZStack(alignment: alignment) {
            placeholder().opacity(shouldShow ? 1 : 0)
            self
        }
    }
}
