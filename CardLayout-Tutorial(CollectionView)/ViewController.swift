//
//  ViewController.swift
//  CardLayout-Tutorial(CollectionView)
//
//  Created by apple on 08/12/18.
//  Copyright © 2018 krispindia. All rights reserved.
//

import UIKit

// constant string
let Apple = "An apple is a sweet, edible fruit produced by an apple tree. Apple trees are cultivated worldwide, and are the most widely grown species in the genus Malus."
let Banana = "A banana is an edible fruit – botanically a berry – produced by several kinds of large herbaceous flowering plants in the genus Musa."

let Orange = "The orange is the fruit of the citrus species Citrus × sinensis in the family Rutaceae. It is also called sweet orange, to distinguish it from the related Citrus × aurantium, referred to as bitter orange."
class ViewController: UIViewController , UICollectionViewDelegate , UICollectionViewDataSource{
   
    var fruitName:[String] = []
    var fruitImage:[UIImage] = []
    var fruitDecription:[String] = []
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
 
        fruitName = ["Banana","Apple","Orange","Banana","Apple","Orange"]
        fruitDecription = [Banana,Apple,Orange,Banana,Apple,Orange]
        
        fruitImage = [UIImage(named: "Banana"),UIImage(named: "Apple"),UIImage(named: "Orange"),UIImage(named: "Banana"),UIImage(named: "Apple"),UIImage(named: "Orange")] as! [UIImage]
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return fruitName.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CustomCell" , for: indexPath) as! CustomCell
        
        cell.lblName.text = fruitName[indexPath.row]
        cell.lblDecription.text = fruitDecription[indexPath.row]
        cell.imgView.image = fruitImage[indexPath.row]
        
        // this crate a shodow effect with card layout
        
        cell.contentView.layer.cornerRadius = 4.0
        cell.contentView.layer.borderWidth = 4.0
        cell.contentView.layer.borderColor = UIColor.clear.cgColor
        cell.contentView.layer.masksToBounds = false
        cell.layer.shadowColor = UIColor.gray.cgColor
        cell.layer.shadowOffset = CGSize(width: 0, height: 1.0)
        cell.layer.shadowOpacity = 1.0
        cell.layer.masksToBounds = false
        cell.layer.shadowRadius = 4.0
       
        cell.layer.shadowPath = UIBezierPath(roundedRect: cell.bounds, cornerRadius: cell.contentView.layer.cornerRadius).cgPath
        
        return cell
      
    }
    
    
}
