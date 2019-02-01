//
//  ScheduleViewController.swift
//  health_plus
//
//  Created by Thet Maung on 1/31/19.
//  Copyright © 2019 Thet Maung. All rights reserved.
//

import UIKit

class ScheduleViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    
    var hospitals = ["Asia Royal", "Victoria"]
    var dates = ["Mon - Fri", "Mon - Fri"]
    var times = ["9AM - 4PM", "8AM - 3PM"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return hospitals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath ) as! ScheduleTableViewCell
        
        cell.hospital_name.text = hospitals[indexPath.row]
        cell.date.text = dates[indexPath.row]
        cell.time.text = times[indexPath.row]
        
        return cell
    }
    

}
