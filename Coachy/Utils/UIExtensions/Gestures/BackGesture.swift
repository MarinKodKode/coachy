//
//  BackGesture.swift
//  Coachy
//
//  Created by Manuel Alejandro Hernandez Marín on 20/02/25.
//

import Foundation
import UIKit

extension UINavigationController: @retroactive UIGestureRecognizerDelegate {
    
    override open func viewDidLoad() {
        super.viewDidLoad()
        interactivePopGestureRecognizer?.delegate = self
    }
    
    public func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        return viewControllers.count > 1
        
    }
}
