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
    
    @State private var currentLight = CurrentLight.red
    let colors = [Color.red, Color.green, Color.green]
    
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.purple, .white]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack {
                ColorCircle(color: .red)
                    .padding()
                ColorCircle(color: .yellow)
                    .padding()
                ColorCircle(color: .green)
                    .padding()
                Spacer()
                
                Button(action: {
                    switch currentLight {
                    case .red:
                        currentLight = .yellow
                        
                    case .yellow:
                        currentLight = .green
                    case .green:
                        currentLight = .red
                    }
                }) {
                    Text("START")
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


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
