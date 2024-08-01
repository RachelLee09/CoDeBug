//
//  Lesson1_Pt2.swift
//  CoDeBug
//
//  Created by Scholar on 8/1/24.
//

import SwiftUI

struct Lesson1_Pt2: View {
  @State var showLessons = false
  var body: some View {
    ZStack{
      Color(red:0.163, green: 0.173, blue: 0.198).ignoresSafeArea()
      VStack {
        HStack {
          Spacer()
          NavigationLink(destination: Lessons().navigationBarBackButtonHidden(true)) {
            ZStack {
              Rectangle()
                .frame(width: 30.0, height: 30.0)
                .foregroundColor(Color(red: 0.93, green: 0.349, blue: 0.343))
                .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
              Text("X")
                .fontWeight(.heavy)
                .foregroundColor(Color(red:0.163, green: 0.173, blue: 0.198))
                .fontDesign(.rounded)
            }
          }
        }.padding()
        ScrollView {
          VStack() {
            NavigationLink(destination: Lesson1_Pt1().navigationBarBackButtonHidden(true)) {
              ZStack {
                Rectangle()
                  .frame(width: 250.0, height: 30.0)
                  .foregroundColor(Color(red: 0.93, green: 0.349, blue: 0.343))
                  .cornerRadius(5.0)
                Text("<< Previous Lesson")
                  .fontWeight(.heavy)
                  .foregroundColor(Color(red:0.163, green: 0.173, blue: 0.198))
                  .font(Font.custom("Courier New", size: 20))
              }
            }.padding()
            Text("Lesson 1")
              .fontWeight(.black)
              .foregroundColor(Color(red: 0.941, green: 0.799, blue: 0.657))
              .font(Font.custom("Courier New", size: 50))
            Text("Data types & Variables")
              .font(Font.custom("Courier New", size: 20))
              .fontWeight(.bold)
              .foregroundColor(Color(red: 0.941, green: 0.799, blue: 0.657))
              .multilineTextAlignment(.center)
          }.padding()
          HStack {
            Text("-> Assigning Datatypes")
              .multilineTextAlignment(.leading)
              .fontWeight(.bold)
              .foregroundColor(Color(red: 0.941, green: 0.799, blue: 0.657))
              .font(Font.custom("Courier New", size: 30))
              .padding(.top)
            Spacer()
          }
          Text("\nIn other languages, you may have seen variables declared without being assigned a value. To do that in Swift, we have to tell the program what data type it should be. For example, maybe I don’t know the name or last number yet, but Swift requires that I declare which ")
            .fontWeight(.bold)
            .foregroundColor(Color(red: 0.498, green: 0.748, blue: 1.002))
            .font(Font.custom("Courier New", size: 20)) +
          Text("type of data")
            .fontWeight(.bold)
            .foregroundColor(Color(red: 0.93, green: 0.349, blue: 0.343))
            .font(Font.custom("Courier New", size: 20)) +
          Text("will later be stored in it, as seen below. var name alone will NOT work.")
            .fontWeight(.bold)
            .foregroundColor(Color(red: 0.498, green: 0.748, blue: 1.002))
            .font(Font.custom("Courier New", size: 20))
          Text("\nvar name : String\nvar lastNumber : Int")
            .fontWeight(.bold)
            .foregroundColor(Color(red: 0.21, green: 0.7, blue: 0.29))
            .font(Font.custom("Courier New", size: 20))
          Text("\nOnce I do have the data I’d like to store, I can re-assign the variable like this:")
            .fontWeight(.bold)
            .foregroundColor(Color(red: 0.498, green: 0.748, blue: 1.002))
            .font(Font.custom("Courier New", size: 20))
          Text("\nvar name : String\nvar lastNumber : Int\n\nname = \"Karlie\"\nlastNumber = 78\n")
            .fontWeight(.bold)
            .foregroundColor(Color(red: 0.21, green: 0.7, blue: 0.29))
            .font(Font.custom("Courier New", size: 20))
          HStack{
            Text("Other Swift data types include:")
              .fontWeight(.bold)
              .foregroundColor(Color(red: 0.498, green: 0.748, blue: 1.002))
              .font(Font.custom("Courier New", size: 20))
            Spacer()
          }
          Text("\nCharacter - a 16-bit Unicode character (ex. \"a\")\nString - represents textual data (ex.\"hello world!\")\nInt - an integer number (ex. 5)\nFloat - represents 32-bit floating-point number (ex. 4.0)\nDouble - represents 64-bit floating-point number (ex. 2.422342412414)\nBool - Any of two values: true or false (ex. false)")
            .fontWeight(.bold)
            .foregroundColor(Color(red: 0.21, green: 0.7, blue: 0.29))
            .font(Font.custom("Courier New", size: 20))
          NavigationLink(destination: Practice1_Question1().navigationBarBackButtonHidden(true)) {
            ZStack {
              Rectangle()
                .frame(width: 250.0, height: 30.0)
                .foregroundColor(Color(red: 0.21, green: 0.7, blue: 0.29))
                .cornerRadius(5.0)
              Text("Start Practice >>")
                .fontWeight(.heavy)
                .foregroundColor(Color(red:0.163, green: 0.173, blue: 0.198))
                .font(Font.custom("Courier New", size: 20))
            }
          }.padding()
        }
      }.padding()
    }
  }
}










#Preview {
    Lesson1_Pt2()
}
