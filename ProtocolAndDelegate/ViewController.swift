//
//  ViewController.swift
//  ProtocolAndDelegate
//
//  Created by Kap's on 11/06/20.
//  Copyright © 2020 Kapil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var buttonInfoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.buttonInfoLabel.isHidden = true
    }

    @IBAction func chooseButtonTapped(_ sender: Any) {
        
        let delegateVC = (storyboard?.instantiateViewController(withIdentifier: "DelegateViewController"))! as! DelegateViewController
        delegateVC.delegate = self
        present(delegateVC, animated: true, completion: nil)
    }
    
}

extension ViewController : demoProtocol {
    func didTapOnButton(info: String) {
        self.buttonInfoLabel.text = info
        self.buttonInfoLabel.isHidden = false
    }
}

