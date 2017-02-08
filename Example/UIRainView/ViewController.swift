//
//  ViewController.swift
//  UIRainView
//
//  Created by zaidSA on 02/08/2017.
//  Copyright (c) 2017 zaidSA. All rights reserved.
//

import UIKit
import UIRainView

class ViewController: UIViewController {

    @IBOutlet weak var IBlblTitle: UILabel!
    @IBOutlet weak var IBRainView: UIRainView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animate(withDuration: 3) { 
            self.IBlblTitle.alpha = 0
        }
    }

    @IBAction func IBActionRain(_ sender: Any) {
        IBRainView.rain()
    }
    
    @IBAction func IBActionDrizzle(_ sender: Any) {
        IBRainView.drizzle()
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

