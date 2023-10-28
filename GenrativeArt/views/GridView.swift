//
//  GridView.swift
//  GenrativeArt
//
//  Created by Chen-Ning Kang on 2023-10-28.
//

import SwiftUI

struct GridView: View {
    
//    Stored properties
    @State var columns = 7.0
    @State var rows = 4
    
    
//    Computed properties
    var body: some View {
        
        VStack {
            Grid(horizontalSpacing: 0, verticalSpacing: 0) {
    //            Number of Rows
                ForEach(0..<Int(rows), id: \.self){ j in
                    
                    
                    
                    GridRow{
                        
    //                    Repeats within row
                        ForEach(0..<Int(columns), id: \.self) {i in
                            TitleView()
                        }
                    }
                    
                }
            }
            
            
            Slider(value: $columns, in: 1...10, step: 1.0)
        }
    }
}
    
    #Preview {
        GridView()
    }

