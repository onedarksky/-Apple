//
//  ApplePrintAirpods ViewController.swift
//  鐫刻 Apple
//
//  Created by Jiang Yung Tse on 2021/11/10.
//

import UIKit

class ApplePrintAirpods_ViewController: UIViewController {
    @IBOutlet weak var TypeTextField: UITextField!
    
    @IBOutlet weak var ShowLabel: UILabel!
    
    @IBOutlet weak var WarningLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    //顯示文字到Label
    @IBAction func EditingChangedTextField(_ sender: UITextField) {
        ShowLabel.text = sender.text
        //取得字數
        WarningLabel.text = String(TypeTextField.text!.count)
        let count = Int(WarningLabel.text!)
        print(count!)
        if count! > 4{
            WarningLabel.isHidden = false
            WarningLabel.text = "你的訊息長度超出可用空間"
            //print("你的訊息長度超出可用空間")
        }
    }
    
    @IBAction func CloseKeyboardTextField(_ sender: UITextField) {
    }
    
    @IBAction func TapGestureRecognizer(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
