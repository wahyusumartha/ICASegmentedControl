//
//  ViewController.swift
//  ICASegmentedControl
//
//  Created by wahyusumartha on 05/30/2017.
//  Copyright (c) 2017 wahyusumartha. All rights reserved.
//

import UIKit
import ICASegmentedControl

class ViewController: UIViewController {
  
  var segmentedControl: ICASegmentedControl? = {
    let viewWidth = UIScreen.main.bounds.size.width
    let selectedColor = UIColor.red
    let titleColor = UIColor(red: 153/255, green: 153/255, blue: 153/255, alpha: 1)
    let segmentedControl = ICASegmentedControl(frame: CGRect(x: 0, y: 0,
                                                             width: viewWidth, height: 48))
    segmentedControl.autoresizingMask = [.flexibleRightMargin, .flexibleLeftMargin]
    segmentedControl.selectedTitleColor = selectedColor
    segmentedControl.indicatorColor = selectedColor
    segmentedControl.titleColor = titleColor
    
    return segmentedControl
  }()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    segmentedControl?.setSectionTitles(sectionTitles: ["Segment 1", "Segment 2", "Segment 3"])
    segmentedControl?.addTarget(self,
                                action: #selector(segmentedControlChangedValue(sender:)),
                                for: .valueChanged) // add the target specification here to prevent crash in iOS 8
    view.insertSubview(segmentedControl!, at: 1)
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  func segmentedControlChangedValue(sender: ICASegmentedControl) {
    print("Index: \(sender.selectedIndex)")
  }
}

