//
//  ViewController.swift
//  ToolBarSharingAppMacOS
//
//  Created by Mithun Raj on 06/09/20.
//  Copyright © 2020 Mithun Raj. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    @IBOutlet weak var shareTextField: NSTextField!
    @IBOutlet weak var shareImageView: NSImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    @IBAction func share(_ sender: NSView) {
        guard let image = shareImageView.image else { return }
        let text = shareTextField.stringValue
        let picker = NSSharingServicePicker(items: [image, text])
        picker.show(relativeTo: .zero, of: sender, preferredEdge: .minY)
    }


}

