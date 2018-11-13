//
//  UIRadioButton.swift
//  customTableView
//
//  Created by Nathan Ranghel on 03/11/18.
//  Copyright © 2018 Nathan Ranghel. All rights reserved.
//

import UIKit

@IBDesignable
public class UIRadioButton: UIControl {
    
    // MARK: Inspectables
    
    @IBInspectable var color: UIColor = UIColor.orange
    @IBInspectable override public var isSelected: Bool {
        didSet {
            setNeedsDisplay()
            sendActions(for: .valueChanged)
        }
    }
    
    
    // ==================================================
    
    
    // MARK: initialization
    override init(frame: CGRect) {
        super.init(frame: frame)
        construct()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        construct()
    }
    
    override public func awakeFromNib() {
        super.awakeFromNib()
        construct()
    }
    
    override public func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        construct()
    }
    
    //    init(color: UIColor, selected: Bool){
    //        self.selected = selected
    //        tintColor     = color
    //    }
    
    func construct() {
        tintColor = color
        backgroundColor = UIColor.clear
    }
    
    // ==================================================
    
    
    // MARK: Interaction logic
    var group: UIRadioButtonGroup?
    
     public func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        if let _ = group {
            group!.select(radioButton: self)
        } else {
            toggleSelected()
        }
    }
    
    func toggleSelected() {
        isSelected = !isSelected
    }
    
    
    
    // ==================================================
    
    // MARK: The Magic
    override public func draw(_ rect: CGRect) {
        
        // draw the outer ring
        var margin = CGFloat(2)
        
        let radio = UIBezierPath(ovalIn: rect.insetBy(dx: margin, dy: margin))
        color.setStroke()
        radio.lineWidth = 2.0
        radio.stroke()
        
        // draw the inner hole
        if isSelected {
            margin = CGFloat(6)
            
            let button = UIBezierPath(ovalIn: rect.insetBy(dx: margin, dy: margin))
            color.setFill()
            button.fill()
        }
    }
}
