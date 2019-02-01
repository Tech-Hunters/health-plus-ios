//
//  DoctorsTableViewController.swift
//  health_plus
//
//  Created by Thet Maung on 11/9/18.
//  Copyright © 2018 Thet Maung. All rights reserved.
//

import UIKit

class DoctorsTableViewController: UITableViewController {
    @IBOutlet var doctor_view: UITableView!
    
    var doctor_name = ["Dr. Yan Lynn Aung", "Dr. Thida Oo", "Dr. Aye Aye Thein", "Dr. Zay Ya Aye"]
    var doctor_image = ["doc0", "doc1", "doc2", "doc3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        self.doctor_view.rowHeight = 150
        self.doctor_view.delegate = self
        self.doctor_view.dataSource = self
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return doctor_name.count
    }
    
    public override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath ) as! DoctorsTableViewCell
        
        cell.doctor_image.image = UIImage(named: doctor_image[indexPath.row])
        cell.doctor_name.text = doctor_name[indexPath.row]
        cell.doctor_type.text = "Neurologist"
        
        return cell
    }

}
