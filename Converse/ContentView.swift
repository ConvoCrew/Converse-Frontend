//
//  ContentView.swift
//  Converse
//
//  Created by Cédric Bahirwe on 20/08/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selection = 0
    var body: some View {
        VStack(spacing: 15) {
            HStack {
                Text("Explore")
                    .font(.prodSans(.bold, size: 38))
                Spacer()
                
                Image("filter")
            }
            
            SegmentControlView(options: ["Live Now", "Upcoming"],
                                         selection: $selection)
            
            VStack(alignment: .leading, spacing: 3) {
                Text("Difference between Capitalism & Socialism")
                HStack(spacing: 5) {
                    LabelView("Category:", value: "Social")
                    Text("|").foregroundColor(.offWhite)
                    LabelView("Host:", value: "John")
                }
                
                HStack {
                    
                    Label(
                        title: { Text("10/20").foregroundColor(.offWhite) },
                        icon: { Image("people.two").foregroundColor(.primaryBlue) }
)
                    Button(action: {}, label: {
                        Label("Notes", systemImage: "arrowtriangle.down.fill")
                    })
                    
                    Spacer()
                    Button(action: {}, label: {
                        Text("Join")
                            .foregroundColor(.white)
                            .frame(maxWidth: 85, maxHeight: 30)
                            .background(Color.primaryBlue)
                            .clipShape(Capsule())
                    })
                }
                .font(.prodSans(.bold))

            }
            Spacer()
        }
        .padding()
        .foregroundColor(.white)
        .background(Color.backgroundBlue.ignoresSafeArea())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



struct LabelView: View {
    init(_ title: String, value: String) {
        self.title = title
        self.value = value
    }
    
    let title: String
    let value: String
    var body: some View {
        HStack(spacing: 2) {
            Text(title)
                .foregroundColor(.primaryBlue)
                .font(.prodSans(.bold))
            Text(value)
                .foregroundColor(.white)
                .font(.prodSans(.regular, size: 15))
        }
    }
}
