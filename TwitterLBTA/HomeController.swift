//
//  HomeController.swift
//  TwitterLBTA
//
//  Created by Carlo Gilmar on 16/06/18.
//  Copyright © 2018 Carlo Gilmar. All rights reserved.
//


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

import UIKit

class WordCell: UICollectionViewCell {
    
    //Creating a new class for show words
    override init(frame: CGRect) {
        super.init(frame: frame)
        //backgroundColor = .yellow
        print("Step 3: WordCell is init!")
        setupViews()
    }
    
    // Closure as attribute
    let wordLabel: UILabel = {
        let label = UILabel()
        label.text = "Hello!!"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    func setupViews() {
        print("Setting up view!")
        backgroundColor = .yellow
        addSubview(wordLabel)
        wordLabel.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        wordLabel.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        wordLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        wordLabel.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        print(wordLabel.description)
        print("===============================")
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

class HomeController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    let cellId = "cellId"
    let headerId = "headerId"
    
    // Load the controller
    override func viewDidLoad(){
        super.viewDidLoad()
        
        print("Step 2: I'm the HomeController!")
        collectionView?.backgroundColor = .white
        // Register the cells
        // Register the new class WordCell instead
        collectionView?.register(WordCell.self, forCellWithReuseIdentifier: cellId)
        collectionView?.register(UICollectionViewCell.self, forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: headerId)
        
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
    
    //Adding the header
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: headerId, for: indexPath)
        header.backgroundColor = .blue
        print("Adding the header to the collection view")
        print(header.description)
        return header
    }
    
    // Modify the header size
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        print("Modify the header size!")
        return CGSize(width: view.frame.width, height: 50)
    }
}
