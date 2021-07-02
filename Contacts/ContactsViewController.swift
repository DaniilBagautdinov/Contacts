//
//  ContactsViewController.swift
//  Contacts
//
//  Created by Даниил Багаутдинов on 01.07.2021.
//

import UIKit

class ContactsViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var data: [ContactCellData] = [ContactCellData(name: "William", surname: "Faulkner", workPlace: "Doctor", number: "+731248712", comment: "Aaaaaaa"),ContactCellData(name: "John", surname: "Grisman", workPlace: "Doctor", number: "+72148173", comment: "Aaaaaaa"),ContactCellData(name: "Edith", surname: "Wharton", workPlace: "Doctor", number: "+79213232", comment: "Aaaaaaa"),ContactCellData(name: "John", surname: "Steinbeck", workPlace: "Doctor", number: "+71324234", comment: "Aaaaaaa"),ContactCellData(name: "Georgette", surname: "Heyer", workPlace: "Doctor", number: "+79393993", comment: "Aaaaaaa"),ContactCellData(name: "Philip", surname: "Reeve", workPlace: "Doctor", number: "+70033333", comment: "Aaaaaaa"),ContactCellData(name: "Maya", surname: "Angelou", workPlace: "Doctor", number: "+212342134", comment: "Aaaaaaa"),ContactCellData(name: "Daniil", surname: "Kabusta", workPlace: "Doctor", number: "+79872625413", comment: "Aaaaaaa"),ContactCellData(name: "Fuki", surname: "Alan", workPlace: "Doctor", number: "+6328147312", comment: "Aaaaaaa"),ContactCellData(name: "Naruto", surname: "Utzumaki", workPlace: "Doctor", number: "+0000000000", comment: "Aaaaaaa"),]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.reloadData()
    }
}

extension ContactsViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        70
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        guard let infoViewController = storyboard?.instantiateViewController(withIdentifier: "InfoViewController") as? InfoViewController else {return}
        
        infoViewController.delegate = self
        infoViewController.contact = data[indexPath.row]
//        navigationController?.pushViewController(infoViewController, animated: true)
        
        present(infoViewController, animated: true)
    }
}

extension ContactsViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ContactTableViewCell", for: indexPath) as? ContactTableViewCell else {return UITableViewCell()}
        cell.setData(contact: data[indexPath.row])
        return cell
    }
    
    
}

extension ContactsViewController: InfoViewControllerDelegate{
    func saveNewDataOfContact(_ contact: ContactCellData) {
        if let index = data.firstIndex(where:  { element in
            return element.name == contact.name && element.surname == contact.surname
        }){
            data[index] = contact
        }
        viewDidLoad()
    }
}
struct ContactCellData{
    let name: String
    let surname: String
    var workPlace: String
    var number: String
    var comment: String
}
