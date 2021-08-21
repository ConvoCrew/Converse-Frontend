//
//  ProfilePageview.swift
//  Converse
//
//  Created by Cédric Bahirwe on 21/08/2021.
//

import SwiftUI

struct ProfilePageview: View {
    var body: some View {
        ScrollView {
            VStack{
                VStack(spacing: 10) {
                    Image("avatar.girl")
                        .resizable()
                        .scaledToFit()
                        .frame(minWidth: 80, maxWidth: 100)
                        .padding(20)
                        .background(Color(red: 0.925, green: 0.98, blue: 1))
                        .clipShape(Circle())
                        .padding(20)
                        .background(Color(red: 0.925, green: 0.98, blue: 1).opacity(0.6))
                        .clipShape(Circle())
                    
                    HStack(spacing: 5) {
                        Text("Jasmine")
                            .font(.prodSans(.bold, size: 20))
                        
                        Button(action: {}, label: {
                            Image("pencil")
                            
                        })
                    }
                }
                Color.offWhite.frame(height: 1)
               
                
                VStack(alignment: .leading, spacing: 20) {
                    
                    Toggle(isOn: .constant(true)){
                        VStack(alignment: .leading) {
                            Text("Notifications")
                                .font(.prodSans(.bold, size: 20))
                                .foregroundColor(.offWhite)
                            Text("Turn off for silent notifications")
                                .font(.prodSans(size: 14))
                        }
                    }
                    .toggleStyle(SwitchToggleStyle(tint: .primaryBlue))
                    .padding(.vertical)
                    
                    
                    Button(action: {}, label: {
                        HStack(spacing: 0) {
                            Text("Connect account")
                            Spacer()
                            HStack {
                                Image("apple.logo")
                                Image("google.logo")
                            }
                        }
                        .padding(.horizontal, 30)
                        .font(.prodSans(.bold, size: 20))
                        .foregroundColor(.secondaryBlue)
                        .frame(maxWidth: .infinity)
                        .frame(height: 60)
                        .background(Color.offWhite)
                        .cornerRadius(12)
                    })
                    
                    Text("Hosts are encourage to connect an account to save scheduled rooms. Verified mark will be given to host accounts with more discussions created.")
                        .font(.prodSans(size: 15))
                        .lineSpacing(3)
                    VStack(alignment: .leading, spacing: 10) {
                        Link("Privacy Policy", destination: URL(string: "https://convocrew.github.io/")!)
                        
                        Link("Terms of Service", destination: URL(string: "https://convocrew.github.io/")!)
                    }
                    .foregroundColor(.offWhite)
                    .font(.prodSans(.bold, size: 20))
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .layoutPriority(2)
                Spacer(minLength: 15)
                Text("Made by Students for Students  🎓")
                    .font(.prodSans(.bold))
                    
            }
            .padding()
            
        }
        .foregroundColor(.white)
        .frame(maxHeight: .infinity)
        .background(Color.backgroundBlue.ignoresSafeArea())
    }
}

struct ProfilePageview_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePageview()
    }
}
