//
//  UIViewX.swift
//  CPR Simulator Project
//
//  Created by chimdolin on 16/10/2560 BE.
//  Copyright © 2560 chimdolin. All rights reserved.
//

import UIKit

@IBDesignable
class UIViewX: UIView {

    @IBInspectable var firstColor : UIColor = UIColor.white {
        didSet {
            updateView()
        }
    }
    
    @IBInspectable var secondColor : UIColor = UIColor.white {
        didSet {
            updateView()
        }
    }
    
    @IBInspectable var horizontalGradient : Bool = false {
        didSet {
            updateView()
        }
    }
    
    override class var layerClass : AnyClass {
        get {
            return CAGradientLayer.self
        }
    }
    
    func updateView() {
        let layer = self.layer as! CAGradientLayer
        layer.colors = [ firstColor.cgColor, secondColor.cgColor ]
        
        if horizontalGradient {
            layer.startPoint = CGPoint(x: 0.0 ,y: 0.5)
            layer.endPoint = CGPoint(x:1.0 ,y:0.5 )
        } else {
            layer.startPoint = CGPoint(x: 0,y: 0)
            layer.endPoint = CGPoint(x:0 ,y:1 )
        }
    }

}
