//
//  ContentView.swift
//  CoDeBug
//
//  Created by Scholar on 7/29/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationLink(destination: Lessons().navigationBarBackButtonHidden(true)) {
            Text("Go to")
            
            
        }
    }
}

#Preview {
    ContentView()
}
