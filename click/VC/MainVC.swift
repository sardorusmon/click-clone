//
//  MainVC.swift
//  click
//
//  Created by Sardor Panjiyev on 16/11/22.
//

import UIKit

class MainVC: UIViewController {
    
    @IBOutlet weak var searchBar: UIView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    var imgArr : [ImgDM] = [
        ImgDM(img: "image-1"),
        ImgDM(img: "image-2"),
        ImgDM(img: "image-3"),
        ImgDM(img: "image-4"),
        ImgDM(img: "image-5"),
        ImgDM(img: "image-6"),
        ImgDM(img: "image-7"),
        ImgDM(img: "image-2"),
        ImgDM(img: "image-1"),
    
    
    ]
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpCollectionView()

    }
    
    func setUpCollectionView() {
        searchBar.layer.borderWidth = 2.0
        searchBar.layer.borderColor = #colorLiteral(red: 0.3912961483, green: 0.4023899734, blue: 0.4797745347, alpha: 1)
        
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(ItemCVC.nib(), forCellWithReuseIdentifier: ItemCVC.id)
        
        
    }
    
    
    
    @IBAction func humburgerTapped(_ sender: Any) {
        
        self.dismiss(animated: true)
    }
    

    
    
    
    
}

extension MainVC : UICollectionViewDelegate{
    
    
}

extension MainVC : UICollectionViewDataSource{
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        imgArr.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ItemCVC.id, for: indexPath) as? ItemCVC else {return UICollectionViewCell()}
        cell.updateColectionCell(info: imgArr[indexPath.row])
        return cell
    }
    
    
    
    
    
}
