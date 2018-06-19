//
//  HomeDatasource.swift
//  TwitterLBTA
//
//  Created by Carlo Gilmar on 19/06/18.
//  Copyright © 2018 Carlo Gilmar. All rights reserved.
//
import LBTAComponents

class HomeDatasource: Datasource {
    
    let words = ["user1", "user2", "user3"]
    
    override func cellClasses() -> [DatasourceCell.Type] {
        print(" cellClasses() ==> ")
        return [UserCell.self]
    }
    
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
    
    override func headerClasses() -> [DatasourceCell.Type]? {
        return [UserHeader.self]
    }
    
    override func footerClasses() -> [DatasourceCell.Type]? {
        return [UserFooter.self]
    }
    
}
