//
//  ViewController2.swift
//  FSE301_App
//
//  Created by Ryan Decker on 2/18/16.
//  Copyright © 2016 Ryan Decker. All rights reserved.
//

import UIKit

class ViewController2: UIViewController{
    @IBOutlet weak var label: UILabel!
    
    var fromFirstView:String?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.label.text = self.fromFirstView!
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}