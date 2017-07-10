//
//  WeatherTableViewCell.swift
//  Advanced iOS Spring 2017
//
//  Created by GuestUser on 5/24/17.
//  Copyright © 2017 ___AdvancediOS___. All rights reserved.
//

import UIKit

class WeatherTableViewCell: UITableViewCell {

  @IBOutlet weak var cityLabel: UILabel!
  
  @IBOutlet weak var tempLabel: UILabel!
  
  @IBOutlet weak var imageContainer: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
