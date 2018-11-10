//
//  HospitalCollectionViewController.swift
//  health_plus
//
//  Created by Thet Maung on 10/21/18.
//  Copyright © 2018 Thet Maung. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class HospitalCollectionViewController: UICollectionViewController {

    var hospitals = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        hospitals = ["Asia Royal", "Witoria", "OSC", "Pan Hlaing", "Sakura" ]
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return hospitals.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        
//        let width = cell.bounds.size.width
//        let height = cell.bounds.size.height
//        let backgroundImage = UIImageView(frame: CGRect(x:0, y:0, width:width, height:height))
//        backgroundImage.image = UIImage(named: "asia royal")
//        backgroundImage.contentMode =  UIView.ContentMode.scaleAspectFill
//        backgroundImage.alpha = 0.5
//        cell.insertSubview(backgroundImage, at: 0)
        
//        let image = cell.viewWithTag(2) as! UIImageView
        let image = UIImage(named: "asia royal")
        let button = cell.viewWithTag(2) as! UIButton
        button.setImage(image, for: .normal )
        
        let label = cell.viewWithTag(1) as! UILabel
        label.text = hospitals[indexPath.row]
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let backItem = UIBarButtonItem()
        backItem.title = "Back"
        navigationItem.backBarButtonItem = backItem // This will show in the next view controller being pushed
    }

}
