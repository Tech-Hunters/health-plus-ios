//
//  ContactsTableViewCell.swift
//  health_plus
//
//  Created by Thet Maung on 10/19/18.
//  Copyright © 2018 Thet Maung. All rights reserved.
//

import UIKit

class ContactsTableViewCell: UITableViewCell {

    @IBOutlet weak var contact_name: UILabel!
    @IBOutlet weak var contact_phno: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
