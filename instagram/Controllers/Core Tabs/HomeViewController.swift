//
//  ViewController.swift
//  instagram
//
//  Created by Anh Dinh on 12/7/20.
//

import FirebaseAuth
import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        handleNotAuthenticated()
    }
    
    private func handleNotAuthenticated(){
        // Check auth status
        // if the user is not signed in
        if Auth.auth().currentUser == nil {
            // show loginViewController, set up the screen by codes.
            let loginVC = LoginViewController()
            loginVC.modalPresentationStyle = .fullScreen
            present(loginVC, animated: false)
        }
    }

}

