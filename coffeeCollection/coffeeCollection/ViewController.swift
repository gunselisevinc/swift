//
//  ViewController.swift
//  coffeeCollection
//
//  Created by gunseli sevinc on 27.08.2020.
//  Copyright © 2020 gunseli sevinc. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource{

    @IBOutlet weak var collevtionView: UICollectionView!
    
    
    let coffees = ["Espresso","Americano","Macchiato","Cappuccino","Latte","Mocha","Brew"]
    
    let coffeeImages: [UIImage] = [
    UIImage(named: "espresso")!,
    UIImage(named: "americano")!,
    UIImage(named: "macchiato")!,
    UIImage(named: "cappuccino")!,
    UIImage(named: "latte")!,
    UIImage(named: "mocha")!,
    UIImage(named: "brew")!]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return coffees.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell
        
        cell.coffeLabel.text = coffees[indexPath.item]
        cell.coffeeImageView.image = coffeeImages[indexPath.item]
        
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.item)
    }

}

