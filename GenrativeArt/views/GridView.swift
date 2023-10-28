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
                ForEach(1..<4) {i in
                        TitleView()
                }
            }
            GridRow{
                ForEach(1..<4) {i in
                        TitleView()
                }
            }
            GridRow{
                ForEach(1..<4) {i in
                        TitleView()
                }
            }
            
        }
    }
}
    
    #Preview {
        GridView()
    }

