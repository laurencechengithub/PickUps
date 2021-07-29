//
//  PropertyWrapper.swift
//  PickUps
//
//  Created by Laurence Chen on 2021/7/29.
//

import Foundation
import UIKit

@propertyWrapper
struct UsesAutoConstraints<T:UIView> {
    
    var wrappedValue:T {
        didSet{
            wrappedValue.translatesAutoresizingMaskIntoConstraints = false
        }
    }
    
    init(wrappedValue: T) {
        self.wrappedValue = wrappedValue
        wrappedValue.translatesAutoresizingMaskIntoConstraints = false
    }
}

@propertyWrapper struct UIimageViewWithContentMode {
    
    @UsesAutoConstraints private var img: UIImageView
        
    init(imgName:String, contentMode:UIImageView.ContentMode = .scaleAspectFit) {
        
        self.img.image = UIImage(named: imgName)
        self.img.contentMode = contentMode
        
    }
    
    var wrappedValue: UIImageView {
        return img
    }
    
}
