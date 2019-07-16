//
//  Category.swift
//  coder-swag
//
//  Created by Влад on 7/15/19.
//  Copyright © 2019 Влад. All rights reserved.
//

import Foundation

struct Category {
    private(set) public var title: String
    private(set) public var imageName: String
    
    init(title: String, imageName: String) {
        
        self.title = title
        self.imageName = imageName
    }
}
