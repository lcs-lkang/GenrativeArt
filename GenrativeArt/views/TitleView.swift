//
//  TitleView.swift
//  GenrativeArt
//
//  Created by Chen-Ning Kang on 2023-10-24.
//

import SwiftUI

struct TitleView: View {
    
    
//    Stored properties
    
    let markerOne = Color.red
    let markerTwo  = Color.orange
    
    let flipForColor = Coin.flip()
    let flipOne = Coin.flip()
    
    var colorOne : Color {
        if flipForColor == .heads {
            return markerOne
        } else {
            return markerTwo
        }
    }
    
    
    var colorTwo : Color {
        if flipForColor == .heads {
            return markerTwo
        } else {
            return markerOne
        }
    }
    
//    Computed Properties
    var body: some View {
        ZStack{
            
            if flipOne == .heads {
            TriangleTopRight()
                    .stroke(.black)
                    .fill(colorOne)
                    .aspectRatio(1.0, contentMode: .fit)
                
            
                TriangleBottomLeft()
                    .stroke(.black)
                    .fill(colorTwo)
                    .aspectRatio(1.0, contentMode: .fit)
                
            } else {
                
                TriangleBottomRight()
                    .stroke(.black)
                    .fill(.clear)
                    .aspectRatio(1.0, contentMode: .fit)
            
                TriangleTopLeft()
                    .stroke(.black)
                    .fill(.clear)
                    .aspectRatio(1.0, contentMode: .fit)
                
            }
            
        }
        .padding()
    }
    
}
#Preview {
    TitleView()
}
