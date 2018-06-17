//
//  HomeController.swift
//  TwitterLBTA
//
//  Created by Carlo Gilmar on 16/06/18.
//  Copyright © 2018 Carlo Gilmar. All rights reserved.
//

import UIKit

class HomeController: UICollectionViewController {
    
    /*
    - Controller and their cycle life
    - Collection View object and function
        - numberOfItemsInSection
        - cellForItemAt
        - dequeueReusableCell
        - Register
    - UI Collection View Controller Object
    - UIKit library
     */
    
    let cellId = "cellId"
    
    // Load the controller
    override func viewDidLoad(){
        super.viewDidLoad()
        print("Step 2: I'm the HomeController!")
        collectionView?.backgroundColor = .green
        // Register the cells
        collectionView?.register(UICollectionViewCell.self, forCellWithReuseIdentifier: cellId)
    }
    
    // Make the cells
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath)
        cell.backgroundColor = .blue
        return cell
    }
    
}
