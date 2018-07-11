//
//  searchCustomerViewController.swift
//  App
//
//  Created by mscoding on 7/10/18.
//  Copyright © 2018 mscoding. All rights reserved.
//

import UIKit

class searchCustomerViewController: UITableViewController {

    var contacts: [Contact] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let ruben = Contact(name: "Ruben", phoneNumber: "(444) 444 - 4444", address: "123 Apple Street" )
        contacts.append(ruben)
        tableView.reloadData()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: Source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return contacts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UItableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "ContactCell", for: indexPath)
        
        let contact = contacts[indexPath.row]
        
        cell.textLabel?.text = contact.name
        cell.detailTextLabel?.text = contact.name
        return cell
    }
    
  
}
