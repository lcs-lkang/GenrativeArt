//
//  TitleView.swift
//  GenrativeArt
//
//  Created by Chen-Ning Kang on 2023-10-24.
//

import SwiftUI




struct TitleView: View {
    var body: some View {
        VStack{
            TriangleTopRight()
            .aspectRatio(1.0, contentMode: .fit)
            
            TriangleBottomLeft()
                .aspectRatio(1.0, contentMode: .fit)
            
            TriangleTopLeft()
                .aspectRatio(1.0, contentMode: .fit)
            
            TriangleBottomRight()
                .aspectRatio(1.0, contentMode: .fit)
            
        }
        .padding()
    }

}
#Preview {
    TitleView()
}
