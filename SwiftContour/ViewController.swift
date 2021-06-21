//
//  ViewController.swift
//  SwiftContour
//
//  Created by Sera Brocious on 6/19/21.
//

import Cocoa
import SpriteKit
import GameplayKit

class ViewController: NSViewController {

    @IBOutlet var imageView: NSImageView!
    
    override func viewDidLoad() {
        let size: Int = 768
        super.viewDidLoad()
        
        view.setFrameSize(NSSize(width: size, height: size))
        
        let paths = findContours(scene, (vec3(repeating: -2), vec3(repeating: 2)), [
            (vec3.unitX, 5, 1),
            (vec3.unitY, 5, 1),
            (vec3.unitZ, 5, 1),
        ])

        if let view = self.imageView {
            let img = NSImage(size: NSMakeSize(CGFloat(size), CGFloat(size)))
            view.image = img
            
            func vecToPoint(_ p: vec2) -> NSPoint {
                let p = p * 256 + Float(size / 2)
                return NSPoint(x: CGFloat(p.x), y: CGFloat(p.y))
            }
            
            img.lockFocus()
            NSColor.white.drawSwatch(in: NSRect(x: 0, y: 0, width: size, height: size))
            NSColor.black.set()
            
            for path in paths {
                //if(path.count < 2) { continue }
                let bp = NSBezierPath()
                bp.move(to: vecToPoint(path[0]))
                path.eachPoint { p in
                    bp.line(to: vecToPoint(p))
                }
                bp.stroke()
            }
            img.unlockFocus()
        }
    }
}

