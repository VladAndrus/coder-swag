//
//  Product.swift
//  coder-swag
//
//  Created by Влад on 7/16/19.
//  Copyright © 2019 Влад. All rights reserved.
//

import Foundation

struct Product{
    private(set) public var title: String
    private(set) public var price: String
    private(set) public var imageName: String
    
    init(title: String, price: String, imageName: String) {
        self.title = title
        self.imageName = imageName
        self.price = price
    }
}
