//
//  UIButton+style.swift
//
//  Created by Lody on 5/5/24.
//

import UIKit

public extension UILabel {
  
  /// Line height 설정
  func setLineHeight(content: String, font: UIFont, height: CGFloat = 1.0) {
    let style = NSMutableParagraphStyle()
    let lineHeight = font.pointSize * height
    style.minimumLineHeight = lineHeight
    style.maximumLineHeight = lineHeight

    self.attributedText = NSAttributedString(
      string: content,
      attributes: [
        .paragraphStyle: style,
        .font: font
      ]
    )
  }
}
