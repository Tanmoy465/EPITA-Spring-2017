//
//  Weather.swift
//  Advanced iOS Spring 2017
//
//  Created by GuestUser on 5/17/17.
//  Copyright © 2017 ___AdvancediOS___. All rights reserved.
//

import Foundation
import UIKit

class Weather{
  var city : String
  var temperature : Int
  var picture : UIImage?
  
  init?(city:String, temperature: Int, picture : UIImage?){
    
    self.city = city
    self.temperature = temperature
    self.picture = picture
    if(city.isEmpty){
      return nil
    }
  }
}
