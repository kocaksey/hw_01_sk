//
//  SecondViewController.swift
//  homework2
//
//  Created by Seyhun Koçak on 30.05.2022.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    public var completionHandler: ((String?)-> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    
    @IBAction func didTapSave(_ sender: Any) {
        
        completionHandler?(textField.text)
        
        dismiss(animated: true, completion: nil)
    }
    
    

}
