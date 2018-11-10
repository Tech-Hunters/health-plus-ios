//
//  HospitalViewController.swift
//  health_plus
//
//  Created by Thet Maung on 10/22/18.
//  Copyright © 2018 Thet Maung. All rights reserved.
//

import UIKit

class HospitalViewController: UIViewController {

//    @IBOutlet weak var nav_bar: UINavigationBar!
//    @IBOutlet weak var back_btn: UIBarButtonItem!
    @IBOutlet weak var love_btn: UIButton!
//    @IBOutlet weak var nav_item: UINavigationItem!
//
    @IBOutlet weak var hospital_image: UIImageView!
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
//        self.edgesForExtendedLayout = [];

    }
    
    
    @objc func back() {
//        let newViewController = HomeViewController()
         self.navigationController?.popViewController(animated: true)

    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
