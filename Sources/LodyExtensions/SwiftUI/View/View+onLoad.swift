//
//  View+onLoad.swift
//
//
//  Created by 쩡화니 on 5/22/24.
//

import SwiftUI

public extension View {
  
  /// View의 Load시점을 감지하는 메서드
  /// - Parameter action: closure
  func onLoad(perform action: (() -> Void)? = nil) -> some View {
    modifier(ViewDidLoadModifier(perform: action))
  }
}

/// View의 Load시점을 감지하는 ViewModifier
private struct ViewDidLoadModifier: ViewModifier {
  @State private var didLoad = false
  private let action: (() -> Void)?
  
  init(perform action: (() -> Void)? = nil) {
    self.action = action
  }
  
  func body(content: Content) -> some View {
    content.onAppear {
      if didLoad == false {
        didLoad = true
        action?()
      }
    }
  }
}
