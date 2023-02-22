//
//  ContentView.swift
//  How Much
//
//  Created by Marcin Jędrzejak on 22/02/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            }
            Color(.cyan)
            Image(systemName: "archivebox.fill")
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            Button("Click Me") {
                
            }
        }
        .foregroundColor(.orange)
        .border(.green)
        .padding()
        .border(.purple)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
