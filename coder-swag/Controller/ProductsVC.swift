//
//  ProductVC.swift
//  coder-swag
//
//  Created by Влад on 7/16/19.
//  Copyright © 2019 Влад. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController, UICollectionViewDelegate,UICollectionViewDataSource {

    
    
    @IBOutlet weak var productsCollections : UICollectionView!
    
    private(set) public var products = [Product]()
    override func viewDidLoad() {
        super.viewDidLoad()
        productsCollections.dataSource = self
        productsCollections.delegate = self
        // Do any additional setup after loading the view.
    }
    func initProducts(category: Category){
        products =  DataService.instance.getProducts(forCategoryTitle: category.title)
        navigationItem.title = category.title
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath)  as? ProductCell   {
        let product = products[indexPath.row]
        cell.updateViews(product: product)
        return cell
        }
        return ProductCell()
}
}
