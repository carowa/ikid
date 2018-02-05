//  August Carow
//  ViewController.swift
//  ikid
//
//  Created by August Carow on 2/4/18.
//  Copyright © 2018 August Carow. All rights reserved.
//

import UIKit

class knockKnockViewController: UIViewController {

    @IBOutlet weak var knockKnock: UILabel!
    var knockKnockStage : Int = 0
    
    @IBAction func knockKnockFlip(_ sender: UIButton) {
        UIView.transition(with: self.view, duration: 0.325, options: UIViewAnimationOptions.transitionFlipFromRight, animations: {}, completion: { (finished: Bool) -> () in })
        knockKnockStage = (knockKnockStage + 1) % 5
        switch knockKnockStage {
        case 0:
            knockKnock.text = "Knock knock..."
        case 1:
            knockKnock.text = "Who's there"
        case 2:
            knockKnock.text = "Interrupting Cow"
        case 3:
            knockKnock.text = "Interrupting Cow who?"
        case 4:
            knockKnock.text = "Mooo!!!"
        default:
            knockKnock.text = "Knock knock..."
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
