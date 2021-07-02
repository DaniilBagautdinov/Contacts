//
//  ContactTableViewCell.swift
//  Contacts
//
//  Created by Даниил Багаутдинов on 01.07.2021.
//

import UIKit

class ContactTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setData(contact: ContactCellData) {
        nameLabel.text = contact.name
        numberLabel.text = contact.number
    }
    
}
