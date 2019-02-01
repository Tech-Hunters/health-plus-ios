//
//  NotiViewController.swift
//  health_plus
//
//  Created by Thet Maung on 10/19/18.
//  Copyright © 2018 Thet Maung. All rights reserved.
//

import UIKit

class NotiViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var noti_table: UITableView!
    var list = ["a",];

    override func viewDidLoad() {
        super.viewDidLoad()
        self.noti_table.delegate = self
        self.noti_table.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return list.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath ) as! NotiTableViewCell
        
        cell.noti_label.text = "Please verify your account with the code sent to your mail."
        
        return cell
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
