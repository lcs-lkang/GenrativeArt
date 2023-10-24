//
//  TitleView.swift
//  GenrativeArt
//
//  Created by Chen-Ning Kang on 2023-10-24.
//

import SwiftUI

struct TitleView: View {
    
    let flipOne = Coin.flip()
    
    var body: some View {
        ZStack{
            
            if flipOne == .heads {
            TriangleTopRight()
                    .stroke(.black)
                    .fill(.clear)
                    .aspectRatio(1.0, contentMode: .fit)
                
            
                TriangleBottomLeft()
                    .stroke(.black)
                    .fill(.clear)
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
