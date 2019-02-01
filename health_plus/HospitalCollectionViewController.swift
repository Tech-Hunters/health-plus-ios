//
//  HospitalCollectionViewController.swift
//  health_plus
//
//  Created by Thet Maung on 10/21/18.
//  Copyright © 2018 Thet Maung. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"
var HospitalIndexRow = 0
var hospital_data = Array<[String: Any]>()

class HospitalCollectionViewController: UICollectionViewController {

    override func viewDidLoad() {
        hospital_data.removeAll()
        super.viewDidLoad()
        let server_url = Environment().configuration(PlistKey.ServerURL)
        let connection_protocol = Environment().configuration(PlistKey.ConnectionProtocol)
        let link = connection_protocol + "://" + server_url + "/hospital"
        let url = URL(string: link)!
        
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            if error == nil {
                print("it is called")
                guard let data = data, error == nil else { return }
                
                do {
                    let json = try JSONSerialization.jsonObject(with: data, options: .allowFragments) as! [String:Any]
                    let hospitals = json["hospitals"] as? [[String: Any]] ?? []
                    for hospital in hospitals {
                        hospital_data.append(hospital )
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
        return hospital_data.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        
        let width = cell.bounds.size.width
        let height = cell.bounds.size.height
        let backgroundImage = UIImageView(frame: CGRect(x:0, y:0, width:width, height:height))
        backgroundImage.image = UIImage(named: hospital_data[indexPath.row]["image"] as! String)
        
        backgroundImage.contentMode =  UIView.ContentMode.scaleAspectFill
        backgroundImage.alpha = 0.5
        cell.insertSubview(backgroundImage, at: 0)
        
//        let image = cell.viewWithTag(2) as! UIImageView
//        let imageName = hospitals[indexPath.row]["image"] as? String
        
//        let image = UIImage(named: imageName!)
//        let button = cell.viewWithTag(2) as! UIButton
//        button.setImage(image, for: .normal )
        
        let label = cell.viewWithTag(1) as! UILabel
        label.text = hospital_data[indexPath.row]["name"] as? String
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let backItem = UIBarButtonItem()
        backItem.title = "Back"
        navigationItem.backBarButtonItem = backItem // This will show in the next view controller being pushed
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)
    {
        print("selected")
        print(indexPath.row)
        HospitalIndexRow = indexPath.row
        performSegue(withIdentifier: "segue", sender: self)
    }

}
