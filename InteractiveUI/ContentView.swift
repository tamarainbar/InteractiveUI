//
//  ContentView.swift
//  InteractiveUI
//
//  Created by Scholar on 8/6/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Enter you name:")
                .font(.title)
                .foregroundColor(Color.blue)
            TextField("Type your name here...", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(.gray,width: 1)
                .padding()
            Button("Submit") {
                
            }
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.green)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
