

import UIKit

class ProductTableViewCell: UITableViewCell , UICollectionViewDelegate , UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
     
    

    @IBOutlet weak var collectionview: UICollectionView!
    @IBOutlet weak var lbltitle: UILabel!
    var arrphotos = [UIImage]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        collectionview.delegate = self
        collectionview.dataSource = self
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)


    }
    func setupCell(title : String , arrphotos :[UIImage] ){
        self.lbltitle.text = title
        self.arrphotos = arrphotos
    }
        
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return arrphotos.count
        }
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionview.dequeueReusableCell(withReuseIdentifier: "colProductcell", for: indexPath) as! ProductCollectionViewCell
            cell.imgProductPhoto.image = arrphotos[indexPath.row]
            return cell
        }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionview.frame.width * 0.3 , height: collectionview.frame.width * 0.3)
    }
    
}
