//
//  CollectionViewController.swift
//  health_plus
//
//  Created by Thet Maung on 10/21/18.
//  Copyright © 2018 Thet Maung. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class CollectionViewController: UICollectionViewController {

    var doctor_types = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        doctor_types = ["Neurologist", "Dermatologist", "Radiologist", "Psychiatrist", "Surgeon"]
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return doctor_types.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        // Configure the cell
        let width = cell.bounds.size.width
        let height = cell.bounds.size.height
        let backgroundImage = UIImageView(frame: CGRect(x:0, y:0, width:width, height:height))
        backgroundImage.image = UIImage(named: doctor_types[indexPath.row])
        backgroundImage.contentMode =  UIView.ContentMode.scaleAspectFill
        backgroundImage.alpha = 0.5
        cell.insertSubview(backgroundImage, at: 0)
        
        let btn = cell.viewWithTag(1) as! UIButton
        btn.setTitle(doctor_types[indexPath.row], for: .normal)
        return cell
    }
    
}
