//
//  ViewController.swift
//  CollectionView
//
//  Created by Hatem on 01/04/2023.
//

import UIKit

class ViewController: UIViewController , UICollectionViewDelegate , UICollectionViewDataSource , UICollectionViewDelegateFlowLayout {
    
    
    @IBOutlet weak var collectiobview: UICollectionView!
    var arrPlants = [plant]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectiobview.delegate = self
        collectiobview.dataSource = self
        
        arrPlants.append(plant(photo: UIImage(named: "Plant1")!, price:123))
        arrPlants.append(plant(photo: UIImage(named: "Plant2")!, price: 567))
        arrPlants.append(plant(photo: UIImage(named: "Plant3")!, price: 4545))
        arrPlants.append(plant(photo: UIImage(named: "Plant4")!, price: 764))
        arrPlants.append(plant(photo: UIImage(named: "Plant5")!, price: 100))
        arrPlants.append(plant(photo: UIImage(named: "Plant6")!, price: 564))
        arrPlants.append(plant(photo: UIImage(named: "Plant1")!, price:123))
        arrPlants.append(plant(photo: UIImage(named: "Plant2")!, price: 567))
        arrPlants.append(plant(photo: UIImage(named: "Plant3")!, price: 4545))
        arrPlants.append(plant(photo: UIImage(named: "Plant4")!, price: 764))
        arrPlants.append(plant(photo: UIImage(named: "Plant5")!, price: 100))
        arrPlants.append(plant(photo: UIImage(named: "Plant6")!, price: 564))
        arrPlants.append(plant(photo: UIImage(named: "Plant1")!, price:123))
        arrPlants.append(plant(photo: UIImage(named: "Plant2")!, price: 567))
        arrPlants.append(plant(photo: UIImage(named: "Plant3")!, price: 4545))
        arrPlants.append(plant(photo: UIImage(named: "Plant4")!, price: 764))
        arrPlants.append(plant(photo: UIImage(named: "Plant5")!, price: 100))
        arrPlants.append(plant(photo: UIImage(named: "Plant6")!, price: 564))
        
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrPlants.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectiobview.dequeueReusableCell(withReuseIdentifier: "plantCell", for: indexPath) as! PlantCollectionViewCell
        let plant = arrPlants[indexPath.row]
        cell.setupCell(photo: plant.photo, price: plant.price)
        cell.backgroundColor = UIColor.red
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.frame.width * 0.494, height: self.view.frame.width * 0.45 )
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0.1
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        UIEdgeInsets(top: 1 , left: 2, bottom: 1, right: 2)
    }
    
}
    struct plant {
        let photo : UIImage
        let price : Double
    }



