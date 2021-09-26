//
//  GradientRectangles.swift
//  AwordsCollectionApp
//
//  Created by Alexey Efimov on 05.08.2020.
//  Copyright © 2020 Alexey Efimov. All rights reserved.
//

import SwiftUI

struct GradientRectangles: View {
    
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        ZStack {
            ForEach(0..<3) { iteration in
                Rectangle()
                    .fill(
                        LinearGradient(colors: [.green, .blue],
                                       startPoint: UnitPoint(x: 0, y: 1),
                                       endPoint: UnitPoint(x: 1, y: 0))
                    )
                    .rotationEffect(.degrees(Double(iteration) * 60))
                    .frame(width: width * 0.7, height: height * 0.7)
            }
            Image(systemName: "airplane")
                .resizable()
                .rotationEffect(.degrees(-90))
                .opacity(0.5)
                .frame(width: width * 0.7, height: height * 0.7)
        }
        .frame(width: width, height: height)
    }
}

struct GradientRectangles_Previews: PreviewProvider {
    static var previews: some View {
        GradientRectangles(width: 200, height: 200)
    }
}
