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
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Logout", style: .plain, target: self, action: #selector(handleLogout))
        
        // User is not logged in
        if Auth.auth().currentUser?.uid == nil {
            handleLogout()
        }
    }
    
    @objc func handleLogout() {
        
        do {
            try Auth.auth().signOut()
        } catch let logoutError {
            print(logoutError)
        }
        
        let loginController = LoginController()
        present(loginController, animated: true, completion: nil)
    }
}

