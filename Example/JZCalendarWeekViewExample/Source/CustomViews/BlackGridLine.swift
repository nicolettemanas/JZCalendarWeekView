//
//  BlackGridLine.swift
//  JZCalendarWeekViewExample
//
//  Created by Jeff Zhang on 23/4/18.
//  Copyright © 2018 Jeff Zhang. All rights reserved.
//

import UIKit

/// Custom Decoration View
class BlackGridLine: UICollectionReusableView {
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .orange
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

class DashedGridLine: UICollectionReusableView {
  public override init(frame: CGRect) {
    super.init(frame: frame)
    dashed(layerName: "dash", color: UIColor(hex: 0xe9e9e9))
  }

  required public init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  func dashed(
    layerName: String,
    color: UIColor) {

    let path = UIBezierPath()
    path.move(to: .zero)
    path.addLine(to: CGPoint(x: frame.size.width, y: 0))

    path.stroke()

    let fill = color
    let shapeLayer = CAShapeLayer()
    shapeLayer.opacity = 1
    shapeLayer.strokeStart = 0.0
    shapeLayer.strokeColor = fill.cgColor
    shapeLayer.lineWidth = 1.0
    shapeLayer.lineJoin = kCALineJoinMiter
    shapeLayer.lineDashPattern = [5, 5]
    shapeLayer.lineDashPhase = 0
    shapeLayer.path = path.cgPath
    shapeLayer.name = layerName

    layer.addSublayer(shapeLayer)
  }
}
