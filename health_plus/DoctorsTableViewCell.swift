//
//  DoctorsTableViewCell.swift
//  health_plus
//
//  Created by Thet Maung on 11/9/18.
//  Copyright © 2018 Thet Maung. All rights reserved.
//

import UIKit

class DoctorsTableViewCell: UITableViewCell {

    @IBOutlet weak var doctor_image: UIImageView!
    @IBOutlet weak var doctor_name: UILabel!
    @IBOutlet weak var doctor_type: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
