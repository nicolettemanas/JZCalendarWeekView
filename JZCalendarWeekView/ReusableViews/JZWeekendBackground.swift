//
//  JZWeekendBackground.swift
//  JZCalendarWeekView
//
//  Created by Jean on 13/10/2018.
//  Copyright © 2018 Jeff Zhang. All rights reserved.
//

import Foundation

open class JZWeekendBackground: UICollectionReusableView {

  public override init(frame: CGRect) {
    super.init(frame: frame)
    backgroundColor = JZWeekViewColors.weekendBackground

  }

  required public init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
