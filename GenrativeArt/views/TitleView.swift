//
//  TileView.swift
//  GenerativeArt
//
//  Created by Lawrence Kang on 24/10/2023.
//

import SwiftUI


struct TitleView: View {
    
    //MARK: Stored Properties
    
    //Determine the diagonal
    let flipOne = Coin.tails
    
    //Determine whether top or bottom triangle gets filled with colour one
    let flipTwo = Coin.heads
    
    //Choosing marker colours
    let markerOne = Color.red
    let markerTwo = Color.blue
    
    //Decide on colors
    let flipForColor = Coin.heads
    
    //MARK: Computed Properties
    
    //Set colours based on the coin flip
    var colourOne: Color {
        return flipForColor == .heads ? markerOne : markerTwo
    }
    
    var colourTwo: Color {
        return flipForColor == .heads ? markerTwo : markerOne
    }
    
    var body: some View {
        ZStack {
            
            if flipOne == .heads {
                
                //Top Right triangle
                TriangleTopRight()
                    .stroke(.black)
                    .fill(flipTwo == .heads ? colourOne : .clear)
                    .aspectRatio(1.0, contentMode: .fit)
                
                //Bottom Left triangle
                TriangleBottomLeft()
                    .stroke(.black)
                    .fill(flipTwo == .tails ? colourOne : .clear)
                    .aspectRatio(1.0, contentMode: .fit)
                
            } else {
                
                //Top Left triangle
                TriangleTopLeft()
                    .stroke(.black)
                    .fill(flipTwo == .heads ? colourOne : .clear)
                    .aspectRatio(1.0, contentMode: .fit)
                
                //Bottom Right Triangle
                TriangleBottomRight()
                    .stroke(.black)
                    .fill(flipTwo == .tails ? colourOne : .clear)
                    .aspectRatio(1.0, contentMode: .fit)
                
            }
            
        }
        .padding()
    }
}

#Preview {
    TitleView()
}
