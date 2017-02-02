//
//  CollectionViewController.swift
//  TableExample
//  Copyright © 2017 Example. All rights reserved.
//

import UIKit
class CollectionViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    let reuseIdentifier = "cell" // also enter this string as the cell identifier in the storyboard
    var items = ["1", "2", "3", "4" , "5" , "6"]

    
    
    // MARK: - UICollectionViewDataSource protocol
    
    // tell the collection view how many cells to make
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.items.count
    }
    
    // make a cell for each cell index path
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        // get a reference to our storyboard cell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath as IndexPath) as! CollectionViewCell
        
        // Use the outlet in our custom class to get a reference to the UIImage in the cell
       
        loadData()
        
        let image: UIImage = UIImage(named: "Apple.jpg")!
        cell.myImage.image = image
        cell.myImage.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        
        //cell.backgroundColor = UIColor.clear // make cell more visible in our example project
        
        return cell
    }
    
    // MARK: - UICollectionViewDelegate protocol
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        // handle tap events
        print("Seleccionaste el producto #\(indexPath.item)!")
    }
}

func loadData(){

    let conn = ConnectionUtil()
    conn.executeRequest()



}



