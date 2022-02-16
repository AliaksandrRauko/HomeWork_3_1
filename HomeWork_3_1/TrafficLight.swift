//
//  TrafficLight.swift
//  HomeWork_3_1
//
//  Created by Aliaksandr Rauko on 16.02.22.
//

import SwiftUI

struct TrafficLight: View {
    
    let activeColor: CurrentLight
    
    var body: some View {
        VStack{
            if activeColor == .red {
                ColorCircle(color: .red, alpha: 1)
            } else {
                ColorCircle(color: .red, alpha: 0.2)
            }
            if activeColor == .yellow {
                ColorCircle(color: .yellow, alpha: 1)
            } else {
                ColorCircle(color: .yellow, alpha: 0.2)
            }
            if activeColor == .green {
                ColorCircle(color: .green, alpha: 1)
            } else {
                ColorCircle(color: .green, alpha: 0.2)
            }            
        }
    }
}

struct TrafficLight_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLight(activeColor: .red)
    }
}
