//
//  KodeWithKlossy.swift
//  CoDeBug
//
//  Created by Scholar on 7/30/24.
//

import SwiftUI

struct KodeWithKlossy: View {
    var body: some View {
        ZStack{
            Color(red: 0.885, green: 0.996, blue: 0.027)
                .ignoresSafeArea()
            VStack{
                Text("Kode With Klossy")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .foregroundColor(Color(red: 0.003, green: 0.371, blue: 0.272))
                Text("MISSION: Ensure young people everywhere have the opportunity to learn about technology and to achieve gender equity in economic opportunity.")
                    .foregroundColor(Color(red: 0.003, green: 0.371, blue: 0.272))
                    .multilineTextAlignment(.center)
            }
            .padding()
        }
    }
}

#Preview {
    KodeWithKlossy()
}
