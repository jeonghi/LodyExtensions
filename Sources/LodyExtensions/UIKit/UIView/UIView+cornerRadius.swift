//
//  UIView+cornerRadius.swift
//
//  Created by Lody on 5/22/24.
//

import UIKit

public extension UIView {
  
  /// radius 적용
  func cornerRadius(corners: UIRectCorner, radius: CGFloat) {
    let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
    let mask = CAShapeLayer()
    mask.path = path.cgPath
    layer.mask = mask
    layer.masksToBounds = true
  }
}
