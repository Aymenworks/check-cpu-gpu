//
//  TextCollectionViewCell.swift
//  check-cpu-gpu
//
//  Created by Rebouh Aymen on 07/02/2019.
//  Copyright © 2019 Rebouh Aymen. All rights reserved.
//

import UIKit

class TextCollectionViewCell: UICollectionViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        for subview in contentView.subviews {
            if let button =  subview as? UIButton {
                button.layer.shadowColor = button.backgroundColor?.cgColor
                button.layer.shadowRadius = 4
                button.layer.shadowOpacity = 0.5
                button.layer.shadowOffset =  .init(width: 4, height: 4)
                button.clipsToBounds = false
                button.layer.shadowPath = UIBezierPath(rect: button.bounds).cgPath
            }
        }
        
        self.contentView.layer.shouldRasterize = true
    }
}
