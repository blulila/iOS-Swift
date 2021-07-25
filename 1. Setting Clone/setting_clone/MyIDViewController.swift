//
//  MyIDViewController.swift
//  setting_clone
//
//  Created by mgpark on 2021/07/25.
//

import UIKit

class MyIDViewController: UIViewController {

    @IBOutlet weak var cancelButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
//        {didSet{
//            nextButton.isEnabled = false
//        }}
    @IBOutlet weak var emailTextField: UITextField!
    @IBAction func doCancel(_ sender: Any) {
        self.dismiss(animated: true, completion: nil
        )
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        nextButton.isEnabled = false
        
        emailTextField.addTarget(self, action: #selector(textFieldDidChange), for: .editingChanged)
        
        textFieldDidChange(sender: emailTextField)
    }
    
    @objc func textFieldDidChange(sender: UITextField){
        print(sender.text ?? "")
        
        if sender.text?.isEmpty == true{
            nextButton.isEnabled = false
        } else{
            nextButton.isEnabled = true
        }
    }
}
