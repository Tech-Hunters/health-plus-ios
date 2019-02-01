//
//  HealthTIpViewController.swift
//  health_plus
//
//  Created by Thet Maung on 1/31/19.

//  Copyright © 2019 Thet Maung. All rights reserved.
//

import UIKit

class HealthTipViewController: UIViewController {

    @IBOutlet weak var ht_image: UIImageView!
    @IBOutlet weak var ht_title: UILabel!
    @IBOutlet weak var content: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let health_tip = health_tip_data[indexRow] as? [String: Any]
        ht_image.image = UIImage(named: health_tip!["ht_image"] as! String)
        ht_title.text = health_tip!["ht_title"] as? String
        content.text = health_tip!["ht_details"] as? String
    }
    
}
