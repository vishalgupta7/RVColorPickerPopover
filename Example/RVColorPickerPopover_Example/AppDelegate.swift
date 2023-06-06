//
//  AppDelegate.swift
//  RVColorPicker
//
//  Created by Vishal Gupta on 01/06/23.
//

import Cocoa

@main
class AppDelegate: NSObject, NSApplicationDelegate {
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        NSColorPanel.shared.close()
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        NSColorPanel.shared.close()
    }
}

