//
//  ItemCVC.swift
//  click
//
//  Created by Sardor Panjiyev on 16/11/22.
//

import UIKit

class ItemCVC: UICollectionViewCell {
    
    static func nib() -> UINib{
        return UINib(nibName: "ItemCVC", bundle: nil)
    }
    static var id = "ItemCVC"
    
    @IBOutlet weak var itemImg: UIImageView!
    
    
    

    override func awakeFromNib() {
        super.awakeFromNib()

    }
    
    
    func updateColectionCell (info : ImgDM ) {
        itemImg.image = info.image
    }
    


}
