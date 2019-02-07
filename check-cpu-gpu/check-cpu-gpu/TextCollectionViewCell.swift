//
//  TextCollectionViewCell.swift
//  check-cpu-gpu
//
//  Created by Rebouh Aymen on 07/02/2019.
//  Copyright © 2019 Rebouh Aymen. All rights reserved.
//

import UIKit

class TextCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var textLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.shadowColor = UIColor.red.cgColor
        layer.shadowRadius = 4
        layer.shadowOpacity = 0.5
        layer.shadowOffset =  .init(width: 4, height: 4)
        clipsToBounds = false
    }
}
