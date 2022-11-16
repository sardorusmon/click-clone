//
//  InfoDM.swift
//  click
//
//  Created by Sardor Panjiyev on 16/11/22.
//

import Foundation
import UIKit

struct ImgDM {
    var img : String
    var image : UIImage {
        return UIImage(named: img) ?? UIImage(named: "trash")!
    }
}
