//
//  ContentView.swift
//  CoDeBug
//
//  Created by Scholar on 7/29/24.
//
//
//  ContentView.swift
//  CoDeBug
//
//  Created by Scholar on 7/29/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                Text("Welcome to")
                    .font(.custom("Courier New", size: 35))
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(Color(hue: 0.547, saturation: 1.0, brightness: 1.0))
                Text("CoDeBug")
                    .font(.custom("Courier New", size: 65))
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color(hue: 0.084, saturation: 0.331, brightness: 0.794))
                Spacer()
                HStack {
                    Image("bugjump")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .padding(.all)
                    Spacer()
                }
                
            }
            .background(Rectangle().frame(width: 1000, height: 1000))
            .foregroundColor(Color(red: 0.161, green: 0.173, blue: 0.198))
            .toolbar {
                ToolbarItemGroup(placement: .status) {
                    NavigationLink(destination: Lessons()) {
                        Image("brain")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 60.0, height: 60.0)
                    }
                    NavigationLink(destination: Resources()) {
                        Image("list")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 60.0, height: 60.0)
                    }
                }
                
            }
        }
    }
}

#Preview {
    ContentView()
}
