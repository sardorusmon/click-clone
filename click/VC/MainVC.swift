//
//  MainVC.swift
//  click
//
//  Created by Sardor Panjiyev on 16/11/22.
//

import UIKit
import SafariServices

class MainVC: UIViewController {
    
    
    
    @IBOutlet weak var searchBar: UIView!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var tableView: UITableView!
    
    
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
    
    var tableArr : [TableViewDM] = [
        TableViewDM(title: "Sunrise", location: "улица Саракульска,2-проезд дом 5 ", distance: "23", img: "image-1"),
        TableViewDM(title: "Ramazon market", location: "улица Саракульска,2-проезд дом 5 ", distance: "66", img: "image-2"),
        TableViewDM(title: "Osiyo meal", location: "улица Саракульска,2-проезд дом 8 ", distance: "50", img: "image-3"),
        TableViewDM(title: "Donco xleb", location: "улица Саракульска,2-проезд дом 5 ", distance: "76", img: "image-4"),
        TableViewDM(title: "Fruit market", location: "улица Саракульска,2-проезд дом 5 ", distance: "250", img: "image-5"),
        TableViewDM(title: "Octankino", location: "улица Саракульска,2-проезд дом 5 ", distance: "123", img: "image-6"),
        TableViewDM(title: "Vegetables", location: "улица Саракульска,2-проезд дом 5 ", distance: "98", img: "image-7"),
    ]
    var newArr : [TableViewDM] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpCollectionView()

    }
    
    func setUpCollectionView() {
        
        newArr = tableArr.sorted { distance1, distance2 in
            Int(distance1.distance)!<Int(distance2.distance)!
            
        }
        
        searchBar.layer.borderWidth = 2.0
        searchBar.layer.borderColor = #colorLiteral(red: 0.3912961483, green: 0.4023899734, blue: 0.4797745347, alpha: 1)
        
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(ItemCVC.nib(), forCellWithReuseIdentifier: ItemCVC.id)
        collectionView.contentInset = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
        collectionView.showsHorizontalScrollIndicator = false
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(NearlyTVC.nib(), forCellReuseIdentifier: NearlyTVC.id)
        tableView.backgroundColor = .clear
        
        
        
    }
    
}


//MARK:- UICollectionViewDelegate
extension MainVC : UICollectionViewDelegate{
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {

    }
    

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        6
    }
    
}


//MARK:- UICollectionViewDataSource
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

//MARK:- UICollectionViewDelegateFlowLayout
extension MainVC : UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
      return CGSize(width: 95 , height: 95)
        
    }
}


//MARK:- UITableViewDelegate
extension MainVC : UITableViewDelegate{
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        
        
    }
    
}


//MARK:- UITableViewDataSource
extension MainVC : UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        tableArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: NearlyTVC.id, for: indexPath) as? NearlyTVC else {return UITableViewCell()}
        cell.updateTableView(info: newArr[indexPath.row])
        return cell
    }
}
