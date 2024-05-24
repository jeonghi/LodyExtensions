//
//  UIView+Ex.swift
//
//  Created by Lody on 4/17/24.
//

import UIKit

public extension UIView {
  
  func addSubviews(_ views: [UIView]){
    views.forEach {
      self.addSubview($0)
    }
  }
  func addSubviews(_ views: UIView...) {
    views.forEach {
      self.addSubview($0)
    }
  }
}

public extension Array where Element: UIView {
  func addSubViews(_ parentView: UIView) {
    self.forEach {
      parentView.addSubview($0)
    }
  }
}
