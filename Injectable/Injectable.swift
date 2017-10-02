//
//  Injectable.swift
//  Injectable
//
//  Created by nori on 2017/10/02.
//  Copyright © 2017年 Stamp Inc. All rights reserved.
//

import Foundation

public protocol Injectable {
    associatedtype Dependency = Void
    func inject(_ dependency: Dependency)
}

public extension Injectable where Dependency == Void {
    func inject(_ dependency: Dependency) { }
}
