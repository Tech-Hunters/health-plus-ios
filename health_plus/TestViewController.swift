//
//  TestViewController.swift
//  health_plus
//
//  Created by Thet Maung on 1/31/19.
//  Copyright © 2019 Thet Maung. All rights reserved.
//

import UIKit

class TestViewController: UIViewController, FBSDKLoginButtonDelegate {
    
    var dict : [String : AnyObject]!
    
    let loginButton = FBSDKLoginButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginButton.center = view.center
        loginButton.delegate = self
        view.addSubview(loginButton)
        if FBSDKAccessToken.current() != nil{
            getFBUserData()
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    
    func getFBUserData(){
        FBSDKGraphRequest(graphPath: "me", parameters: ["fields": "id, name, picture.type(large), email"]).start(completionHandler: { (connection, result, error) -> Void in
            if (error == nil){
                self.dict = result as? [String : AnyObject]
                print(result!)
                print(self.dict)
                
                self.performSegue(withIdentifier: "goToMainTab", sender: self)
                
            }
            else {
                print(error!)
                return
            }
        })
    }
    
    func loginButton(_ loginButton: FBSDKLoginButton!, didCompleteWith result: FBSDKLoginManagerLoginResult!, error: Error!) {
        print("loggin completed")
        getFBUserData()
    }
    
    func loginButtonDidLogOut(_ loginButton: FBSDKLoginButton!) {
        print("user logged out")
    }
    
    

}
