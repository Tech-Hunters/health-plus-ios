//
//  EditProfileViewController.swift
//  health_plus
//
//  Created by Thet Maung on 10/20/18.
//  Copyright © 2018 Thet Maung. All rights reserved.
//

import UIKit

class EditProfileViewController: UIViewController {

    @IBOutlet weak var profile_image: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        profile_image.layer.cornerRadius = profile_image.frame.size.width / 2;
        profile_image.clipsToBounds = true;
        setupNavigationBar()
        
        
        // Do any additional setup after loading the view.
    }
    
    public func setupNavigationBar(){
        let DoneButton = UIButton(type: .system)
        DoneButton.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        DoneButton.setTitle("Done", for: .normal)
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: DoneButton)
        navigationItem.titleView?.tintColor = UIColor(cgColor: "#000" as! CGColor)
//        navigationController!.navigationBar.topItem!.title = "Cancel"
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let backItem = UIBarButtonItem()
//        backItem.title = "Cancel"
//        navigationItem.leftBarButtonItem = backItem
//    }

}
