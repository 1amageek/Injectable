//
//  ViewController.swift
//  Sample
//
//  Created by nori on 2017/10/02.
//  Copyright © 2017年 Stamp Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func show(_ sender: Any) {
        let viewController: InjectableViewController = InjectableViewController(with: .init(color: .green))
        self.present(viewController, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

