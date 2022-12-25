//
//  ViewController.swift
//  homework2
//
//  Created by Seyhun Koçak on 29.05.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    var balance = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func depositButtonClicked(){
        let vc = storyboard?.instantiateViewController(withIdentifier: "secondVC") as! SecondViewController
        vc.modalPresentationStyle = .fullScreen
        vc.completionHandler = {text in
            self.balance = Int(text!)! + self.balance
            self.label.text = String(self.balance)
            
            
            
        }
        present(vc, animated: true)
    }


    @IBAction func withdrawButtonClicked(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "secondVC") as! SecondViewController
        vc.modalPresentationStyle = .fullScreen
        vc.completionHandler = {text in
            self.balance =  self.balance - Int(text!)!
            self.label.text = String(self.balance)
            
            
            
        }
        present(vc, animated: true)
    }
}

