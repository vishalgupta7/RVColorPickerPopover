//
//  ViewController.swift
//  RVColorPickerPopover
//
//  Created by Rohit Vishwakarma on 06/04/2023.
//  Copyright (c) 2023 Rohit Vishwakarma. All rights reserved.
//

import Cocoa
import RVColorPickerPopover

class ViewController: NSViewController {

    @IBOutlet weak var colorWell: NSColorWell!
    @IBAction func showColorPalette(_ sender: Any) {
        let colorPanel = NSColorPanel.shared
        
        colorPanel.orderFront(nil)
    }
    
    @IBAction func showColorPicker(_ sender: NSControl) {
        let popover = RVColorPickerPopover.shared
        
        popover.color = .red
        popover.appearance = NSAppearance(named: .darkAqua)
        popover.changeColor = { [weak self] color in
            self?.colorWell.color = color
        }
        popover.show(relativeTo: sender.bounds, of: sender, preferredEdge: NSRectEdge.maxY)
    }
}

