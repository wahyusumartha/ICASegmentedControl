//
//  ICAScrollView.swift
//  iOSConsumerApp
//
//  Created by Wahyu Sumartha on 06/01/2017.
//  Copyright © 2017 iCarAsia. All rights reserved.
//

import UIKit

public class ICAScrollView: UIScrollView {
  override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    if !isDragging {
      next?.touchesBegan(touches, with: event)
    } else {
      super.touchesBegan(touches, with: event)
    }
  }
  
  override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
    if !isDragging {
      next?.touchesMoved(touches, with: event)
    } else {
      super.touchesMoved(touches, with: event)
    }
  }
  
  override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
    if !isDragging {
      next?.touchesEnded(touches, with: event)
    } else {
      super.touchesEnded(touches, with: event)
    }
  }
}
