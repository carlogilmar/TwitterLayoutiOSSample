//
//  HomeDatasourceController.swift
//  TwitterLBTA
//
//  Created by Carlo Gilmar on 18/06/18.
//  Copyright © 2018 Carlo Gilmar. All rights reserved.
//

import LBTAComponents

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
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 50)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 100)
    }
}

