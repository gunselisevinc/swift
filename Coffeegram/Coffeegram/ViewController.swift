//
//  ViewController.swift
//  Coffeegram
//
//  Created by gunseli sevinc on 7.09.2020.
//  Copyright © 2020 gunseli sevinc. All rights reserved.
//

import UIKit

struct Item {
    var imageName: String
}

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var items: [Item] = [Item(imageName: "americano"),
                         Item(imageName: "brew"),
                         Item(imageName: "cappuccino"),
                         Item(imageName: "espresso"),
                         Item(imageName: "latte"),
                         Item(imageName: "macchiato"),
                         Item(imageName: "mocha")]
    
    var collectionViewFlowLayout: UICollectionViewFlowLayout!
    let cellIdentifier = "ItemCollectionViewCell"
    let viewImageSegueIdentifier = "viewImageSegueIdentifier"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupCollectionView()
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        setupCollectionViewItemSize()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let item = sender as? Item
        
        if segue.identifier == viewImageSegueIdentifier{
            if let vc = segue.destination as? ImageViewerViewController{
                vc.imageName = item?.imageName
            }
        }
    }

    private func setupCollectionView() {
        collectionView.delegate = self
        collectionView.dataSource = self
        let nib =  UINib(nibName: "ItemCollectionViewCell", bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: cellIdentifier)
    }
    
    private func setupCollectionViewItemSize(){
        if collectionViewFlowLayout == nil{
            let numberOFItemPerRow: CGFloat = 2
            let lineSpacing: CGFloat = 5
            let interItemSpacing: CGFloat = 5
            
            let width = (collectionView.frame.width - (numberOFItemPerRow - 1) * interItemSpacing) / numberOFItemPerRow
            let height = width
            
            collectionViewFlowLayout = UICollectionViewFlowLayout()
            
            collectionViewFlowLayout.itemSize = CGSize(width: width, height: height)
            collectionViewFlowLayout.sectionInset = UIEdgeInsets.zero
            collectionViewFlowLayout.scrollDirection = .vertical
            collectionViewFlowLayout.minimumLineSpacing = lineSpacing
            collectionViewFlowLayout.minimumInteritemSpacing = interItemSpacing
            collectionView.setCollectionViewLayout(collectionViewFlowLayout, animated: true)
        }
    }
    
}


extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath) as! ItemCollectionViewCell
        
        cell.imageView.image = UIImage(named: items[indexPath.item].imageName)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("didSelectItemAt: \(indexPath)")
        
        let item = items[indexPath.item]
        performSegue(withIdentifier: viewImageSegueIdentifier, sender: item)
    }
}
