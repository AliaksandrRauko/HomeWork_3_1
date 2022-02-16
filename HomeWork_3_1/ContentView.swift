//
//  ContentView.swift
//  HomeWork_3_1
//
//  Created by Aliaksandr Rauko on 15.02.22.
//

import SwiftUI

enum CurrentLight {
    case red, yellow, green
}

struct ContentView: View {
    
    @State private var currentLight: CurrentLight = .red
    
    @State private var alghaRed = 0.2
    @State private var alghaYellow = 0.2
    @State private var alghaGreen = 0.2
    
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.purple, .white]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                TrafficLight(alghaRed: alghaRed,
                             alghaYellow: alghaYellow,
                             alghaGreen: alghaGreen)
                Spacer()
                
                Button(action: {
                    changeLight()
                }) {
                    let name = (currentLight == .red &&
                                alghaGreen == 0.2)
                    ? "START"
                    : "NEXT"
                    
                    Text(name)
                        .font(.title)
                        .padding()
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
            alghaRed = 1
            alghaYellow = 0.2
            alghaGreen = 0.2
            currentLight = .yellow
        case .yellow:
            alghaRed = 0.2
            alghaYellow = 1
            alghaGreen = 0.2
            currentLight = .green
        case .green:
            alghaRed = 0.2
            alghaYellow = 0.2
            alghaGreen = 1
            currentLight = .red
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
