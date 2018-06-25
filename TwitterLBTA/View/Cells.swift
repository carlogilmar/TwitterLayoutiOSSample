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
        //backgroundColor = .blue
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
                         bottomConstant: 0,
                         rightConstant: 0,
                         widthConstant: 0,
                         heightConstant: 0)
        //textLabel.fillSuperview()
        //backgroundColor = .green
    }
}

class UserCell: DatasourceCell {
    
    override var datasourceItem: Any? {
        didSet{
            // dataSourceItem = User from UserList in HomeDatasource
            print("--------------------")
            print(datasourceItem!)
            print("--------------------")
            //nameLabel.text = datasourceItem as? String
            
            // Cast the userlist using guard
            guard let user = datasourceItem as? User else { return }
            nameLabel.text = user.name
            usernameLabel.text = user.username
            bioTextView.text = user.bioText
            profileImageView.image = user.profileImage
            
        }
    }
    
    let profileImageView: UIImageView = {
        let imageView = UIImageView()
        //imageView.backgroundColor = .red
        imageView.image = #imageLiteral(resourceName: "profile")
        imageView.layer.cornerRadius = 5
        imageView.clipsToBounds = true
        return imageView
    }() // Closure properties as Computed properties
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Carlo Gilmar"
        //label.backgroundColor = .green
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    }()
    
    let usernameLabel: UILabel = {
        let label = UILabel()
        label.text = "@carlogilmar"
        //label.backgroundColor = .purple
        label.textColor = UIColor(r: 130, g: 130, b: 130)
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    }()
    
    let bioTextView: UITextView = {
        let textView = UITextView()
        //label.backgroundColor = .yellow
        textView.text = "Desarrollador de software en @makingdevs | Github Campus Expert 🚩| Me gusta hacer registros gráficos y bailar salsa cubana | IPN Programación | UNAM Sociología"
        textView.font = UIFont.systemFont(ofSize: 14)
        textView.backgroundColor = .clear
        return textView
    }()
    
    let followButton: UIButton = {
        let button = UIButton()
        let twitterBlue = UIColor(r: 61, g: 167, b: 244)
        //button.backgroundColor = .cyan
        button.layer.cornerRadius = 5
        button.layer.borderColor = twitterBlue.cgColor
        button.layer.borderWidth = 0
        button.setTitle("Follow", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.setTitleColor(twitterBlue, for: .normal)
        button.setImage(#imageLiteral(resourceName: "follow"), for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        button.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        return button
    }()
    
    override func setupViews() {
        print("UserCell setup views!")
        super.setupViews()
        
        separatorLineView.isHidden = false
        separatorLineView.backgroundColor = UIColor(r: 230, g: 230, b: 230)
        
        //backgroundColor = .yellow
        
        addSubview(profileImageView)
        addSubview(nameLabel)
        addSubview(usernameLabel)
        addSubview(bioTextView)
        addSubview(followButton)
        
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
                         right: followButton.leftAnchor,
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
                             topConstant: 0, //distancia con el elemento de arriba
                             leftConstant: 0,
                             bottomConstant: 0,
                             rightConstant: 0,
                             widthConstant: 0,
                             heightConstant: 20) //anchura
        
        bioTextView.anchor(usernameLabel.bottomAnchor,
                           left: usernameLabel.leftAnchor,
                           bottom: self.bottomAnchor,
                           right: self.rightAnchor,
                           topConstant: -4,
                           leftConstant: -4,
                           bottomConstant: 0,
                           rightConstant: 0,
                           widthConstant: 0,
                           heightConstant: 0)
        
        followButton.anchor(topAnchor,
                            left: nil,
                            bottom: nil,
                            right: self.rightAnchor,
                            topConstant: 12,
                            leftConstant: 0,
                            bottomConstant:0,
                            rightConstant: 12,
                            widthConstant: 120,
                            heightConstant: 34)
    }
    
}
