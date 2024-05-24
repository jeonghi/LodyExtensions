//
//  UIEdgeInsets.swift
//
//  Created by Lody on 4/29/24.
//

import UIKit

public extension UIEdgeInsets {
  init(horizontal: CGFloat = 0.f, vertical: CGFloat = 0.f) {
    self.init(top: vertical, left: horizontal, bottom: vertical, right: horizontal)
  }
}
