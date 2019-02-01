//
//  HealthTipsCollectionViewController.swift
//  health_plus
//
//  Created by Thet Maung on 10/21/18.
//  Copyright © 2018 Thet Maung. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"
var health_tip_data = Array<[String: Any]>()
var indexRow = 0


class HealthTipsCollectionViewController: UICollectionViewController {
    
//    var tip_titles = [String]()
    
    override func viewDidLoad() {
        health_tip_data.removeAll()
        super.viewDidLoad()
        let server_url = Environment().configuration(PlistKey.ServerURL)
        let connection_protocol = Environment().configuration(PlistKey.ConnectionProtocol)
        let link = connection_protocol + "://" + server_url + "/health_tip"
        let url = URL(string: link)!

        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            if error == nil {
                print("it is called")
                guard let data = data, error == nil else { return }

                do {
                    let json = try JSONSerialization.jsonObject(with: data, options: .allowFragments) as! [String:Any]
                    let health_tips = json["health_tips"] as? [[String: Any]] ?? []
                    for health_tip in health_tips {
                        health_tip_data.append(health_tip )
                    }
                    self.collectionView.reloadData()
                    
                } catch let error as NSError {
                    print(error)
                }
            }
            else {
                print(error ?? "error")
            }
        }
        task.resume()
    }
    


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return health_tip_data.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        // Configure the cell
        let width = cell.bounds.size.width
        let height = cell.bounds.size.height
        let backgroundImage = UIImageView(frame: CGRect(x:0, y:0, width:width, height:height))
        let imageName = health_tip_data[indexPath.row]["ht_image"] as? String
        
        backgroundImage.image = UIImage(named: imageName!)
        backgroundImage.contentMode =  UIView.ContentMode.scaleAspectFill
        backgroundImage.alpha = 0.5
        cell.insertSubview(backgroundImage, at: 0)
        
        let btn = cell.viewWithTag(1) as! UIButton
        do{
            btn.setTitle(health_tip_data[indexPath.row]["ht_title"] as? String, for: .normal)
        }
//        btn.addTarget(self, action: #selector(self.connected(sender:)), for: .touchUpInside)
        return cell
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)
    {
        print("selected")
        print(indexPath.row)
        indexRow = indexPath.row
//        guard let cell = collectionView.cellForItem(at: indexPath) else { return }
        performSegue(withIdentifier: "segue", sender: self)
    }
}
