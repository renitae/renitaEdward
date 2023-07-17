//
//  ContentView.swift
//  renitaEdward
//
//  Created by Scholar on 7/13/23.
//

import SwiftUI
struct ContentView: View {
@State private var showBio = false
var body: some View {
    VStack {
        Text("S C H O L A R")
            .font(.largeTitle)
            .fontWeight(.thin)
        Spacer()
        Image("aboutMe")
            .resizable(resizingMode: .stretch)
            .aspectRatio(contentMode: .fit)
        Button( action:
               {showBio.toggle()})
        {
            Text("Click to learn more about me!")
                .fontWeight(.light)
        }
        .foregroundColor(.black)
        .padding()
        .background(Color.yellow.opacity(0.5))
        .cornerRadius(30)

        .padding()
        
        if showBio {
            Text("I'm a sophmore who loves playing basketball and the violin. I am also on my school's robotics team! Outside of school I am a dedicated duck mom!")
                .multilineTextAlignment(.center)
                .padding(.vertical)
            Image("art")
        }
    }
    .padding()
}
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
