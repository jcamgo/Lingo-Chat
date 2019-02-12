//
//  ViewController.swift
//  Lingo Chat
//
//  Created by Jonathan Orellana on 1/28/19.
//  Copyright © 2019 jonathan orellana. All rights reserved.
//


import UIKit
import Firebase

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let ref = Database.database().reference(fromURL: "https://lingo-chat-ec628.firebaseio.com/")
//        ref.updateChildValues(["someValue": 123123])
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Logout", style: .plain, target: self, action: #selector(handleLogout))
    }
    
    @objc func handleLogout() {
        let loginController = LoginController()
        present(loginController, animated: true, completion: nil)
    }
}

