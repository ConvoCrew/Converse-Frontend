//
//  DiscussionRowView.swift
//  Converse
//
//  Created by Cédric Bahirwe on 21/08/2021.
//

import SwiftUI


struct ParticipantUser: Identifiable {
    let id = UUID()
    let name: String
    static let example = ParticipantUser(name: "Vince")
}
struct HostUser: Identifiable {
    let id = UUID()
    let name: String
    
    static let example = HostUser(name: "")
}
struct Discussion: Identifiable {
    let id = UUID()
    let title: String
    let category: String
    let host: HostUser
    let participants: [ParticipantUser]
    let maxParticipants: Int = 20
    let isLive: Bool
    let dateTime: Date = Date(timeIntervalSinceNow: 300)
    
    static let liveExample = Discussion(title: "Difference between Capitalism & Socialism", category: "Social", host: HostUser(name: "5efa"), participants: [.example], isLive: true)
    static let upComingExample = Discussion(title: "Algebra Homework Question & Answer", category: "Math", host: .example , participants: [], isLive: false)
}
struct DiscussionRowView: View {
    var discussion: Discussion
    var body: some View {
        VStack(alignment: .leading, spacing: 3) {
            Text(discussion.title)
                .font(.prodSans(.bold))
                .lineLimit(3)
                .opacity(0.95)
            HStack(spacing: 5) {
                LabelView("Category:", value: "Social")
                Text("|").foregroundColor(.offWhite)
                LabelView("Host:", value: discussion.host.name)
            }
            
            
            Group {
                HStack(alignment: discussion.isLive ? .center : .top , spacing: 18) {
                    
                    Label(
                        title: {
                            Text("\(discussion.participants.count)/\(discussion.maxParticipants)")
                                .foregroundColor(.offWhite)
                        },icon: {
                            Image("people.two")
                                .foregroundColor(.primaryBlue)
                        })
                    Button(action: {}, label: {
                        
                        Text("Notes")
                            .foregroundColor(.primaryBlue)
                        Image("triangle.down")
                    })
                    
                    Spacer()
                    Button(action: {}, label: {
                        Text(discussion.isLive ? "Join" : "Remind")
                            .foregroundColor(.white)
                            .frame(width: 85, height: 30)
                            .background(Color.primaryBlue)
                            .clipShape(Capsule())
                    })
                    
                }
                
                
                HStack {
                    Spacer()
                    if !discussion.isLive {
                        Text(discussion.dateTime, style: .relative)
                            .foregroundColor(.primaryBlue)
                    }
                }
            }
            .font(.prodSans(.bold))
            
        }
        
        .foregroundColor(.white)
        .padding(.bottom, 10)
    }
}

extension DiscussionRowView {
    struct LabelView: View {
        init(_ title: String, value: String) {
            self.title = title
            self.value = value
        }
        
        let title: String
        let value: String
        var body: some View {
            HStack(spacing: 3) {
                Text(title)
                    .foregroundColor(.primaryBlue)
                    .font(.prodSans(.bold))
                Text(value)
                    .foregroundColor(.white)
                    .font(.prodSans(.regular, size: 15))
            }
        }
    }
}

struct DiscussionRowView_Previews: PreviewProvider {
    static var previews: some View {
        DiscussionRowView(discussion: .liveExample)
            .padding()
            .background(Color.black)
            .previewLayout(.fixed(width: 400, height: 118))
    }
}
