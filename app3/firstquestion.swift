//
//  firstquestion.swift
//  app3
//
//  Created by scholar on 6/9/23.
//

import SwiftUI

struct firstquestion: View {
    @State private var textTitle = "Who is the forensic scientist on NCIS?"
    @State private var answer2 = ""
    var body: some View {
        NavigationStack {
            Text("Your second question question 🧐")
            TextField("", text: $answer2)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.gray, width: 1)
            Button("Submit") {
                textTitle = "You sure it's, \($answer2)?"
            }
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.purple)
            NavigationLink(destination: Bye())
        }
    }
    
    struct firstquestion_Previews: PreviewProvider {
        static var previews: some View {
            firstquestion()
        }
    }
}
