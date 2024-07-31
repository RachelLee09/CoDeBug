//
//  GirlsWhoCode.swift
//  CoDeBug
//
//  Created by Scholar on 7/30/24.
//

import SwiftUI

struct GirlsWhoCode: View {
    var body: some View {
        ZStack{
           Color(red: 0.901, green: 0.971, blue: 1.0)
                .ignoresSafeArea()
            VStack{
                Text("Girls Who Code")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 0.056, green: 0.613, blue: 0.565))
                Text("MISSION: Close the gender gap in technology and alter the world's perception on the representation of a programmer.")
                    .foregroundColor(Color(red: 0.056, green: 0.613, blue: 0.565))
                    .multilineTextAlignment(.center)
            }
            .padding()
        }
    }
}

#Preview {
    GirlsWhoCode()
}
