//
//  RVColorPickerPopover.swift
//  RVColorPickerPopover
//
//  Created by Vishal Gupta on 02/06/23.
//

import Cocoa

public class RVColorPickerPopover: NSPopover {
    public static let shared = RVColorPickerPopover()
    public var color: NSColor = .white
    private var colorPanelFrame : NSRect = .zero
    private var originalAppearance: NSAppearance?
    public var changeColor: ((_ color: NSColor) -> Void)?
    
    private override init() {
        super.init()
        let controller = RVPopoverViewController(parentPopOver: self)
        self.contentViewController = controller
        self.contentSize = controller.view.frame.size
        self.behavior = .transient
        self.animates = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func initializeColorPanel() {
        let colorPanel = NSColorPanel.shared

        self.originalAppearance = colorPanel.appearance
        self.colorPanelFrame = colorPanel.frame
        colorPanel.isMovable = false
        colorPanel.styleMask.remove([.resizable, .closable, .miniaturizable])
        colorPanel.titleVisibility = .hidden
        colorPanel.color = color
        colorPanel.appearance = self.appearance
        colorPanel.orderFront(nil)

        NotificationCenter.default.addObserver(self, selector: #selector(colorChangeMessage), name: NSColorPanel.colorDidChangeNotification, object: colorPanel)
        if var frame = contentViewController?.view.window?.frame {
            frame = frame.insetBy(dx: 13, dy: 13)
            colorPanel.setFrame(frame, display: true)
        }
    }
    
    func resetAndCloseColorPanel() {
        let colorPanel = NSColorPanel.shared

        colorPanel.close()
        colorPanel.isMovable = true
        colorPanel.styleMask.insert([.resizable, .closable, .miniaturizable])
        colorPanel.titleVisibility = .visible
        colorPanel.setFrame(colorPanelFrame, display: true)
        colorPanel.appearance = self.originalAppearance
        NotificationCenter.default.removeObserver(self)
    }
    
    @objc func colorChangeMessage(_ notification: NSNotification) {
        self.color = NSColorPanel.shared.color
        self.changeColor?(self.color)
    }
}

class RVPopoverViewController: NSViewController {
    weak var popover: RVColorPickerPopover? = nil
    
    public init(parentPopOver: RVColorPickerPopover) {
        super.init(nibName:nil, bundle: nil)
        popover = parentPopOver
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        self.view = NSView(frame: NSMakeRect(0, 0, 222, 355))
    }

    override func viewWillAppear() {
        super.viewWillAppear()
        popover?.initializeColorPanel()
    }
    
    override func viewWillDisappear() {
        super.viewWillDisappear()
        popover?.resetAndCloseColorPanel()
    }
}
