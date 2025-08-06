//
//  ContentView.swift
//  InteractiveUI
//
//  Created by Scholar on 8/6/25.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    @State private var textTitle = "Enter your name:"
    var body: some View {
        ZStack {
            //Color(.purple)
                //.ignoresSafeArea()
            VStack {
                Text(textTitle)
                    .font(.title)
                    .foregroundColor(Color.blue)
                TextField("Type your name here...", text: $name)
                    .multilineTextAlignment(.center)
                    .font(.title)
                    .border(.gray,width: 1)
                    .padding()
                Button("Submit") {
                    textTitle = "Welcome \(name)!"
                }
                .font(.title2)
                .buttonStyle(.borderedProminent)
                .tint(.green)
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
