//
//  CollectionViewCell.swift
//  coffeeCollection
//
//  Created by gunseli sevinc on 27.08.2020.
//  Copyright © 2020 gunseli sevinc. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var coffeeImageView: UIImageView!
    @IBOutlet weak var coffeLabel: UILabel!
    
    override var isSelected: Bool {
    didSet {
        backgroundColor = isSelected ? UIColor.brown : UIColor.white
    }
    }
}
