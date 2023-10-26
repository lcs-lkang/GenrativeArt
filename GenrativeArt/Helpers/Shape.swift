//
//  Shape.swift
//  GenrativeArt
//
//  Created by Chen-Ning Kang on 2023-10-24.
//

import SwiftUI
struct TriangleTopRight: Shape {
    func path(in rect: CGRect) -> Path {
        
        //Make path
        var path = Path()
        
        //Define path
        path.move(to: CGPoint(x: rect.maxX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
        //Return path
        return path
        
        
    }
    
}

struct TriangleTopLeft: Shape {
    func path(in rect: CGRect) -> Path {
        
        //Make path
        var path = Path()
        
        //Define path
        path.move(to: CGPoint(x: rect.minX, y: rect.minY))
        
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.minY))
        //Return path
        return path
        
        
    }
    
}


struct TriangleBottomLeft: Shape {
    func path(in rect: CGRect) -> Path {
        
        //Make path
        var path = Path()
        
        //Define path
        path.move(to: CGPoint(x: rect.maxX, y: rect.maxY))
        
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        //Return path
        return path
        
        
    }
    
}


struct TriangleBottomRight: Shape {
    func path(in rect: CGRect) -> Path {
        
        //Make path
        var path = Path()
        
        //Define path
        path.move(to: CGPoint(x: rect.maxX, y: rect.minY))
        
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
        //Return path
        return path
        
        
    }
    
}


enum Coin: Int {
    case heads = 1
    case tails = 2
    static func flip() -> Coin {
        let decision = Bool.random()
        
        if decision == true{
            return.heads
        }
        
            else {
            return.tails
        }
    }
}
