//
//  ViewController.swift
//  RVColorPicker
//
//  Created by Vishal Gupta on 01/06/23.
//

import Cocoa

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


