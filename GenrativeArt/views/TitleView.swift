//
//  TileView.swift
//  GenerativeArt
//
//  Created by LK on 24/10/2023.
//

import SwiftUI


struct TitleView: View {
    
    //MARK: Stored Properties
    
    //Determine the diagonal
    let flipOne = Coin.flip()
    
    //Determine whether top or bottom triangle gets filled with colour one
    let flipTwo = Coin.flip()
    
    //Determine whether to fill to remaining triangle with colourTwo or not
    let flipThree = Coin.flip()
    
    //Choosing marker colours
    let markerOne = Color.red
    let markerTwo = Color.blue
    
    //Decide on colors
    let flipForColor = Coin.flip()
    
    //MARK: Computed Properties
    
    //Set colours based on the coin flip
    var colourOne: Color {
        return flipForColor == .heads ? markerOne : markerTwo
    }
    
    var colourTwo: Color {
        return flipForColor == .heads ? markerTwo : markerOne
    }
    
    //Determine fill colour for remainign triangle
    var remainingTriangleFillColor: Color {
        if flipThree == .heads {
            return colourTwo
        } else {
            return .clear
        }
    }
    
    var body: some View {
        ZStack {
            
            if flipOne == .heads {
                
                //Top Right triangle
                TriangleTopRight()
                    .stroke(.black)
                    .fill(flipTwo == .heads ? colourOne : remainingTriangleFillColor)
                    .aspectRatio(1.0, contentMode: .fit)
                
                //Bottom Left triangle
                TriangleBottomLeft()
                    .stroke(.black)
                    .fill(flipTwo == .tails ? colourOne : remainingTriangleFillColor)
                    .aspectRatio(1.0, contentMode: .fit)
                
            } else {
                
                //Top Left triangle
                TriangleTopLeft()
                    .stroke(.black)
                    .fill(flipTwo == .heads ? colourOne : remainingTriangleFillColor)
                    .aspectRatio(1.0, contentMode: .fit)
                
                //Bottom Right Triangle
                TriangleBottomRight()
                    .stroke(.black)
                    .fill(flipTwo == .tails ? colourOne : remainingTriangleFillColor)
                    .aspectRatio(1.0, contentMode: .fit)
                
            }
            
        }
        
    }
}

#Preview {
    TitleView()
}
