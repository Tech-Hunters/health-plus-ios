//
//  ProfileViewController.swift
//  health_plus
//
//  Created by Thet Maung on 10/20/18.
//  Copyright © 2018 Thet Maung. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var profile_image: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        profile_image.layer.cornerRadius = profile_image.frame.size.width / 2;
        profile_image.clipsToBounds = true;

        // Do any additional setup after loading the view.
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
