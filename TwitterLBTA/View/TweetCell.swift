//
//  TweetCell.swift
//  TwitterLBTA
//
//  Created by Carlo Gilmar on 29/06/18.
//  Copyright © 2018 Carlo Gilmar. All rights reserved.
//

import LBTAComponents

class TweetCell: DatasourceCell {
    
    override var datasourceItem: Any? {
        didSet{
            guard let tweet = datasourceItem as? Tweet else { return }
            messageTextView.text = tweet.message
        }
    }
    
    let messageTextView: UITextView = {
        let tv = UITextView()
        tv.text = "Example test"
        return tv
    }()
    
    let profileImageView: UIImageView = {
        let imageView = UIImageView()
        //imageView.backgroundColor = .red
        imageView.image = #imageLiteral(resourceName: "profile")
        imageView.layer.cornerRadius = 5
        imageView.clipsToBounds = true
        return imageView
    }() // Closure properties as Computed properties
    
    override func setupViews() {
        super.setupViews()
        separatorLineView.isHidden = false
        separatorLineView.backgroundColor = UIColor(r: 230, g: 230, b: 230)
        backgroundColor = .white
        
        addSubview(profileImageView)
        addSubview(messageTextView)
        
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
        messageTextView.anchor(topAnchor,
                               left: profileImageView.rightAnchor,
                               bottom: bottomAnchor,
                               right: rightAnchor,
                               topConstant: 0,
                               leftConstant: 0,
                               bottomConstant: 0,
                               rightConstant: 0,
                               widthConstant: 0,
                               heightConstant: 0)
        
    }
    
}
