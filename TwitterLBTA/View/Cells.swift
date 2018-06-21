//
//  Cells.swift
//  TwitterLBTA
//
//  Created by Carlo Gilmar on 19/06/18.
//  Copyright © 2018 Carlo Gilmar. All rights reserved.
//

import LBTAComponents


/*
 Creating a new swift class for provide a simple list
 */

class UserHeader: DatasourceCell {
    override func setupViews() {
        super.setupViews()
        backgroundColor = .blue
    }
}

class UserFooter: DatasourceCell{
    override func setupViews() {
        super.setupViews()
        backgroundColor = .green
    }
}

class UserCell: DatasourceCell {
    
    override var datasourceItem: Any? {
        didSet{
            print("Did set :-D ------------------------------------>")
            //nameLabel.text = datasourceItem as? String
        }
    }
    
    let profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .red
        return imageView
    }() // Closure properties as Computed properties
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "helloooo!!!"
        label.backgroundColor = .green
        return label
    }()
    
    let usernameLabel: UILabel = {
        let label = UILabel()
        label.text = "username"
        label.backgroundColor = .purple
        return label
    }()
    
    let bioTextView: UILabel = {
        let label = UILabel()
        label.backgroundColor = .yellow
        return label
    }()
    
    override func setupViews() {
        print("UserCell setup views!")
        super.setupViews()
        //backgroundColor = .yellow
        
        addSubview(profileImageView)
        addSubview(nameLabel)
        addSubview(usernameLabel)
        addSubview(bioTextView)
        
        profileImageView.anchor(self.topAnchor,
                                left: self.leftAnchor,
                                bottom: nil,
                                right: nil,
                                topConstant: 12,
                                leftConstant: 12,
                                bottomConstant: 0,
                                rightConstant: 0,
                                widthConstant: 50,
                                heightConstant: 50)
        
        //nameLabel.anchor(topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        nameLabel.anchor(profileImageView.topAnchor,
                         left: profileImageView.rightAnchor,
                         bottom: nil,
                         right: self.rightAnchor,
                         topConstant: 0,
                         leftConstant: 4,
                         bottomConstant: 0,
                         rightConstant: 12,
                         widthConstant: 0,
                         heightConstant: 20)
        
        usernameLabel.anchor(nameLabel.bottomAnchor,
                             left: nameLabel.leftAnchor,
                             bottom: nil,
                             right: nameLabel.rightAnchor, // anchura del elemento hacia la derecha
                             topConstant: 8, //distancia con el elemento de arriba
                             leftConstant: 0,
                             bottomConstant: 0,
                             rightConstant: 0,
                             widthConstant: 0,
                             heightConstant: 20) //anchura
        
        bioTextView.anchor(usernameLabel.bottomAnchor,
                           left: usernameLabel.leftAnchor,
                           bottom: self.bottomAnchor,
                           right: self.rightAnchor,
                           topConstant: 0,
                           leftConstant: 0,
                           bottomConstant: 0,
                           rightConstant: 0,
                           widthConstant: 0,
                           heightConstant: 0)
    }
    
}
