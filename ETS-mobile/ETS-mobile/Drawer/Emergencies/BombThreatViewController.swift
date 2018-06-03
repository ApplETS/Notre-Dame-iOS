//
//  BombeViewController.swift
//  ETS-mobile
//
//  Created by Emmanuel on 2018-04-21.
//  Copyright © 2018 applETS. All rights reserved.
//

import UIKit

class BombThreatViewController: UIViewController {
    
    @IBOutlet weak var instructionsLabel: UILabel!
    @IBOutlet weak var emergencyCallButtonOutlet: UIButton!
    @IBAction func emergencyCallButtonAction(_ sender: Any) {
        if let phoneCallUrl = URL(string : "tel://514-396-8900") {
            let application:UIApplication = UIApplication.shared
            if (application.canOpenURL(phoneCallUrl)) {
                application.open(phoneCallUrl, options: [:], completionHandler: nil)
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        instructionsLabel!.attributedText = NSMutableAttributedString(string: NSLocalizedString("bombThreatInstructions", comment: "Instructions for bomb threat"))
        
        emergencyCallButtonOutlet.layer.cornerRadius = 5
    emergencyCallButtonOutlet.setTitle(NSLocalizedString("emergencyCall", comment: "Emergency call"), for: UIControlState.normal)
        // Do any additional setup after loading the view.
    }

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
