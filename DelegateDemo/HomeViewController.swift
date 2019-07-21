//
//  HomeViewController.swift
//  StarterAppUsingXIB
//
//  Created by Ani Adhikary on 09/02/19.
//  Copyright © 2019 TheTechStory. All rights reserved.
//

import UIKit

// MARK: step 1 Add Protocol here
protocol HomeViewControllerDelegate: class {
    func changeBackgroundColor(_ color: UIColor)
}

class HomeViewController: UIViewController {
    
    // MARK: step 2 Create a delegate property here, don't forget to make it weak!
    weak var delegate: HomeViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "Home"
        navigationItem.hidesBackButton = true
        navigationController?.isNavigationBarHidden = false
    }

    @IBAction func logoutButtonClicked(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
    
    @IBAction func pinkButtonClicked(_ sender: UIButton) {
        view.backgroundColor = #colorLiteral(red: 1, green: 0.1857388616, blue: 0.5733950138, alpha: 1)
        // MARK: step 3 Add the delegate method call here
        delegate?.changeBackgroundColor(#colorLiteral(red: 1, green: 0.1857388616, blue: 0.5733950138, alpha: 1))
    }
    
    @IBAction func limeButtonClicked(_ sender: UIButton) {
        view.backgroundColor = #colorLiteral(red: 0.8321695924, green: 0.985483706, blue: 0.4733308554, alpha: 1)
        // MARK: step 3 Add the delegate method call here
        delegate?.changeBackgroundColor(#colorLiteral(red: 0.8321695924, green: 0.985483706, blue: 0.4733308554, alpha: 1))
    }
    
}
