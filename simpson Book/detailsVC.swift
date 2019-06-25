//
//  detailsVC.swift
//  simpson Book
//
//  Created by İzzet Kara on 25.06.2019.
//  Copyright © 2019 Izzet Kara. All rights reserved.
//

import UIKit

class detailsVC: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var occupationLabel: UILabel!
    
    var selectedSimpson = Simpsons()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = selectedSimpson.name
        occupationLabel.text = selectedSimpson.occupation
        imageView.image = selectedSimpson.image

        // Do any additional setup after loading the view.
    }
    

    

}
