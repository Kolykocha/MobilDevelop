//
//  ViewController.swift
//  heroesMarvel
//
//  Created by Кирилл Балаганский on 25.10.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    let pictures = ["gwen-spider","knull", "magik", "scarlet-spider"]
    let name = ["spider gwen", "knull", "magik", "scarlet spider"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 38, height: 38))
            imageView.contentMode = .scaleAspectFit
            let image = UIImage(named: "marvel")
            imageView.image = image
            navigationItem.titleView = imageView
        
        if let layout = collectionView.collectionViewLayout as? PagingCollectionViewLayout {
            layout.itemSize = .init(width: view.frame.width - 40, height: 500)
            layout.minimumLineSpacing = 20
            layout.sectionInset = .init(top:20, left: 20, bottom:20, right:20)
            layout.scrollDirection = .horizontal
        }
        view.backgroundColor = .black
        collectionView.backgroundColor = .black
		startTimer()
    }

    func startTimer() {

        let timer =  Timer.scheduledTimer(timeInterval: 3.0, target: self, selector: #selector(self.scrollAutomatically), userInfo: nil, repeats: true)
    }


    @objc func scrollAutomatically(_ timer1: Timer) {

        if let coll  = collectionView {
            for cell in coll.visibleCells {
                let indexPath: IndexPath? = coll.indexPath(for: cell)
                if ((indexPath?.row)!  <  5 - 1){
                    let indexPath1: IndexPath?
                    indexPath1 = IndexPath.init(row: (indexPath?.row)! + 1, section: (indexPath?.section)!)

                    coll.scrollToItem(at: indexPath1!, at: .right, animated: true)
                }
                else{
                    let indexPath1: IndexPath?
                    indexPath1 = IndexPath.init(row: 0, section: (indexPath?.section)!)
                    coll.scrollToItem(at: indexPath1!, at: .left, animated: true)
                }

            }
        }
    }
}
}



extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func numberOfSections(
        in collectionView: UICollectionView
    ) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView,numberOfItemsInSection section: Int) -> Int {
        return pictures.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "heroesCell", for: indexPath) as! HeroesCollectionViewCell
        
        let  imageName = pictures[indexPath.item]
        let image = UIImage(named: imageName)
        cell.heroesImageView.image = image
        
        cell.heroesLabelView.text = name[indexPath.row]
        
        return cell
    }
    
    
}
