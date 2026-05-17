//
//  ContentView.swift
//  WhyNotTry
//
//  Created by Jesse Crocker on 2026-05-16.
//

import SwiftUI

struct ContentView: View {
    
    var activities = ["Archery", "Baseball", "Basketball", "Bowling", "Boxing", "Cricket", "Curling", "Fencing", "Golf", "Hiking", "Lacrosse", "Rugby", "Squash"]
    
    @State private var selected = "Rugby"
    
    var body: some View {
        //Text("Hello, SwiftUI!")
        VStack{
            Text("Why Not Try..")
                .font(.largeTitle.bold())
        }
        
        VStack{
            Circle()
                .fill(.blue)
                .padding()
                .overlay(
                    Image(systemName:"figure.\(selected.lowercased())")
                        .font(.system(size:144))
                        .foregroundStyle(.white))
            
            Text("\(selected)!")
                .font(.title)
        }
        
        Button("Try Again") {
           selected = activities.randomElement() ?? "Rugby";
        }
        .buttonStyle(.borderedProminent)
        }
    
}

#Preview {
    ContentView()
}
