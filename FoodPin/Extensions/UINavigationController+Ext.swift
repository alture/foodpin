//
//  UINavigationController+Ext.swift
//  FoodPin
//
//  Created by Redemax on 2/18/19.
//  Copyright © 2019 Alisher Altore. All rights reserved.
//

import Foundation
import UIKit

extension UINavigationController {
    open override var childForStatusBarStyle: UIViewController? {
        return topViewController
    }
}
