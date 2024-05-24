//
//  String+Ex.swift
//
//  Created by Lody on 4/24/24.
//

import Foundation

public extension String {
  /// URL로 변환
  func toURL() -> URL? {
    URL(string: self)
  }
}
