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
            nameLabel.text = datasourceItem as? String
        }
    }
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "helloooo!!!"
        return label
    }()
    
    override func setupViews() {
        print("UserCell setup views!")
        super.setupViews()
        backgroundColor = .yellow
        addSubview(nameLabel)
        nameLabel.anchor(topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
    }
}
