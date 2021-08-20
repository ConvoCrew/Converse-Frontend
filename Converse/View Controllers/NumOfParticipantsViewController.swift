//
//  NumOfParticipantsViewController.swift
//  Converse
//
//  Created by Akku on 3/28/21.
//

import UIKit

class NumOfParticipantsViewController: UIViewController {
    
    @IBOutlet weak var selectNumberButton: UIButton!
    @IBOutlet var groupOptionButton: [UIButton]!
    
    @IBAction func selectButtonPressed(_ sender: UIButton) {
        groupOptionButton.forEach { (btn) in
            UIView.animate(withDuration: 0.7) {
                btn.isHidden = !btn.isHidden
                btn.alpha = btn.alpha == 0 ? 1 : 0
                btn.layoutIfNeeded()
            }
        }
    }
    @IBAction func optionPressed(_ sender: UIButton) {
        if let btnLbl1 = sender.titleLabel?.text{
            print(btnLbl1)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        selectNumberButton.layer.cornerRadius = selectNumberButton.frame.height/2.4
        groupOptionButton.forEach { (btn) in
            btn.layer.cornerRadius = btn.frame.height/2.4
            btn.isHidden = true
            btn.alpha = 0
        }

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
