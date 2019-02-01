//
//  ContactsViewController.swift
//  health_plus
//
//  Created by Thet Maung on 10/19/18.
//  Copyright © 2018 Thet Maung. All rights reserved.
//

import UIKit

class ContactsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var contacts_table: UITableView!
    
    var list = ["Police", "Emergency Ambulance", "Fire", "Victoria Hospital", "Bahosi Hospital"]
    var ph_list = ["199", "09796928977", "01254000", "019666141", "012300631"]
    override func viewDidLoad() {
        super.viewDidLoad()
        self.contacts_table.delegate = self
        self.contacts_table.dataSource = self

        // Do any additional setup after loading the view.
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return list.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath ) as! ContactsTableViewCell
        
        cell.contact_name.text = list[indexPath.row]
        cell.contact_phno.text = ph_list[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let number = ph_list[indexPath.row]
        
        guard let url = URL(string: "tel://\(number)") else {
            return //be safe
        }
        
        if #available(iOS 10.0, *) {
            UIApplication.shared.open(url)
        } else {
            UIApplication.shared.openURL(url)
        }
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
