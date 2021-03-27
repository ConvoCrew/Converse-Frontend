//
//  WelcomeViewController.swift
//  Converse
//
//  Created by Akku on 3/27/21.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var iconImage: UIImageView!
    @IBOutlet weak var appNameLabel: UILabel!
    @IBOutlet weak var appDescriptionLabel: UILabel!
    @IBOutlet weak var startConvoButton: UIButton!
    @IBOutlet weak var noteLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        startConvoButton.layer.cornerRadius = startConvoButton.frame.height/2.4
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
