//
//  InjectableViewController.swift
//  Sample
//
//  Created by nori on 2017/10/02.
//  Copyright © 2017年 Stamp Inc. All rights reserved.
//

import UIKit

protocol Colorable: Injectable {
    init(with dependency: Dependency)
}

class InjectableViewController: UIViewController, Colorable {

    required init(with dependency: InjectableViewController.Dependency) {
        super.init(nibName: nil, bundle: nil)
        self.inject(dependency)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    struct Dependency {
        var color: UIColor
    }

    func inject(_ dependency: InjectableViewController.Dependency) {
        self.view.backgroundColor = dependency.color
    }
}
