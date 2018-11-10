//
//  HealthTipsCollectionViewController.swift
//  health_plus
//
//  Created by Thet Maung on 10/21/18.
//  Copyright © 2018 Thet Maung. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class HealthTipsCollectionViewController: UICollectionViewController {
    
    var tip_titles = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        tip_titles = ["Why you feel tired all the time?", "Why you feel tired all the time?", "Why you feel tired all the time?"]
    }



    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return tip_titles.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        // Configure the cell
        let width = cell.bounds.size.width
        let height = cell.bounds.size.height
        let backgroundImage = UIImageView(frame: CGRect(x:0, y:0, width:width, height:height))
        backgroundImage.image = UIImage(named: "health")
        backgroundImage.contentMode =  UIView.ContentMode.scaleAspectFill
        backgroundImage.alpha = 0.5
        cell.insertSubview(backgroundImage, at: 0)
        
        let label = cell.viewWithTag(1) as! UILabel
        label.text = tip_titles[indexPath.row]
        return cell
    }
}
