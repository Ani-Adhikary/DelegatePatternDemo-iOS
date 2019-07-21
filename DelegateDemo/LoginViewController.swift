//
//  LoginViewController.swift
//  StarterAppUsingXIB
//
//  Created by Ani Adhikary on 09/02/19.
//  Copyright © 2019 TheTechStory. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.isNavigationBarHidden = true
        navigationItem.title = "Login"
    }
    
    //Hiding the nav bar when popped from HomeVC
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }

    @IBAction func loginButtonClicked(_ sender: UIButton) {
        //MARK: step 5 create a reference of Class B
        let homeVC = HomeViewController()
        homeVC.delegate = self
        navigationController?.pushViewController(homeVC, animated: true)
    }

}

// MARK: step 4 adopt the protocol here
extension LoginViewController: HomeViewControllerDelegate {
    // MARK: step 6 finally use the method of the contract here
    func changeBackgroundColor(_ color: UIColor) {
        view.backgroundColor = color
    }
    
}
