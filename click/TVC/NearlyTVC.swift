//
//  NearlyTVC.swift
//  click
//
//  Created by Sardor Panjiyev on 17/11/22.
//

import UIKit

class NearlyTVC: UITableViewCell {
    
   static func nib()-> UINib{
        return UINib(nibName: "NearlyTVC", bundle: nil)
    }
    
    static var id = "NearlyTVC"
    
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
