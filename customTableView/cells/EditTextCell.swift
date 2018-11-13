//
//  CustomCell.swift
//  customTableView
//
//  Created by Nathan Ranghel on 19/10/18.
//  Copyright © 2018 Nathan Ranghel. All rights reserved.
//

import Foundation
import UIKit

class EditTextCell: UITableViewCell {
    
    
    var messageView : EditText = {
        let tf = EditText()
        tf.placeholder = "Email"
        tf.title = "Email"
       
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
        messageView.text =  cell.message
        //messageView.isEnabled = true
      //  messageView.isUserInteractionEnabled = false
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
