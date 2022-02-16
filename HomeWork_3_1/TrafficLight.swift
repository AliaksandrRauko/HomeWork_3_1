//
//  TrafficLight.swift
//  HomeWork_3_1
//
//  Created by Aliaksandr Rauko on 16.02.22.
//

import SwiftUI

struct TrafficLight: View {
    
    let alghaRed: Double
    let alghaYellow: Double
    let alghaGreen: Double
    
    var body: some View {
        VStack{
            ColorCircle(color: .red, algha: alghaRed)
            ColorCircle(color: .yellow, algha: alghaYellow)
            ColorCircle(color: .green, algha: alghaGreen)
        }
    }
}

struct TrafficLight_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLight(alghaRed: 0.2, alghaYellow: 0.2, alghaGreen: 0.2)
    }
}
