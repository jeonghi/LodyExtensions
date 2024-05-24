//
//  Int+Ex.swift
//
//  Created by Lody on 4/27/24.
//

import Foundation

public extension Int {
  /// CGFloat으로 형변환
  var f: CGFloat {
    return CGFloat(self)
  }
  
  /// CGSize으로 형변환
  var sz: CGSize {
    return CGSize(width: self, height: self)
  }
}
