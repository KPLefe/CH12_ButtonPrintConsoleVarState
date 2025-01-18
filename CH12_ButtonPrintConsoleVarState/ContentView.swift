//
//  ContentView.swift
//  CH12_ButtonPrintConsoleVarState
//
//  Created by Kevin Lefebvre on 1/18/25.
//

import SwiftUI

struct ContentView: View {
    //var message = "I Am A Programmer!" // property of view. Can't change in body
    @State var message = "I Am A Programmer!" // can be changed in body
    // state variables stay with view.
    //@State private var message = "I Am A Programmer!"
    // private - only accessible in this file
    // will not show up in other files. If only needed in one file. Do this.
    var body: some View {
        VStack {
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
            Button("Click me!") {
                message = "Awesome!"
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
