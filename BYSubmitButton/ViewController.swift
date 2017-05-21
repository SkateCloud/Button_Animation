//
//  ViewController.swift
//  BYSubmitButton
//
//  Created by Mac on 2016/12/10.
//  Copyright © 2016年 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var button:SubmitButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let frame = CGRect(x: 50, y: 50, width: 180, height: 60)
        button = SubmitButton(frame: frame)
        button.layer.cornerRadius = 30
        button.checkLineWidth = 8
        button.backgroundColor = UIColor(red:0, green:206/255, blue:148/255, alpha:1)
        button.setTitle("Submit", for: .normal)
        self.view.addSubview(button)
    }
    
    @IBAction func resetButton(_ sender: AnyObject) {
        button.changeState(toState: .Normal)
    }
    
    @IBAction func start(_ sender: AnyObject) {
        button.changeState(toState: .Loading)
    }
    
    
    @IBAction func loading2Finished(_ sender: AnyObject) {
        button.progress = 1
        
    }
    
    @IBAction func loadingProccess(_ sender: AnyObject) {
        button.progress = 0.5
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


