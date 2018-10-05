//
//  ProductDataViewController.swift
//  shop1
//
//  Created by Usuario invitado on 4/10/18.
//  Copyright © 2018 Usuario invitado. All rights reserved.
//

import UIKit

class ProductDataViewController: UIViewController {
    
    @IBOutlet weak var DESC: UILabel!
    @IBOutlet weak var NAME: UILabel!
    @IBOutlet weak var PRICE: UILabel!
   
    @IBOutlet weak var IMAGE: UIImageView!
    
    var product: Campo!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        DESC.text = product.Desc
        NAME.text = product.Name
        PRICE.text = product.Price
        IMAGE.image = product.Image
        
    }


}
