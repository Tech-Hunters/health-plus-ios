//
//  HomeViewController.swift
//  health_plus
//
//  Created by Thet Maung on 10/17/18.
//  Copyright © 2018 Thet Maung. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    
//    @IBOutlet weak var segment: UISegmentedControl!
//    @IBOutlet weak var home_table: UITableView!
//    let list = ["Apple", "Orange", "Grape", "Pineapple", "Banana"]
//
//    var selectedSegment = 1
//
//    var rowHeight = CGFloat(0)
//    var check = false
//
//    @IBAction func changeSegment(_ sender: UISegmentedControl) {
//        if (sender.selectedSegmentIndex == 0 ){
//            selectedSegment = 1
//            self.home_table.rowHeight = rowHeight
//        }
//        else{
//            selectedSegment = 2
//            if check == false{
//                rowHeight = self.home_table.rowHeight
//                check = true
//            }
//            self.home_table.rowHeight = self.view.frame.height
//            self.home_table.isScrollEnabled = false
//        }
//        self.home_table.reloadData();
//    }
//
//    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
//    {
//        if ( selectedSegment == 1 ){
//            return(list.count)
//        }else{
//            return(1)
//        }
//    }
//
//    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
//    {
//        let cell1 = tableView.dequeueReusableCell(withIdentifier: "health_tips_cell", for: indexPath ) as! HealthTipsTableViewCell
//        cell1.tip_image.image = UIImage(named: "health")
//        cell1.tip_title.text = "Why you feel tired all the time?"
//        cell1.tip_content.text = "Do you often ask yourself, \"Why am I so tired all the time?\" If so, this article may be the perfect read for you; we have compiled a list of some of the most common reasons for tiredness and what you can do to bounce back into action."
//
//        let cell2 = tableView.dequeueReusableCell(withIdentifier: "location_cell", for: indexPath ) as! LocationTableViewCell
//
//        if ( selectedSegment == 1){
//            return cell1
//        }
//        else{
//            return cell2
//        }
//    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
//        self.home_table.delegate? = self
//        self.home_table.dataSource? = self
        
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}


