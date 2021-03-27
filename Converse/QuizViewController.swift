//
//  QuizViewController.swift
//  Converse
//
//  Created by Akku on 3/28/21.
//

import UIKit

class QuizViewController: UIViewController {

    @IBOutlet weak var selectTopicButton: UIButton!
    
    @IBOutlet var optionButton: [UIButton]!
    
    
    @IBAction func selectButtonPressed(_ sender: UIButton) {
        optionButton.forEach { (btn) in
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
        selectTopicButton.layer.cornerRadius = selectTopicButton.frame.height/2.4
        optionButton.forEach { (btn) in
            btn.layer.cornerRadius = btn.frame.height/2.4
            btn.isHidden = true
            btn.alpha = 0
        // Do any additional setup after loading the view.
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
