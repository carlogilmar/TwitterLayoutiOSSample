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
        let mdUser = User(name: "Making Devs", username: "@makingdevs", bioText: "Impulsamos tu carrera como desarrollador de software.", profileImage: #imageLiteral(resourceName: "md"))
        let joeUser = User(name: "Joe in Japan", username: "jna_sh", bioText: "Program Manager @GitHubEducation 🐙🐱 helping students build communities with 💖 and 🚩", profileImage: #imageLiteral(resourceName: "joe"))
        return [carloUser, aleeUser, mdUser, joeUser]
    }()

    //let tweets = ["tweet1", "tweet2"]
    let tweets: [Tweet] = {
        let carloUser = User(name: "Carlo Gilmar", username: "@carlogilmar", bioText: "Desarrollador de software en @makingdevs | Github Campus Expert 🚩| Me gusta hacer registros gráficos y bailar salsa cubana | IPN Programación | UNAM Sociología", profileImage: #imageLiteral(resourceName: "profile"))
        
        let tweet1 = Tweet(user: carloUser, message: "ONE: The latest @humble book bundle is perfect for educators who want to learn about @arduino, @adafruit, & the #InternetOfThings! Over 20 @make books w/ project ideas, intro activities, and more. Check it out! 👇👇👇Maker Ed agregado")
        let tweet2 = Tweet(user: carloUser, message: "TWO: The latest @humble book bundle is perfect for educators who want to learn about @arduino, @adafruit, & the #InternetOfThings! Over 20 @make books w/ project ideas, intro activities, and more. Check it out! 👇👇👇Maker Ed agregado")

        return [tweet1, tweet2]
    }()
    
    //let words = ["user1", "user2", "user3"]
    
    override func cellClasses() -> [DatasourceCell.Type] {
        print(" cellClasses() ==> ")
        return [UserCell.self, TweetCell.self]
    }
    
    override func item(_ indexPath: IndexPath) -> Any? {
        print("Function item ---------- ")
        print(indexPath.item)
        print(users[indexPath.item])
        print("--------------------")
        if indexPath.section == 1 {
            return tweets[indexPath.item]
        }
        return users[indexPath.item]
    }
    
    override func numberOfItems(_ section: Int) -> Int {
        print("Number of items!!")
        if section == 1 {
            return tweets.count
        }
        return users.count
    }
    
    override func headerClasses() -> [DatasourceCell.Type]? {
        return [UserHeader.self]
    }
    
    override func footerClasses() -> [DatasourceCell.Type]? {
        return [UserFooter.self]
    }
    
    override func numberOfSections() -> Int {
        return 2
    }
}
