//
//  CustomCell2.swift
//  customTableView
//
//  Created by Nathan Ranghel on 02/11/18.
//  Copyright © 2018 Nathan Ranghel. All rights reserved.
//

import Foundation
import UIKit

class SwitchCell: UITableViewCell {
    
    
    var genValue : UISwitch = {
        let tf = UISwitch()
       // tf.textInputMode = "Email"
    
        
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    var genTitle : UITextView = {
        let tf = UITextView()
        tf.font = UIFont.systemFont(ofSize : 16)
        tf.textColor = UIColor.gray
        
        
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.addSubview(genValue)
             self.addSubview(genTitle)
        
        genTitle.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        genTitle.rightAnchor.constraint(equalTo: self.genValue.leftAnchor).isActive = true
        genTitle.bottomAnchor.constraint(equalTo: self.bottomAnchor,constant : -10).isActive = true
        genTitle.leftAnchor.constraint(equalTo: self.leftAnchor,constant : 20).isActive = true
        
        genValue.rightAnchor.constraint(equalTo: self.rightAnchor,constant : -20).isActive = true
        genValue.bottomAnchor.constraint(equalTo: self.bottomAnchor,constant : -10).isActive = true
    
        
    }
    

    func initComponent(cell:CellData){
      genTitle.text =  cell.message
  
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
