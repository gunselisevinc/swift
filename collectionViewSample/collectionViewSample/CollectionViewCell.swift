//
//  CollectionViewCell.swift
//  collectionViewSample
//
//  Created by gunseli sevinc on 26.08.2020.
//  Copyright © 2020 gunseli sevinc. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var myLabel: UILabel!
    
    
    //Method for change background color of selected
    override var isSelected: Bool {
        didSet {
            backgroundColor = isSelected ? UIColor.darkGray : UIColor.lightGray
        }
    }
    
}
