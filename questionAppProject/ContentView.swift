//
//  ContentView.swift
//  questionAppProject
//
//  Created by Scholar on 7/29/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var response = "" //save user response in a variable
    
    var body: some View {
    
        NavigationStack { //This lets me add links to other views
            ZStack{ //This lets me add a full background by layering back to front
                Color(.systemYellow)
                ignoresSafeArea()
                
                VStack {//Organize the following top to bottom
                    Text("What is your favorite color?")
                    
                    Button("Purple") {
                        response = "🦄"
                    }
                    
                    Button("Green") {
                        response = "🦖"
                    }
                    
                    Button("Pink") {
                        response = "🐽"
                    }
                    
                    Text(response)//display response to user interaction
                    
                    NavigationLink(destination: questionTwoView()) {//links to another view in the SwiftUI file named "questionTwoView"
                        Text("Next Question")
                    }
                }//end of VStack
                
            }//end of ZStack
        }//end of NavigationStack

        
    }
}

#Preview {
    ContentView()
}
