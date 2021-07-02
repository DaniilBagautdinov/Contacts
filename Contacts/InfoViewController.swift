//
//  InfoViewController.swift
//  Contacts
//
//  Created by Даниил Багаутдинов on 02.07.2021.
//

import UIKit

protocol InfoViewControllerDelegate: AnyObject {
    func saveNewDataOfContact(_ contact: ContactCellData)
}

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
    
    
    var contact: ContactCellData?
    weak var delegate: InfoViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        numberTextField.text = contact?.number
        nameTextField.text = contact?.name
        surnameTextField.text = contact?.surname
        workTextField.text = contact?.workPlace
        commentTextView.text = contact?.comment
    }
    

    
    @IBAction func saveButton(_ sender: Any) {
        contact?.number = numberTextField.text ?? ""
        contact?.workPlace = workTextField.text ?? ""
        
        if let contact = contact{
            delegate?.saveNewDataOfContact(contact)
        }
        
//        navigationController?.popViewController(animated: true)
        dismiss(animated: true)
    }
    
}
