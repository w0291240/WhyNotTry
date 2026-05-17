//
//  ContentView.swift
//  WhyNotTry
//
//  Created by Jesse Crocker on 2026-05-16.
//

import SwiftUI

struct ContentView: View {
    
    var activities = ["Archery", "Baseball", "Basketball", "Bowling", "Boxing", "Cricket", "Curling", "Fencing", "Golf", "Hiking", "Lacrosse", "Rugby", "Squash"]
    
    var colors: [Color] = [.blue, .cyan, .green, .yellow, .orange, .red, .purple, .pink, .gray, .black]
    
    @State private var selected = "Rugby"
    
    @State private var id = 1
    
    var body: some View {
        //Text("Hello, SwiftUI!")
        VStack{
            Text("Why Not Try..")
                .font(.largeTitle.bold())
        }
        
        Spacer()
        
        VStack{
            Circle()
                .fill(colors.randomElement() ?? .blue)
                .padding()
            
                .overlay(
                    Image(systemName:"figure.\(selected.lowercased())")
                        .font(.system(size:144))
                        .foregroundStyle(.white))
                .transition(.slide)
                .id(id)
            
            Text("\(selected)!")
                .font(.title)
        }
        
        Spacer();
        
        Button("Try Again") {
            withAnimation(.easeInOut(duration: 1)) {
                selected = activities.randomElement() ?? "Rugby";
                id += 1;
                
            }

        }
        .buttonStyle(.borderedProminent)
        }
    
}

#Preview {
    ContentView()
}
