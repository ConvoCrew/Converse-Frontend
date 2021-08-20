//
//  HomeViewController.swift
//  Converse
//
//  Created by Akku on 3/27/21.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var appNameLabel: UILabel!
    @IBOutlet weak var scheduleButton: UIButton!
    @IBOutlet weak var settingsButton: UIButton!
    
    @IBOutlet weak var outerBoundImage: UIImageView!
    @IBOutlet weak var innerBoundImage: UIImageView!
    @IBOutlet weak var avatarImage: UIImageView!
    
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var editNameButton: UIButton!
    
    @IBOutlet weak var createRoomButton: UIButton!
    @IBOutlet weak var exploreRoomsButton: UIButton!
    @IBOutlet weak var enterCodeButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createRoomButton.layer.cornerRadius = createRoomButton.frame.height/2.4
        exploreRoomsButton.layer.cornerRadius = exploreRoomsButton.frame.height/2.4
        enterCodeButton.layer.cornerRadius = enterCodeButton.frame.height/2.4

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
