//
//  NSObject+identifier.swift
//
//
//  Created by 쩡화니 on 5/22/24.
//

import UIKit

extension NSObject: ReusableID {}

protocol ReusableID {}

extension ReusableID {
  /// Reuse identifier
  static var identifier: String {
    return String(describing: self)
  }
}
