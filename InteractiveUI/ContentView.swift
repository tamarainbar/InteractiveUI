//
//  ContentView.swift
//  InteractiveUI
//
//  Created by Scholar on 8/6/25.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    @State private var age = ""
    @State private var textTitle = "Enter your information:"
    var isSub = false
    var body: some View {
        ZStack {
            //Color(.purple)
             //   .ignoresSafeArea()
            
            Color(.white)
            VStack {
                Text(textTitle)
                    .font(.title)
                    .foregroundColor(Color.blue)
                    .multilineTextAlignment(.center)
                TextField("Type your name here...", text: $name)
                    .multilineTextAlignment(.center)
                    .font(.title)
                    .border(.gray,width: 1)
                TextField("Type your age here...", text: $age)
                    .multilineTextAlignment(.center)
                    .font(.title)
                    .border(.gray,width: 1)
                
                    .padding()
                if isSub == true {
                    Text("submitted")
                }
                Button("Submit") {
                    textTitle = "Welcome \(name)!\nYou are \(age)"
                    //isSub = true
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
