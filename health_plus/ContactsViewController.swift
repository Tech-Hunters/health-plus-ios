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
    
    var list = ["Police", "Ambulance", "Fire", "Sakura Hospital", "Sanchaung Fire Station"]
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
        cell.contact_phno.text = "199"
        
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
