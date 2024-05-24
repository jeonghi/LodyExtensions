//
//  UIViewController+addChild.swift
//
//  Created by Lody on 4/17/24.
//

import UIKit

public extension UIViewController {
  
  /// 자식 ViewController로 추가
  func add(child: UIViewController, container: UIView) {
    addChild(child)
    child.view.frame = container.bounds
    container.addSubview(child.view)
    child.didMove(toParent: self)
  }
  
  /// 부모 ViewController로 부터 독립
  func remove() {
    guard parent != nil else {
      return
    }
    willMove(toParent: nil)
    removeFromParent()
    view.removeFromSuperview()
  }
}
