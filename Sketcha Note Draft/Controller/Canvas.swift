//
//  Canvas.swift
//  Sketcha Note Draft
//
//  Created by Aayushi Baral on 2017-12-09.
//  Copyright © 2017 Aayushi B. All rights reserved.
//

import UIKit
// DEFAULT SETTING FOR PEN ON CANVAS
class Canvas: UIView {
    
    var lines: [Line] = []
    var lastPoint: CGPoint!
    
    // Line colors
    var red: CGFloat = 0.0
    var blue: CGFloat = 0.0
    var green: CGFloat = 0.0
    
    // Line opacity
    var highLighter: CGFloat = 0.4
    var fullOpacity: CGFloat = 1.0
    
    required init?(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)!
    }
    // get the location of the first touch on screen
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        lastPoint = touches.first?.location(in: self)

    }
    
    // get location of second touch
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let newPoint = touches.first?.location(in:self){
            lines.append(Line(start: lastPoint, end: newPoint))
            lastPoint = newPoint
        }
        self.setNeedsDisplay()
    }
    // draw line
    override func draw(_ rect:CGRect) {
        let context = UIGraphicsGetCurrentContext()
        context!.beginPath()
        for line in lines{
            context!.move(to:line.start)
            context!.addLine(to: line.end)
        }
        context!.setStrokeColor(red:red, green:green, blue: blue, alpha: fullOpacity)
        context!.setLineCap(CGLineCap.round)
        context!.setLineWidth(5.0)
        context!.strokePath()
    }
    
    

    

}
