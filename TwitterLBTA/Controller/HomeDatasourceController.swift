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
        
        setupNavigationBarItems()
        
        //print("HomedatasourceController is here!!")
        //print(homeDatasource.description)
        //print("==================================")
        let homeDatasource = HomeDatasource()
        self.datasource = homeDatasource
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    override func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        //let user = self.datasource?.item(indexPath)
        //print("Collection view!!!")
        //print(user.debugDescription)
   
        if let user = self.datasource?.item(indexPath) as? User {
            let approximateWidthOfBioTextView = view.frame.width - 12 - 50 - 8
            let size = CGSize(width: approximateWidthOfBioTextView, height: 1000)
            
            print("-.-.-.-.-")
            print(approximateWidthOfBioTextView.description)
            
            let attr = [NSAttributedStringKey.font:  UIFont.systemFont(ofSize: 15)]
            let estimatedFrame = NSString(string: user.bioText).boundingRect(with: size, options: .usesLineFragmentOrigin, attributes: attr, context: nil)
            return CGSize(width: view.frame.width, height: estimatedFrame.height+66)
        }
        
        return CGSize(width: view.frame.width, height: 100)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 50)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 50)
    }
}

