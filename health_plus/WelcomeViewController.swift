//
//  WelcomeViewController.swift
//  health_plus
//
//  Created by Thet Maung on 10/6/18.
//  Copyright © 2018 Thet Maung. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("ifnroi");
        let users =  UserDefaults.standard.string(forKey: "User")
        if(users==nil){
//            self.performSegue(withIdentifier: "loginview", sender: self)

//            self.present(LoginViewController(), animated: true, completion: nil)
            let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let newViewController = storyBoard.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
            self.navigationController?.pushViewController(newViewController, animated: true)
            

        }
        else{
            print("Greate")
        }
        
    }
    
}

