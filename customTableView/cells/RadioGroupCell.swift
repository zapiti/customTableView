//
//  RadioGroupCell.swift
//  customTableView
//
//  Created by Nathan Ranghel on 03/11/18.
//  Copyright © 2018 Nathan Ranghel. All rights reserved.
//

import Foundation
import UIKit


class RadioGroupCell: UITableViewCell {
    
    
    var messageView : UICheckBox = {
        let tf = UICheckBox()
//        tf.placeholder = "Email"
//        tf.title = "title"
        
tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.addSubview(messageView)
        
        
        
        
        messageView.leftAnchor.constraint(equalTo: self.leftAnchor,constant : 20).isActive = true
        messageView.rightAnchor.constraint(equalTo: self.rightAnchor,constant : -20).isActive = true
        messageView.bottomAnchor.constraint(equalTo: self.bottomAnchor,constant : -10).isActive = true
        //        messageView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        //        if let message = message {
        //            messageView.text =  message
        //            messageView.isEnabled = true
        //            messageView.isUserInteractionEnabled = true
        //        }
    }
    
    func initComponent(cell:CellData){
        
        messageView.checked = true

        //messageView.isEnabled = true
       // messageView.isUserInteractionEnabled = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
}

