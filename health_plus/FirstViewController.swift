//
//  FirstViewController.swift
//  health_plus
//
//  Created by Thet Maung on 1/31/19.
//  Copyright © 2019 Thet Maung. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBAction func prepareForUnwind(segue: UIStoryboardSegue) {
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if FBSDKAccessToken.current() != nil{
            print("logged in")
            self.performSegue(withIdentifier: "mainControllerSegue", sender: self)
//            self.performSegue(withIdentifier: "loginSegue", sender: self)
        }
        else{
            print("not logged in")
            self.performSegue(withIdentifier: "loginSegue", sender: self)
        }

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
