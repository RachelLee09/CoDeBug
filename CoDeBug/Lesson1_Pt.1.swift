//
//  Lesson1_Pt.1.swift
//  CoDeBug
//
//  Created by Scholar on 8/1/24.
//

import SwiftUI

struct Lesson1_Pt1: View {
  @State var showLessons = false
  var body: some View {
          ZStack{
              Color(red:0.163, green: 0.173, blue: 0.198).ignoresSafeArea()
              VStack(alignment: .leading) {
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
                      VStack(alignment: .leading) {
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
                      Text("In most programming languages, including Swift, values can be saved to variables. Unlike in math class, where we would assign a number to x and y, variables in programming are much more flexible.")
                          .fontWeight(.bold)
                          .foregroundColor(Color(red: 0.21, green: 0.7, blue: 0.29))
                          .font(Font.custom("Courier New", size: 20))
                      HStack {
                          Text("-> Declaring Variables")
                              .multilineTextAlignment(.leading)
                              .fontWeight(.bold)
                              .foregroundColor(Color(red: 0.941, green: 0.799, blue: 0.657))
                              .font(Font.custom("Courier New", size: 30))
                              .padding(.top)
                          Spacer()
                      }
                      Text("\n\tTo define a variable, we use the ")
                          .fontWeight(.bold)
                          .foregroundColor(Color(red: 0.498, green: 0.748, blue: 1.002))
                          .font(Font.custom("Courier New", size: 20)) +
                      Text("var")
                          .fontWeight(.bold)
                          .foregroundColor(Color(red: 0.93, green: 0.349, blue: 0.343))
                          .font(Font.custom("Courier New", size: 20)) +
                      Text(" keyword, followed by a name we choose for the variable. If you’re making a variable name that has two words, uppercase the first letter of the second word. This is called ")
                          .fontWeight(.bold)
                          .foregroundColor(Color(red: 0.498, green: 0.748, blue: 1.002))
                          .font(Font.custom("Courier New", size: 20)) +
                      Text("camelCase")
                          .fontWeight(.bold)
                          .foregroundColor(Color(red: 0.93, green: 0.349, blue: 0.343))
                          .font(Font.custom("Courier New", size: 20)) +
                      Text(".")
                          .fontWeight(.bold)
                          .foregroundColor(Color(red: 0.498, green: 0.748, blue: 1.002))
                          .font(Font.custom("Courier New", size: 20))
                      Text("\n\tAfter naming the variable, we use the ")
                          .fontWeight(.bold)
                          .foregroundColor(Color(red: 0.498, green: 0.748, blue: 1.002))
                          .font(Font.custom("Courier New", size: 20)) +
                      Text("=")
                          .fontWeight(.bold)
                          .foregroundColor(Color(red: 0.93, green: 0.349, blue: 0.343))
                          .font(Font.custom("Courier New", size: 20)) +
                      Text(" sign to show what value the variable will hold. Below are some examples of variables that are ")
                          .fontWeight(.bold)
                          .foregroundColor(Color(red: 0.498, green: 0.748, blue: 1.002))
                          .font(Font.custom("Courier New", size: 20)) +
                      Text("properly")
                          .fontWeight(.bold)
                          .foregroundColor(Color(red: 0.93, green: 0.349, blue: 0.343))
                          .font(Font.custom("Courier New", size: 20))
                          .italic() +
                      Text(" declared:")
                          .fontWeight(.bold)
                          .foregroundColor(Color(red: 0.498, green: 0.748, blue: 1.002))
                          .font(Font.custom("Courier New", size: 20))
                      Text("\nvar eyeColor = “blue”\nvar age = 16\nvar hungry = false")
                          .fontWeight(.bold)
                          .foregroundColor(Color(red: 0.21, green: 0.7, blue: 0.29))
                          .font(Font.custom("Courier New", size: 20))
                      Text("\nBelow are some examples of variables that are ")
                          .fontWeight(.bold)
                          .foregroundColor(Color(red: 0.498, green: 0.748, blue: 1.002))
                          .font(Font.custom("Courier New", size: 20)) +
                      Text("not properly")
                          .fontWeight(.bold)
                          .foregroundColor(Color(red: 0.93, green: 0.349, blue: 0.343))
                          .font(Font.custom("Courier New", size: 20))
                          .italic() +
                      Text(" declared:")
                          .fontWeight(.bold)
                          .foregroundColor(Color(red: 0.498, green: 0.748, blue: 1.002))
                          .font(Font.custom("Courier New", size: 20))
                      Text("\nVar name = “Eden”\nGPA = 4.0\nvar day time = false")
                          .fontWeight(.bold)
                          .foregroundColor(Color(red: 0.21, green: 0.7, blue: 0.29))
                          .font(Font.custom("Courier New", size: 20))
                      NavigationLink(destination: Lesson1_Pt2().navigationBarBackButtonHidden(true)) {
                          ZStack {
                            Rectangle()
                              .frame(width: 250.0, height: 30.0)
                              .foregroundColor(Color(red: 0.21, green: 0.7, blue: 0.29))
                              .cornerRadius(5.0)
                            Text("Next Lesson >>")
                              .fontWeight(.heavy)
                              .foregroundColor(Color(red:0.163, green: 0.173, blue: 0.198))
                              .font(Font.custom("Courier New", size: 20))
                          }
                      }.padding()
                  }
                  if showLessons {
                      Lessons()
                  }
              }.padding()
          }
      }
  }


#Preview {
    Lesson1_Pt1()
}
