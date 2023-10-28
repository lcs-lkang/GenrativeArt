//
//  GridView.swift
//  GenrativeArt
//
//  Created by Chen-Ning Kang on 2023-10-28.
//

import SwiftUI

struct GridView: View {
    var body: some View {
        
        Grid(horizontalSpacing: 0, verticalSpacing: 0) {
//            Number of Rows
            ForEach(1..<6){ j in
                
                
                
                GridRow{
                    
//                    Repeats within row
                    ForEach(1..<4) {i in
                        TitleView()
                    }
                }
                
            }
        }
    }
}
    
    #Preview {
        GridView()
    }

