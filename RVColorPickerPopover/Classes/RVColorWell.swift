//
//  RVColorWell.swift
//  RVColorWell
//
//  Created by Vishal Gupta on 07/06/23.
//

import Cocoa

public class RVColorWell: NSColorWell {
    public override func deactivate() {
        super.deactivate()
    }
    public override func activate(_ exclusive: Bool) {
        super.activate(exclusive)
        self.activateWithPopover()
    }
    func activateWithPopover() {
        let popover = RVColorPickerPopover.shared
        
        popover.color = self.color
        popover.appearance = NSAppearance(named: .darkAqua)
        popover.changeColor = { [weak self] color in
            self?.color = color
        }
        popover.show(relativeTo: .zero, of: self, preferredEdge: NSRectEdge.maxY)
    }
}

