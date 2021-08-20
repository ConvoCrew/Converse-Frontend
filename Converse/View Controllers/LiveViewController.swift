//
//  LiveViewController.swift
//  Converse
//
//  Created by Akku on 3/28/21.
//

import UIKit

class LiveViewController: UIViewController {
    
    @IBOutlet weak var notesBarButton: UIBarButtonItem!
    @IBOutlet weak var topicLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var selectedCategoryLabel: UILabel!
    
    @IBOutlet weak var participantIconImage: UIImageView!
    @IBOutlet weak var numberParticipantLabel: UILabel!
    
    @IBOutlet weak var attendingTableView: UITableView!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var hostNoteLabel: UILabel!
    
    @IBOutlet weak var actionsButton: UIView!
    
    @IBOutlet weak var inviteLabel: UILabel!
    @IBOutlet weak var generatedCodeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
