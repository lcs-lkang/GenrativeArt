//
//  GridView.swift
//  GenrativeArt
//
//  Created by Chen-Ning Kang on 2023-10-28.
//

import SwiftUI

struct GridView: View {
    
//    Stored properties
    let columns = 7
    let rows = 4
    
    
//    Computed properties
    var body: some View {
        
        VStack {
            Grid(horizontalSpacing: 0, verticalSpacing: 0) {
    //            Number of Rows
                ForEach(0..<rows, id: \.self){ j in
                    
                    
                    
                    GridRow{
                        
    //                    Repeats within row
                        ForEach(0..<columns, id: \.self) {i in
                            TitleView()
                        }
                    }
                    
                }
            }
        }
    }
}
    
    #Preview {
        GridView()
    }

