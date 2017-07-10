//
//  ViewController.swift
//  Advanced iOS Spring 2017
//
//  Created by Suiz Uzcategui on 19/04/2017.
//  Copyright © 2017 ___AdvancediOS___. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var cityLabel: UILabel!
  
  @IBOutlet weak var tempLabel: UILabel!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
             
      let weather = Weather(city: "Mumbai", temperature: 27, picture: nil)
      cityLabel.text = weather!.city
        tempLabel.text = "\(weather!.temperature)"
      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

