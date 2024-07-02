//
//  Array+Ex.swift
//
//
//  Created by 쩡화니 on 7/2/24.
//

import Foundation

public extension Array where Element: Equatable {
  /// 조건에 해당하는 요소가 없을 때만 추가
  mutating func appendIfNotExist(_ element: Element) {
    if !self.contains(element) {
      self.append(element)
    }
  }
  
  /// 조건에 맞는 요소를 찾아 제거하고 맨 뒤로 이동
  mutating func popToBack(_ element: Element) {
    if let index = self.firstIndex(of: element) {
      self.remove(at: index)
    }
    self.append(element)
  }
}
