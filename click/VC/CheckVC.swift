//
//  CheckVC.swift
//  click
//
//  Created by Sardor Panjiyev on 16/11/22.
//

import UIKit

class CheckVC: UIViewController {
    
 
    @IBOutlet var numbersBtn: [UILabel]!
    @IBOutlet weak var infoLbl: UILabel!
    @IBOutlet weak var deleteBtn: UIButton!
    @IBOutlet var numbersArr: [UIButton]!
    var count = 0
    var cod = ""
    var oldcode = 12345
    var alert = 4
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        infoLbl.isHidden = true
        deleteBtn.isEnabled = false
    }
    
    
    @IBAction func numberstapped(_ sender: UIButton) {
        deleteBtn.isEnabled = true
        numbersBtn[count].text = "*"
        cod += "\(sender.tag)"
        print(cod)
        count+=1
        if count == 5 && (Int(cod) == oldcode) {
            let vc = MainVC(nibName: "MainVC", bundle: nil)
            vc.modalPresentationStyle = .fullScreen
            self.present(vc, animated: true)
        }
        else if count == 5 {
            for i in numbersBtn.enumerated(){ numbersBtn[i.offset].text = "_" }
            deleteBtn.isEnabled = false
            infoLbl.isHidden = false
            infoLbl.text = "Неверно набран CLICK-PIN, пожалуйста повторите ввод. Осталось попыток: \(alert)"
            count = 0
            cod = ""
            alert-=1
            if alert < 0 {
                for i in numbersArr.enumerated() { numbersArr[i.offset].isEnabled = false }
                deleteBtn.isEnabled = false
            
        }
    }
}
    
    @IBAction func deleteTapped(_ sender: Any) {
        
        for _ in 0...numbersBtn.count {
            numbersBtn[count-1].text = "_"
        }
        count-=1
        deleteBtn.isEnabled = count > 0
    }
    
    
    

}
