//
//  ContentView.swift
//  ZStackExample
//
//  Created by Mustafa Şimşek on 8.07.2024.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ZStack(alignment: .leading) {
            Image("icon")
            
            
            VStack(alignment: .leading) {
                
                Spacer().frame(height: 190)
                ZStack(alignment: .leading) {
                    Rectangle()
                        .fill(.blue)
                        .cornerRadius(10)
                        .frame(width: 250, height: 50)
                    
                    VStack(alignment: .leading) {
                        Text("Enes")
                            .font(.headline)
                            .padding(.leading)
                            
                        Text("Developer")
                            .font(.subheadline)
                            .padding(.leading)
                    }
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
