//
//  SliderCell.swift
//  EsaySchoolSystem
//
//  Created by ahmedxiio on 6/4/18.
//  Copyright © 2018 ahmedxiio. All rights reserved.
//

import UIKit

class SliderCell: UICollectionViewCell {
    
    @IBOutlet weak var imge: UIImageView!
    
    var imgs = SliderImg()
    
    func config()  {
        imge.image = UIImage(named: "597065325English")
    }
    
    
}
