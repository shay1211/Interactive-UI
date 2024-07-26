//
//  ContentView.swift
//  Interactive UI
//
//  Created by Shaya Fadel on 2024-07-26.
//

import SwiftUI

struct ContentView: View {
    @State private var textTitle = "Hello, What is your name?"
    @State private var name = ""
    
    var body: some View {
        
        VStack {
            Text(textTitle)
            TextField("Type name here", text: $name)
                .multilineTextAlignment(.center)
                .font(.title)
              .border(Color.gray, width: 1)
            Button("Submit Name") {
                textTitle = "Welcome, \(name)"
                print(name)
                
            }
            .font(.title)
            .buttonStyle(.borderedProminent)
//            .tint(.green)
            .tint(Color(hue: 1.0, saturation: 0.145, brightness: 0.927))
        }
        .padding(80)
    }
}

#Preview {
    ContentView()
}
