//
//  UICollectionView+Ex.swift

//
//  Created by Lody on 4/26/24.
//

import UIKit

public extension UICollectionView {
  
  func register<T: UICollectionReusableView>(_ viewClass: T.Type) {
    self.register(viewClass, forSupplementaryViewOfKind: viewClass.identifier, withReuseIdentifier: viewClass.identifier)
  }
  
  func register<T: UICollectionViewCell>(_ cellClass: T.Type) {
    let reuseIdentifier = cellClass.identifier
    register(cellClass, forCellWithReuseIdentifier: reuseIdentifier)
  }
  
  func register<T: UICollectionReusableView>(_ cellClass: T.Type, forSupplementaryViewOfKind elementKind: String) {
    let reuseIdentifier = cellClass.identifier
    register(cellClass, forSupplementaryViewOfKind: elementKind, withReuseIdentifier: reuseIdentifier)
  }
  
  func registerNib<T: UICollectionViewCell>(_ cellClass: T.Type) {
    let reuseIdentifier = cellClass.identifier
    register(UINib(nibName: reuseIdentifier, bundle: nil), forCellWithReuseIdentifier: reuseIdentifier)
  }
}
