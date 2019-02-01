//
//  ProfileViewController.swift
//  health_plus
//
//  Created by Thet Maung on 10/20/18.
//  Copyright © 2018 Thet Maung. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    
    var dict : [String : AnyObject]!
    @IBOutlet weak var logoutBtn: UIButton!
    @IBOutlet weak var profile_image: UIImageView!
    @IBOutlet weak var user_name: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        profile_image.layer.cornerRadius = profile_image.frame.size.width / 2;
        profile_image.clipsToBounds = true;
        logoutBtn.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)

        if (FBSDKAccessToken.current() != nil){
            getFBUserData()
        }

        // Do any additional setup after loading the view.
    }
    
    @objc func buttonAction(sender: UIButton!) {
        let loginManager = FBSDKLoginManager()
        loginManager.logOut()
        
        self.performSegue(withIdentifier: "backToLogin", sender: self)
    }
    
    func getFBUserData(){
        FBSDKGraphRequest(graphPath: "me", parameters: ["fields": "id, name, picture.type(large)"]).start(completionHandler: { (connection, result, error) -> Void in
            if (error == nil){
                self.dict = result as? [String : AnyObject]
                let name = self.dict["name"] as? String
                let picture = self.dict["picture"]
                let data = picture!["data"] as? [String: Any]
                let url = data?["url"] as? String
                self.user_name.text = name
//                print(self.dict)
                
                let uri = URL(string: url!)
//
                DispatchQueue.global().async {
                    let data = try? Data(contentsOf: uri as! URL) //make sure your image in this url does exist, otherwise unwrap in a if let check / try-catch
                    DispatchQueue.main.async {
                        self.profile_image.image = UIImage(data: data!)
                    }
                }
            }
            else {
                print(error!)
                return
            }
        })
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
