//
//  ViewController.swift
//  Sketcha Note Draft
//
//  Created by Aayushi Baral on 2017-12-06.
//  Copyright © 2017 Aayushi B. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var canvas : AnyObject!
    
    @IBAction func theButtons(_ sender: UIButton) {
        var canvas : Canvas = self.canvas as! Canvas
        // Reset (has tag 5)
        if (sender.tag == 5){
            var canvas : Canvas = self.canvas as! Canvas
            canvas.lines = []
            canvas.setNeedsDisplay()
        }
        // Pencil
        // Text
        // Pallet
        // Reset
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}

