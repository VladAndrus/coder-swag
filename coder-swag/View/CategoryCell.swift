//
//  CategoryCell.swift
//  coder-swag
//
//  Created by Влад on 7/15/19.
//  Copyright © 2019 Влад. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    @IBOutlet weak var  categoryImage : UIImageView!
    @IBOutlet weak var categoryTitle : UILabel!

    func updateViews(category: Category){
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }

}
