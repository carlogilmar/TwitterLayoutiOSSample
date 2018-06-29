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

    let textLabel: UILabel = {
        let label = UILabel()
        label.text = "W H O  T O  F O L L O W"
        label.font = UIFont.systemFont(ofSize: 16)
        return label
    }()

    override func setupViews() {
        super.setupViews()
        separatorLineView.isHidden = false
        separatorLineView.backgroundColor = UIColor(r: 230, g: 230, b: 230)
        addSubview(textLabel)
        
        textLabel.anchor(topAnchor,
                         left: leftAnchor,
                         bottom: bottomAnchor,
                         right: rightAnchor,
                         topConstant: 0,
                         leftConstant: 20,
                         bottomConstant: 0,
                         rightConstant: 0,
                         widthConstant: 0,
                         heightConstant: 0)
        backgroundColor = .white
        //textLabel.fillSuperview()
    }
}

class UserFooter: DatasourceCell{
    
    let textLabel: UILabel = {
        let label = UILabel()
        label.text = "Show me more ..."
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    
    override func setupViews() {
        super.setupViews()
        addSubview(textLabel)
        textLabel.anchor(topAnchor,
                         left: leftAnchor,
                         bottom: bottomAnchor,
                         right: rightAnchor,
                         topConstant: 0,
                         leftConstant: 12,
                         bottomConstant: 14,
                         rightConstant: 0,
                         widthConstant: 0,
                         heightConstant: 0)
        //textLabel.fillSuperview()
        //backgroundColor = .white
    }
}
