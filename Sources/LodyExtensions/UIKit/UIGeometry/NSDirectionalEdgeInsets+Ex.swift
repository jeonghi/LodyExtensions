//
//  NSDirectionalEdgeInsets+Ex.swift

//
//  Created by Lody on 4/29/24.
//

import UIKit

public extension NSDirectionalEdgeInsets {
  init(horizontal: CGFloat = 0.f, vertical: CGFloat = 0.f) {
    self.init(
      top: vertical,
      leading: horizontal,
      bottom: vertical,
      trailing: horizontal
    )
  }
}
