//
//  TableViewDM.swift
//  click
//
//  Created by Sardor Panjiyev on 17/11/22.
//

import Foundation
import UIKit
struct TableViewDM {
    
    var title : String
    var location : String
    var distance : String
    var img : String
    
    
    var image : UIImage{
        return UIImage(named: img) ?? UIImage(named: "trash")!
    }
}
