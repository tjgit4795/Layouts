//
//  ContentView.swift
//  Layouts
//
//  Created by Michelle Ruhl on 2/23/25.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = "When the Genis Bar Needs Help, They Call You!"
    var body: some View {
        VStack {
            Text(messageString)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .font(.largeTitle)
                .foregroundStyle(.red)
                .padding()
                .frame(height: 150)
                .frame(maxWidth: .infinity)
                .border(.orange, width: 2)
            HStack {
                Button("Awesome") {
                    messageString = "You Are Awesome!"
                }
                Button("Great") {
                    messageString = "You Are Great!"
                }
            }
            .buttonStyle(.borderedProminent)
            .border(.orange, width: 2)
        }
    }
}
  
#Preview {
    ContentView()
}
