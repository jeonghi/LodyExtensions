//
//  Collection+Ex.swift
//
//  Created by Lody on 5/8/24.
//

import Foundation

public extension Collection where Element: Hashable {
  func uniqued() -> [Element] {
    let unique = Set(self)
    return Array(unique)
  }
  
  subscript (safe index: Index) -> Element? {
    return indices.contains(index) ? self[index] : nil
  }
}
