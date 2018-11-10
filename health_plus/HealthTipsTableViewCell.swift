//
//  HealthTipsTableViewCell.swift
//  health_plus
//
//  Created by Thet Maung on 10/18/18.
//  Copyright © 2018 Thet Maung. All rights reserved.
//

import UIKit

class HealthTipsTableViewCell: UITableViewCell {
    @IBOutlet weak var tip_title: UILabel!
    
    @IBOutlet weak var tip_content: UITextView!
    @IBOutlet weak var tip_image: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
