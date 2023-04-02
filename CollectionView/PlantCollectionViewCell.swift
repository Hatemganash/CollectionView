
import UIKit

class PlantCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imgPlantphoto: UIImageView!
    
    @IBOutlet weak var lblPlantPrice: UILabel!
    
    
    func setupCell (photo : UIImage , price : Double){
        imgPlantphoto.image = photo
        lblPlantPrice.text = "\(price) EGP"
    }
}
