//
//  CreateRoomViewController.swift
//  Converse
//
//  Created by Akku on 3/27/21.
//

import UIKit

class CreateRoomViewController: UIViewController {
    
    @IBOutlet weak var createRoomLabel: UILabel!
    @IBOutlet weak var selectTopicLabel: UILabel!
    @IBOutlet weak var selectTopicTextField: UITextField!
    @IBOutlet weak var selectCategoryButton: UIButton!
    
    @IBOutlet weak var notesLabel: UILabel!
    @IBOutlet weak var notesTextField: UITextField!
    @IBOutlet weak var selectNumOfParticipantsButton: UIButton!
    
    @IBOutlet weak var roomTypeSegmentedControl: UISegmentedControl!
    @IBOutlet weak var goLiveButton: UIButton!
    @IBOutlet weak var scheduleButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        selectCategoryButton.layer.cornerRadius = selectCategoryButton.frame.height/2.4
        selectNumOfParticipantsButton.layer.cornerRadius = selectNumOfParticipantsButton.frame.height/2.4
        goLiveButton.layer.cornerRadius = goLiveButton.frame.height/2.4
        scheduleButton.layer.cornerRadius = scheduleButton.frame.height/2.4
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
