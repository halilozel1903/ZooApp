//
//  Animal.swift
//  ZooApp
//
//  Created by Halil Özel on 27.09.2018.
//  Copyright © 2018 Halil Özel. All rights reserved.
//

import Foundation

class Animal{
    
    var name : String?
    var desc : String?
    var image : String?
    
    init(name:String,desc:String,image:String) {
        self.name = name
        self.desc = desc
        self.image = image
    }
}
