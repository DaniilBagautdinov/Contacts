//
//  InfoCollectionViewController.swift
//  Contacts
//
//  Created by Даниил Багаутдинов on 02.07.2021.
//

import UIKit

private let reuseIdentifier = "Cell"

class InfoViewController: UIViewController {
    
    @IBOutlet weak var personImageView: UIImageView!
    
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var surnameLabel: UILabel!
    @IBOutlet weak var workLabel: UILabel!
    @IBOutlet weak var commentLabel: UILabel!
    @IBOutlet weak var numberTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var surnameTextField: UITextField!
    @IBOutlet weak var workTextField: UITextField!
    @IBOutlet weak var commentTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func saveButton(_ sender: Any) {
        
        
    }
    
   
}
