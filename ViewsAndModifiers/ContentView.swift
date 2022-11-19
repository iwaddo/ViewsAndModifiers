//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Ian Waddington on 19/11/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var useRedText = false
    var body: some View {
        Button("Hello, World!") {
            useRedText.toggle()
        }
        .foregroundColor(useRedText ? .red : .blue)
        
//        Text("Hello World!1")
//        Text("Hello World!2")
//        Text("Hello World!3")
//        Text("Hello World!4")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
