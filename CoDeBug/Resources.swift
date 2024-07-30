//
//  Resources.swift
//  CoDeBug
//
//  Created by Scholar on 7/30/24.
//

import SwiftUI

struct Resources: View {
    var body: some View {
        ZStack{
            Color(red: 0.163, green: 0.173, blue: 0.198)
                .ignoresSafeArea()
            VStack(alignment: .leading){
                Text("Resources")
                    .font(.system(size:30))
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 0.941, green: 0.799, blue: 0.657))
                Text("Coding opportunities near you:")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundColor(Color(red: 0.498, green: 0.748, blue: 1.002))
                List{
                    NavigationLink(destination: KodeWithKlossy()) {
                        Text("Kode With Klossy")
                    }
                    NavigationLink(destination: GirlsWhoCode()) {
                        Text("Girls Who Code")
                    }
                }
                .cornerRadius(15)
                .frame(height: 150.0)
                Text("Websites to practice code:")
                    .font(.title3)
                    .foregroundColor(Color(red: 0.93, green: 0.349, blue: 0.343))
                Text("")
                Text("Coding in real life:")
                    .font(.title3)
                    .foregroundColor(Color(red: 0.21, green: 0.7, blue: 0.29))
                Text("")
            }
            .padding()
        }
        }
    }

#Preview {
    Resources()
}
