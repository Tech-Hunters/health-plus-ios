//
//  SettingsTableViewCell.swift
//  health_plus
//
//  Created by Thet Maung on 10/19/18.
//  Copyright © 2018 Thet Maung. All rights reserved.
//

import UIKit
@IBDesignable extension UIImageView {
    
    
    @IBInspectable var borderWidth: CGFloat {
        set {
            layer.borderWidth = newValue
        }
        get {
            return layer.borderWidth
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat {
        set {
            layer.cornerRadius = newValue
        }
        get {
            return layer.cornerRadius
        }
    }
    
    @IBInspectable var borderColor: UIColor? {
        set {
            guard let uiColor = newValue else { return }
            layer.borderColor = uiColor.cgColor
        }
        get {
            guard let color = layer.borderColor else { return nil }
            return UIColor(cgColor: color)
        }
    }
}


class SettingsTableViewCell: UITableViewCell {

    
    @IBOutlet weak var user_image: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
//        (cell.imageView?.frame.size.width)! / 2
//        cell.imageView?.layer.masksToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    
    public func tableView(_ willDisplayCell: UITableView)
    {
        
        user_image.layer.cornerRadius = (user_image.frame.size.width)/2
        user_image.layer.masksToBounds = true
    }

}
