//
//  HomeDatasourceController+navbar.swift
//  TwitterLBTA
//
//  Created by Carlo Gilmar on 26/06/18.
//  Copyright © 2018 Carlo Gilmar. All rights reserved.
//

import UIKit

extension HomeDatasourceController{
    func setupNavigationBarItems(){
        setupRemainingNavItems()
        setupLeftNavItem()
        setupRightNavItems()
    }
    
    private func setupRemainingNavItems(){
        // center icon
        let titleImageView = UIImageView(image:#imageLiteral(resourceName: "twitter"))
        titleImageView.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        titleImageView.contentMode = .scaleAspectFit
        navigationItem.titleView = titleImageView
        
        navigationController?.navigationBar.backgroundColor = .red
        navigationController?.navigationBar.isTranslucent = false
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        
        let navBarSeparatorView = UIView()
        navBarSeparatorView.backgroundColor = UIColor(r: 230, g: 230, b: 230)
        view.addSubview(navBarSeparatorView)
        navBarSeparatorView.anchor(view.topAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0.5)
    }
    
    private func setupLeftNavItem(){
        //left button
        let followButton = UIButton(type:.system)
        followButton.setImage(UIImage(named: "follow1")?.withRenderingMode(.alwaysOriginal), for: .normal)
        followButton.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: followButton)
    }
    
    private func setupRightNavItems(){
        //right buttons
        let findButton = UIButton(type: .system)
        findButton.setImage(UIImage(named: "search")?.withRenderingMode(.alwaysOriginal), for: .normal)
        findButton.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        
        let writteButton = UIButton(type: .system)
        writteButton.setImage(UIImage(named: "compose")?.withRenderingMode(.alwaysOriginal), for: .normal)
        writteButton.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        
        navigationItem.rightBarButtonItems = [ UIBarButtonItem(customView: findButton),
                                               UIBarButtonItem(customView: writteButton)]
        
        //setting up the background color
        navigationController?.navigationBar.backgroundColor = .white
        navigationController?.navigationBar.isTranslucent = false
    }
    
}
