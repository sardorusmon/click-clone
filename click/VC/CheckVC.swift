//
//  CheckVC.swift
//  click
//
//  Created by Sardor Panjiyev on 16/11/22.
//

import UIKit

class CheckVC: UIViewController {
    
 
    @IBOutlet weak var passwordLbl: UILabel!
    @IBOutlet weak var infoLbl: UILabel!
    @IBOutlet weak var deleteBtn: UIButton!
    @IBOutlet var numbersArr: [UIButton]!
    @IBOutlet weak var eyeBtn: UIButton!
    
    
    var count = 0
    var cod = ""
    var oldcode = 12345
    var alert = 4
    var str_ = "_  "
    var strStar = "*  "
    
    override func viewDidLoad() {
        super.viewDidLoad()
        infoLbl.isHidden = true
        deleteBtn.isEnabled = false
    }
    
    @IBAction func numberstapped(_ sender: UIButton) {
        cod += "\(sender.tag)"
        count+=1
        passwordLbl.text = String(repeating: strStar, count: count)+String(repeating: str_, count: 5-count)
        
        check()
}
    @IBAction func deleteTapped(_ sender: Any) {
        cod.removeLast()
        passwordLbl.text = String(repeating: strStar, count: count-1)+String(repeating: str_, count: 5-count+1)
        count-=1
        deleteBtn.isEnabled = count > 0
    }
    @IBAction func hideTapped(_ sender: UIButton) {
        var txt = ""
        for i in cod {
            txt += String(i)+"  "
        }
        passwordLbl.text = txt
        
//        sender.setImage(UIImage(named: "eye"), for: .normal)
//        eyeBtn.setImage(UIImage(named: "eye"), for: .normal)
        
    }
    
    func check(){
        deleteBtn.isEnabled = true
        if count == 5 && (Int(cod) == oldcode) {
            let vc = MainVC(nibName: "MainVC", bundle: nil)
            let navVC = UINavigationController(rootViewController: vc)
            navVC.modalPresentationStyle = .fullScreen
//            navVC.navigationBar.prefersLargeTitles = false
            self.present(navVC, animated: true)
        }
        else if count == 5 {
            passwordLbl.text = String(repeating: str_, count: 5)

            deleteBtn.isEnabled = false
            infoLbl.isHidden = false
            infoLbl.text = "?????????????? ???????????? CLICK-PIN, ???????????????????? ?????????????????? ????????. ???????????????? ??????????????: \(alert)"
            count = 0
            cod = ""
            alert-=1
            if alert < 0 {
                for i in numbersArr.enumerated() { numbersArr[i.offset].isEnabled = false }
                deleteBtn.isEnabled = false
            
        }
    }
        
        
    }
}

