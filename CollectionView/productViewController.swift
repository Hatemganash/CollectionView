

import UIKit

class productViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
    
    @IBOutlet weak var tableview: UITableView!
    var arrProduct = [Product]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.dataSource = self
        tableview.delegate = self
        
        arrProduct.append(Product(title: "Top Rated", photo: [UIImage(named: "Plant1")!,UIImage(named: "Plant2")!,UIImage(named: "Plant3")!]))
        arrProduct.append(Product(title: "Home", photo: [UIImage(named: "Plant5")!,UIImage(named: "Plant4")!,UIImage(named: "Plant3")!,UIImage(named: "Plant1")!,UIImage(named: "Plant2")!,UIImage(named: "Plant3")!]))
        arrProduct.append(Product(title: "Office", photo: [UIImage(named: "Plant6")!,UIImage(named: "Plant2")!,UIImage(named: "Plant3")!]))
        arrProduct.append(Product(title: "Offers", photo: [UIImage(named: "Plant5")!,UIImage(named: "Plant1")!,UIImage(named: "Plant4")!,UIImage(named: "Plant1")!,UIImage(named: "Plant2")!,UIImage(named: "Plant3")!]))
        
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrProduct.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: "tblProductCell", for: indexPath) as! ProductTableViewCell
        let product = arrProduct[indexPath.row]
        cell.setupCell(title: product.title, arrphotos: product.photo)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
}
struct Product {
    let title : String
    let photo : [UIImage]
}
