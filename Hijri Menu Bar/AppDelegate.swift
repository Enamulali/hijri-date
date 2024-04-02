import Cocoa
import SwiftUI

class AppDelegate: NSObject, NSApplicationDelegate {
    var statusBarItem: NSStatusItem?
    var popover: NSPopover?

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Create a status bar item
        statusBarItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)

        if let button = statusBarItem?.button {
            button.image = NSImage(systemSymbolName: "calendar", accessibilityDescription: "Hijri Date")
            
            // status bar button always persist
            statusBarItem?.isVisible = true

            // Create an instance of your SwiftUI view
            let contentView = StatusItemView()

            // Create an NSPopover to display the SwiftUI view
            popover = NSPopover()
            popover?.contentViewController = NSHostingController(rootView: contentView)
            // popover should automatically close when the user interacts with anything outside
            popover?.behavior = .transient

            // Assign the popover to the status bar button
            button.action = #selector(togglePopover(_:))
            button.target = self
            
            //App should run even when dock item quit
            NSApp.setActivationPolicy(.accessory)
        }
    }

    @objc func togglePopover(_ sender: AnyObject?) {
        if let button = statusBarItem?.button {
            if let popover = popover {
                if popover.isShown {
                    popover.performClose(sender)
                } else {
                    NotificationCenter.default.post(name: .fetchHijriDates, object: nil)
                    popover.show(relativeTo: button.bounds, of: button, preferredEdge: .minY)
                }
            }
        }
    }
}
