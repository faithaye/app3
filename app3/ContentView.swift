//
//  ContentView.swift
//  app3
//
//  Created by scholar on 6/9/23.
//

import SwiftUI

struct ContentView: View {
    @State private var textTitle = "Who is the technical analyst for the FBI's Behavioral Analysis Unit in the Show Criminal minds"
    @State private var answer = ""
    var body: some View {
        VStack {
            Text("Welcome to quiz")
            TextField("", text: $answer)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.gray, width: 1)
            Button("Submit") {
                textTitle = "Maybe it's, \($answer)?"
            }
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.purple)
            .toolbar{
                NavigationLink(destination: firstquestion()){
                    Text("You're on question 2")
                }
                .navigationTitle("Home")
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarHidden(false)
            }
            
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
