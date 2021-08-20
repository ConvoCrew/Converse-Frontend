//
//  SettingsViewController.swift
//  Converse
//
//  Created by Akku on 3/27/21.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var settingsLabel: UILabel!
    @IBOutlet weak var appleConnectButton: UIButton!
    @IBOutlet weak var googleConnectButton: UIButton!
    @IBOutlet weak var noteLabel: UILabel!
    
    @IBOutlet weak var notificationsLabel: UILabel!
    @IBOutlet weak var turnOffSilentLabel: UILabel!
    @IBOutlet weak var notificationSwitch: UISwitch!
    
    @IBOutlet weak var privacyPolicyLabel: UILabel!
    @IBOutlet weak var termsOfServiceLabel: UILabel!
    
    @IBOutlet weak var converseNoteLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        appleConnectButton.layer.cornerRadius = appleConnectButton.frame.height/2.4
        googleConnectButton.layer.cornerRadius = googleConnectButton.frame.height/2.4

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
