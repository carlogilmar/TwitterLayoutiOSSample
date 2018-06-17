//
//  HomeController.swift
//  TwitterLBTA
//
//  Created by Carlo Gilmar on 16/06/18.
//  Copyright © 2018 Carlo Gilmar. All rights reserved.
//

import UIKit

class WordCell: UICollectionViewCell {
    
    //Creating a new class for show words
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .yellow
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

class HomeController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    /*
    - Controller and their cycle life
    - Collection View object and function
        - numberOfItemsInSection
        - cellForItemAt
        - dequeueReusableCell
        - Register
    - UI Collection View Controller Object
    - UIKit library
    - CGSize
    - NSCoder
     */
    
    let cellId = "cellId"
    
    // Load the controller
    override func viewDidLoad(){
        super.viewDidLoad()
        
        print("Step 2: I'm the HomeController!")
        collectionView?.backgroundColor = .white
        // Register the cells
        // Register the new class WordCell instead
        collectionView?.register(WordCell.self, forCellWithReuseIdentifier: cellId)
    }
    
    // Counting the total number of cells
    override func collectionView(_ collectionView: UICollectionView,
                                 numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    // Put the cells in the home controller
    override func collectionView(_ collectionView: UICollectionView,
                                 cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath)
	        return cell
    }
    
    //Modify the cells styles
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 50)
    }
    
}
