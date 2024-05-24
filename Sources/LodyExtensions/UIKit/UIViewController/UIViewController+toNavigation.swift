//
//  UIViewController+toNavigation.swift
//
//  Created by Lody on 4/27/24.
//

import UIKit

public extension UIViewController {
  
  /// 네비게이션 컨트롤러로 wrapping
  func wrapToNavigaiton() -> UIViewController {
    UINavigationController(rootViewController: self)
  }
}
