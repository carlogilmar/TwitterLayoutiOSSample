//
//  HomeDatasourceController.swift
//  TwitterLBTA
//
//  Created by Carlo Gilmar on 18/06/18.
//  Copyright © 2018 Carlo Gilmar. All rights reserved.
//

import LBTAComponents

/*
    Creating a new swift class for provide a simple list
 */

class HomeDatasource: Datasource {
    
    let words = ["user1", "user2", "user3"]
    
    override func item(_ indexPath: IndexPath) -> Any? {
        print("Function item ---------- ")
        print(indexPath.item)
        print(words[indexPath.item])
        print("--------------------")
        return words[indexPath.item]
    }
    
    override func numberOfItems(_ section: Int) -> Int {
        print("Number of items!!")
        return words.count
    }
    
}

class HomeDatasourceController: DatasourceController {
    /*
     Datasource controller is a LBTA Component
     */
    override func viewDidLoad() {
        super.viewDidLoad()
        //collectionView?.backgroundColor = .red
        let homeDatasource = HomeDatasource()
        print("HomedatasourceController is here!!")
        print(homeDatasource.description)
        print("==================================")
        self.datasource = homeDatasource
    }
}

