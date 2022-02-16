//
//  ColorCircle.swift
//  HomeWork_3_1
//
//  Created by Aliaksandr Rauko on 15.02.22.
//

import SwiftUI

struct ColorCircle: View {
    
    let color: Color
    let algha: Double
    
    var body: some View {
        Circle()

            .foregroundColor(color.opacity(algha))
            .frame(width: 150, height: 150)
            .overlay(Circle().stroke(Color.black,
                                    lineWidth: 3))
            .shadow(radius: 10)
            .symbolRenderingMode(.hierarchical)
            .foregroundColor(.red)
            
    }
}

struct ColorCircle_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircle(color: .red, algha: 1)
    }
}
