//
//  ArmedPersonViewController.swift
//  ETS-mobile
//
//  Created by howard on 2018-06-05.
//  Copyright © 2018 applETS. All rights reserved.
//

import UIKit

class ArmedPersonViewController: UIViewController {

    @IBOutlet weak var titleLabel: UINavigationItem!
    @IBOutlet weak var instructionsLabel: UITextView!
    @IBOutlet weak var emergencyCallButtonOutlet: UIButton!
    
    @IBAction func emergencyCallButtonAction(_ sender: Any) {
        
        if let phoneCallUrl = URL(string : "tel://514-396-8900"){
            let application:UIApplication = UIApplication.shared
            if (application.canOpenURL(phoneCallUrl)){
                application.open(phoneCallUrl, options:[:], completionHandler:nil)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        instructionsLabel!.attributedText = NSMutableAttributedString(string: NSLocalizedString("armedPersonInstructions", comment: "Instructions for Armed Person"))
        instructionsLabel.font = UIFont(name: instructionsLabel.font!.fontName, size: 16)
        titleLabel.title = NSLocalizedString("armedPerson", comment: "Title for ArmedPerson")
        
        
        
        emergencyCallButtonOutlet.layer.cornerRadius = 5
        emergencyCallButtonOutlet.setTitle(NSLocalizedString("emergencyCall", comment: "Emergency call"), for: UIControlState.normal)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidLayoutSubviews() {
        instructionsLabel.setContentOffset(CGPoint.zero, animated: false)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}