//
//  TitleView.swift
//  GenrativeArt
//
//  Created by Chen-Ning Kang on 2023-10-24.
//

import SwiftUI



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


struct TitleView: View {
    var body: some View {
        VStack{
            TriangleTopRight()
            .aspectRatio(1.0, contentMode: .fit)
            
            TriangleBottomLeft()
                .aspectRatio(1.0, contentMode: .fit)
            
            TriangleTopLeft()
                .aspectRatio(1.0, contentMode: .fit)
            
        }
        .padding()
    }

}
#Preview {
    TitleView()
}
