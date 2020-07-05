//
//  DelegateViewController.swift
//  ProtocolAndDelegate
//
//  Created by Kap's on 11/06/20.
//  Copyright © 2020 Kapil. All rights reserved.
//

import UIKit

protocol demoProtocol {
    func didTapOnButton(info : String)
}

class DelegateViewController: UIViewController {
    
    var delegate : demoProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()

    }
     
    @IBAction func button1Tapped(_ sender: Any) {
        delegate?.didTapOnButton(info: "Button 1 was tapped")
        dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func button2Tapped(_ sender: Any) {
        delegate?.didTapOnButton(info: "Button 2 was tapped")
        dismiss(animated: true, completion: nil)
    }
    

}
