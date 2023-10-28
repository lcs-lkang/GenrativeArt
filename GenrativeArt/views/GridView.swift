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
            GridRow{
                TitleView()
                TitleView()
                TitleView()
            }
            
        }
    }
}
    
    #Preview {
        GridView()
    }

