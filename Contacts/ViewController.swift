//
//  ViewController.swift
//  Contacts
//
//  Created by Даниил Багаутдинов on 01.07.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var helloLabel: UILabel!
    
    @IBOutlet weak var usernameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    let username = "admin"
    let password = "admin"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.backBarButtonItem = UIBarButtonItem(title:"", style:.plain, target:nil, action:nil)
    }
    
    
    @IBAction func signInAction(_ sender: Any) {
        if usernameTextField.text == username, passwordTextField.text == password{
            guard let contactsViewController = storyboard?.instantiateViewController(withIdentifier: "ContactsViewController") as? ContactsViewController else {return}
            
            navigationController?.pushViewController(contactsViewController, animated: true)
        }else{
            helloLabel.text = "ERROR"
        }
    }
}

