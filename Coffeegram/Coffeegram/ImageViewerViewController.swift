//
//  ImageViewerViewController.swift
//  Coffeegram
//
//  Created by gunseli sevinc on 7.09.2020.
//  Copyright © 2020 gunseli sevinc. All rights reserved.
//

import UIKit

class ImageViewerViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    var imageName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupImageview()
    }
    
    private func setupImageview() {
        guard let name  = imageName else { return }
        
        if let image = UIImage(named: name){
            imageView.image = image
        }
    }

  

}
