//
//  ViewController.swift
//  SwiftLearning
//
//  Created by Mr.S on 2016/12/23.
//  Copyright © 2016年 ST.MEDIA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var testButton: UIButton!
    var buttonNum = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func buttonOnTap(_ sender: UIButton) {
        self.buttonNum += 1
        sender.setTitle(String.init(describing: self.buttonNum), for: UIControlState.normal)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

