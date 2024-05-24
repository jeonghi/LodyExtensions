//
//  UIStackView+addSubviews.swift
//
//  Created by Lody on 4/19/24.
//

import UIKit

public extension UIStackView {
  func addArrangedSubviews(_ views: [UIView]) {
    views.forEach {
      self.addArrangedSubview($0)
    }
  }
  func addArrangedSubviews(_ views: UIView...) {
    views.forEach {
      self.addArrangedSubview($0)
    }
  }
}
