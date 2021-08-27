//
//  LocalNotification.swift
//  Converse
//
//  Created by Cédric Bahirwe on 22/08/2021.
//

import Foundation
import UserNotifications

class NotificationManager {
    
    static let shared = NotificationManager()
    private init() { }
    
    
    static private var badges: Int = 0
    func  requestNotificationAuthorization()  {
        let notifOptions : UNAuthorizationOptions = [.alert, .badge, .sound]
        UNUserNotificationCenter.current().requestAuthorization(options: notifOptions) { success, error in
            
            if let error = error {
                print(error.localizedDescription)
                return
            } else {
                print("Success")
            }
        }
    }
    
    func scheduleNotification() {
        let content = UNMutableNotificationContent()
        content.title = "Converse"
        content.subtitle = "What's New in Converse."

        content.body = "This is to let you know that we now support local notifications for upcoming events."
        content.sound = .default
        content.badge = NSNumber(integerLiteral: Self.badges+1)
        
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 60.0, repeats: true)
        
        
        //        The unique identifier for this notification request.
        //        It can be used to replace or remove a pending notification request or a delivered notification.
        let request = UNNotificationRequest(identifier: UUID().uuidString,
                                            content: content,
                                            trigger: trigger)
        
        UNUserNotificationCenter.current().add(request)
        
    }
}
