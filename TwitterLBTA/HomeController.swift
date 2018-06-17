//
//  HomeController.swift
//  TwitterLBTA
//
//  Created by Carlo Gilmar on 16/06/18.
//  Copyright © 2018 Carlo Gilmar. All rights reserved.
//

import UIKit

class HomeController: UICollectionViewController {
    override func viewDidLoad(){
        super.viewDidLoad()
        print("Step 2: I'm the HomeController!")
        collectionView?.backgroundColor = .green
    }
}
