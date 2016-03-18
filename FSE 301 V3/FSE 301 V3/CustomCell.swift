//
//  CustomCell.swift
//  FSE 301 V3
//
//  Created by Ryan Decker on 3/8/16.
//  Copyright © 2016 Ryan Decker. All rights reserved.
//

import UIKit

protocol CustomCellDelegate{
    
}

class CustomCell: UITableViewCell, UITextFieldDelegate{
    
    let bigFont = UIFont(name: "Avenir-Book", size: 17.0)
    
    let smallFont = UIFont(name: "Avenir-Light", size: 17.0)
    
    let primaryColor = UIColor.blackColor()
    
    let secondaryColor = UIColor.lightGrayColor()
    
    var delegate: CustomCellDelegate!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        if textLabel != nil {
            textLabel?.font = bigFont
            textLabel?.textColor = primaryColor
        }
        
       if detailTextLabel != nil {
            detailTextLabel?.font = smallFont
            detailTextLabel?.textColor = secondaryColor
        }
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
