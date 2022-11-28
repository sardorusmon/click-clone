//
//  ShowMoreTVC.swift
//  click
//
//  Created by Sardor Panjiyev on 28/11/22.
//

import UIKit

class ShowMoreTVC: UITableViewCell {
    
   static func nib()-> UINib{
        return UINib(nibName: "ShowMoreTVC", bundle: nil)
    }
    
    static var id = "ShowMoreTVC"
    
    @IBOutlet weak var locationLbl: UILabel!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var cellImg: UIImageView!
    @IBOutlet weak var distanceLbl: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()


    }
    
    
    func updateTableView(info : TableViewDM){
        locationLbl.text = info.location
        titleLbl.text = info.title
        distanceLbl.text = info.distance
        cellImg.image = info.image
        
    }
    
    
    
    
    
}
