//
//  UIViewControllerExtensions.swift
//
//  Copyright © 2019 Johnson & Johnson
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

import UIKit

extension UIViewController {
    
    /// Instantiates view controller from Pod bundle. The view controller that is being instantiated **must** have the same name as its storyboard ID.
    static func instantiateFromStoryboard<T: UIViewController>() -> T {
        
        let viewControllerName = String(describing: T.self)
        let storyboard = UIStoryboard(name: viewControllerName, bundle: .resource)
        
        let viewController = storyboard.instantiateViewController(withIdentifier: viewControllerName) as! T
        
        return viewController
    }
}
