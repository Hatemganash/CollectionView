//
//  PlantCollectionViewCell.swift
//  CollectionView
//
//  Created by Hatem on 01/04/2023.
//

import UIKit

class PlantCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imgPlantphoto: UIImageView!
    
    @IBOutlet weak var lblPlantPrice: UILabel!
    
    
    func setupCell (photo : UIImage , price : Double){
        imgPlantphoto.image = photo
        lblPlantPrice.text = "\(price) EGP"
    }
}
