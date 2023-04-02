

import UIKit

class PhotosViewController: UIViewController , UICollectionViewDelegate , UICollectionViewDataSource ,UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var collectionview: UICollectionView!
    var arrPhotos = [Photo]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        arrPhotos.append(Photo(name: "2018", photos: [UIImage(named: "Plant1")!,UIImage(named: "Plant5")!,UIImage(named: "Plant4")!]))
        arrPhotos.append(Photo(name: "2020", photos: [UIImage(named: "Plant2")!,UIImage(named: "Plant3")!,UIImage(named: "Plant6")!]))
        arrPhotos.append(Photo(name: "2022", photos: [UIImage(named: "Plant5")!,UIImage(named: "Plant3")!,UIImage(named: "Plant4")!]))


        collectionview.delegate = self
        collectionview.dataSource = self
     
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return arrPhotos.count
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrPhotos[section].photos.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionview.dequeueReusableCell(withReuseIdentifier: "PhotosCell", for: indexPath) as! PhotosCollectionViewCell
        cell.imgPlacephoto.image = arrPhotos[indexPath.section].photos[indexPath.row]
        return cell
        
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionview.frame.width * 0.3 , height: collectionview.frame.width * 0.3 )
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header = collectionview.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "PhotosHeader", for: indexPath) as! PhotosCollectionReusableView
        header.lblHeadertitle.text = arrPhotos[indexPath.section].name
        header.backgroundColor = UIColor.brown
        
        return header
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: collectionview.frame.width, height: 30)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0.1
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 1, left: 2, bottom: 1, right: 2)
    }
}
struct Photo {
    let name : String
    let photos : [UIImage]
}
