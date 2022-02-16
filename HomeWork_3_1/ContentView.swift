//
//  ContentView.swift
//  HomeWork_3_1
//
//  Created by Aliaksandr Rauko on 15.02.22.
//

import SwiftUI

enum CurrentLight {
    case red, yellow, green, black
}

struct ContentView: View {
    
    @State private var trafficLight = TrafficLight(activeColor: .black)
    @State private var currentLight: CurrentLight = .black
    
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.purple, .white]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack {
                trafficLight
                Spacer()
                
                Button(action: {
                    changeLight()
                }) {
                    let name = currentLight == .black
                    ? "START"
                    : "NEXT"
                    
                    Text(name)
                        .font(.title)
                        .controlSize(.large)
                        .foregroundColor(.white)
                        .background(.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                }
            }
            .padding()
        }
    }
    
}

extension ContentView {
    
    private func changeLight() {
        switch currentLight {
        case .red:
            self.trafficLight = TrafficLight(activeColor: .red)
            currentLight = .yellow
        case .yellow:
            self.trafficLight = TrafficLight(activeColor: .yellow)
            currentLight = .green
        case .green:
            self.trafficLight = TrafficLight(activeColor: .green)
            currentLight = .red
        case .black:
            self.trafficLight = TrafficLight(activeColor: .red)
            currentLight = .yellow
        }
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
