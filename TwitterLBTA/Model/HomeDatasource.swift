//
//  HomeDatasource.swift
//  TwitterLBTA
//
//  Created by Carlo Gilmar on 19/06/18.
//  Copyright © 2018 Carlo Gilmar. All rights reserved.
//
import LBTAComponents

class HomeDatasource: Datasource {
    
    let users: [User] = {
        let carloUser = User(name: "Carlo Gilmar", username: "@carlogilmar", bioText: "Desarrollador de software en @makingdevs | Github Campus Expert 🚩| Me gusta hacer registros gráficos y bailar salsa cubana | IPN Programación | UNAM Sociología", profileImage: #imageLiteral(resourceName: "profile"))
        let aleeUser = User(name: "Itzel", username: "@alee_rguez", bioText: "Hombres necios que acusaís a las mujeres sin razón...", profileImage: #imageLiteral(resourceName: "alee"))
        return [carloUser, aleeUser]
    }()
    
    //let words = ["user1", "user2", "user3"]
    
    override func cellClasses() -> [DatasourceCell.Type] {
        print(" cellClasses() ==> ")
        return [UserCell.self]
    }
    
    override func item(_ indexPath: IndexPath) -> Any? {
        print("Function item ---------- ")
        print(indexPath.item)
        print(users[indexPath.item])
        print("--------------------")
        return users[indexPath.item]
    }
    
    override func numberOfItems(_ section: Int) -> Int {
        print("Number of items!!")
        return users.count
    }
    
    override func headerClasses() -> [DatasourceCell.Type]? {
        return [UserHeader.self]
    }
    
    override func footerClasses() -> [DatasourceCell.Type]? {
        return [UserFooter.self]
    }
    
}
