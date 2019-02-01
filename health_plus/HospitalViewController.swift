//
//  HospitalViewController.swift
//  health_plus
//
//  Created by Thet Maung on 10/22/18.
//  Copyright © 2018 Thet Maung. All rights reserved.
//

import UIKit

class HospitalViewController: UIViewController {
    
    @IBOutlet weak var love_btn: UIButton!
    @IBOutlet weak var hospital_image: UIImageView!
    @IBOutlet weak var hospital_name: UILabel!
    @IBOutlet weak var hospital_phno: UILabel!
    @IBOutlet weak var hospital_addr: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
//
//        let button = UIButton(type: .system)
//        let image = UIImage(named: "back")
//        button.setImage(image, for: .normal)
//        button.setTitle("Back", for: .normal)
//        button.tintColor = UIColor(red:0.11, green:0.74, blue:1.00, alpha:1.0)
//        back_btn.customView = button
        self.navigationItem.hidesBackButton = true
        let newBackButton = UIBarButtonItem(title: "Back", style: UIBarButtonItem.Style.plain, target: self, action: #selector(back))
        self.navigationItem.leftBarButtonItem = newBackButton
        let data = hospital_data[HospitalIndexRow]
        print(data)
        hospital_image.image = UIImage(named: data["image"] as! String)
        hospital_name.text = data["name"] as! String
        hospital_phno.text = data["phno"] as! String
        hospital_addr.text = data["address"] as! String
    }
    
    
    @objc func back() {
//        let newViewController = HomeViewController()
         self.navigationController?.popViewController(animated: true)

    }

}
