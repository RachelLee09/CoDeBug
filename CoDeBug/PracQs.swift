//
//  PracQs.swift
//  CoDeBug
//
//  Created by Scholar on 8/1/24.
//

import SwiftUI

struct Practice1_Question1: View {
    @State private var answer = ""
        .lowercased()
    @State private var submitted = false
    @State private var bottomText = ""
    var body: some View {
        NavigationStack{
            ZStack{
                Color(red: 0.163, green: 0.173, blue: 0.198)
                    .ignoresSafeArea()
                VStack(alignment: .center) {
                    Text("Question 1:")
                        .font(Font.custom("Courier New", size: 35))
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 1.001, green: 0.849, blue: 0.699))
                    Text("")
                    Text("What is the keyword used to declare a variable?")
                        .font(Font.custom("Courier New", size: 30))
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 0.498, green: 0.748, blue: 1.002))
                        .multilineTextAlignment(.center)
                    TextField("Type answer here...", text: $answer)
                        .multilineTextAlignment(.center)
                        .font(Font.custom("Courier New", size: 24))
                        .border(Color.gray, width:0.7)
                        .textFieldStyle(.roundedBorder)
                        .textCase(.lowercase)
                        .padding()
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    
                    Text(bottomText)
                        .font(Font.custom("Courier New", size: 24))
                        .fontWeight(.heavy)
                        .foregroundColor(Color(red: 1.001, green: 0.849, blue: 0.699))
                        .multilineTextAlignment(.center)
                    Button("Check") {
                        if answer == "var" {
                            bottomText = "Correct!"
                            submitted = true
                        }
                        else if answer == "Var" {
                            bottomText = "Incorrect. Remember that code is case-sensitive!"
                            submitted = false
                        }
                        else {
                            bottomText = "Incorrect. Try again!"
                            submitted = false
                        }
                    }
                    .font(Font.custom("Courier New", size: 25))
                    .buttonStyle(.borderedProminent)
                    .accentColor(Color(red: 0.208, green: 0.7, blue: 0.29))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    
                    
                    if submitted == true{
                        NavigationLink(destination: Practice1_Question2()) {
                            Text("Next Question")
                                .font(Font.custom("Courier New", size: 24))
                                .fontWeight(.semibold)
                                .foregroundColor(Color(red: 0.21, green: 0.7, blue: 0.29))
                        }
                    }
                }
                .padding()
            }
        }
    }
}
struct Practice1_Question2: View {
    @State private var answer = ""
    @State private var menuName = "Choose the correct answer."
    @State private var submitted = false
    @State private var bottomText = ""
    var body: some View {
        ZStack{
            Color(red: 0.163, green: 0.173, blue: 0.198)
                .ignoresSafeArea()
            VStack(alignment: .center) {
                Text("Question 2:")
                    .font(Font.custom("Courier New", size: 35))
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 1.0, green: 0.849, blue: 0.699))
                Text("")
                Text("Fill in the blank:")
                    .font(Font.custom("Courier New", size: 30))
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 0.498, green: 0.748, blue: 1.002))
                
                ZStack{
                    List{
                        Menu(menuName) {
                            Button("Long"){
                                menuName = "Long"
                            }
                            .font(Font.custom("Courier New", size: 20))
                            
                            Button("Character"){
                                menuName = "Character"
                            }
                            .font(Font.custom("Courier New", size: 20))
                            
                            Button("Bool"){
                                menuName = "Bool"
                            }
                            .font(Font.custom("Courier New", size: 20))
                        }
                        .listRowBackground(Color.clear)
                        .listRowSeparator(.hidden)
                        .accentColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                        .font(Font.custom("Courier New", size: 18))
                        .fontWeight(.semibold)
                    }
                    .background(Rectangle()
                        .foregroundColor(Color(red: 0.184, green: 0.196, blue: 0.222)))
                    .cornerRadius(20)
                    .shadow(radius:30)
                    .padding([.leading, .bottom, .trailing])
                    .listStyle(.plain)
                    .frame(height: 70.0)
                }
                
                Text("is NOT a valid data type.")
                    .font(Font.custom("Courier New", size: 30))
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 0.498, green: 0.748, blue: 1.002))
                    .multilineTextAlignment(.center)
                
                Text("")
                Text(bottomText)
                    .font(Font.custom("Courier New", size: 25))
                    .fontWeight(.heavy)
                    .foregroundColor(Color(red: 1.0, green: 0.849, blue: 0.699))
                Button("Check") {
                    if menuName == "Long"{
                        bottomText = "Correct!"
                            submitted = true
                        }
                    else {
                        bottomText = "Incorrect. Try again!"
                            submitted = false
                    }
                }
                .font(Font.custom("Courier New", size: 25))
                .buttonStyle(.borderedProminent)
                .accentColor(Color(red: 0.208, green: 0.7, blue: 0.29))
                .fontWeight(.bold)
                
                if submitted{
                    NavigationLink(destination: Practice1_Question3()) {
                        Text("Next Question")
                            .font(Font.custom("Courier New", size: 25))
                            .fontWeight(.semibold)
                            .foregroundColor(Color(red: 0.21, green: 0.7, blue: 0.29))
                    }
                }
            }
            .padding()
        }
    }
}

struct Practice1_Question3: View {
    @State var choice = 0
    @State var submitted = false
    @State private var correctText = ""
    var body: some View {
        ZStack {
            Color(red:0.163, green: 0.173, blue: 0.198)
                .ignoresSafeArea()
            VStack {
                
                Text("Question 3:")
                    .font(Font.custom("Courier New", size: 30))
                    .fontWeight(.semibold)
                    .foregroundColor(Color(red: 1.001, green: 0.849, blue: 0.699))
                    .padding(.vertical)
                Text("Which one of these will give an error?")
                    .font(Font.custom("Courier New", size: 30))
                    .fontWeight(.semibold)
                    .foregroundColor(Color(red: 1.001, green: 0.849, blue: 0.699, opacity: 1.0))
                Button("A. var age: Int age = 14") {
                    submitted = false
                    choice = 1
                }
                .padding(.all)
                .font(Font.custom("Courier New", size: 20))
                .fontWeight(.semibold)
                .foregroundStyle(Color(red: 0.498, green: 0.748, blue: 1.002))
                .buttonStyle(.bordered)
                .tint(Color(red: 0.48, green: 0.50, blue: 0.57))
                
                Button("B. var Double = 4.0") {
                    if submitted == true{
                        submitted = false }
                    choice = 2
                }
                .padding(.all)
                .font(Font.custom("Courier New", size: 20))
                .fontWeight(.semibold)
                .foregroundStyle(Color(red: 0.498, green: 0.748, blue: 1.002))
                .buttonStyle(.bordered)
                .tint(Color(red: 0.48, green: 0.50, blue: 0.57))

                Button("C. var isDayTime = false") {
                    if submitted{
                        submitted = false
                    }
                    choice = 3
                }
                .padding(.all)
                .font(Font.custom("Courier New", size: 20))
                .fontWeight(.semibold)
                .foregroundStyle(Color(red: 0.498, green: 0.748, blue: 1.002))
                .buttonStyle(.bordered)
                .tint(Color(red: 0.48, green: 0.50, blue: 0.57))

                Button("D. var name = 'Alex'") {
                    if submitted{
                        submitted = true }
                    choice = 4
                }
                .padding(.all)
                .font(Font.custom("Courier New", size: 20))
                .fontWeight(.semibold)
                .foregroundStyle(Color(red: 0.498, green: 0.748, blue: 1.002))
                .buttonStyle(.bordered)
                .tint(Color(red: 0.48, green: 0.50, blue: 0.57))

                
                Text(correctText)
                    .font(Font.custom("Courier New", size: 24))
                    .foregroundColor(Color(red: 1.001, green: 0.849, blue: 0.699))
                    .fontWeight(.heavy)
                
                Button("Check") {
                    if choice == 4{
                        correctText = "Correct!"
                        submitted = true
                        
                    }
                    else {
                        submitted = false
                        correctText = "Try again!"
                    }
                }
                .fontWeight(.semibold)
                .font(Font.custom("Courier New", size: 30))
                .foregroundColor(Color.white)
                .buttonStyle(.borderedProminent)
                .tint(Color(red: 0.21, green: 0.7, blue: 0.29))
                
                if submitted {
                    NavigationLink(destination: Lessons().navigationBarBackButtonHidden(true)) {
                        Text("Return to Lessons")
                            .font(Font.custom("Courier New", size: 20))
                            .fontWeight(.semibold)
                            .foregroundColor(Color(red: 0.21, green: 0.7, blue: 0.29, opacity: 1.0))
                            .padding()
                    }
                    NavigationLink(destination:Quiz1_Question1().navigationBarBackButtonHidden(true)) {
                        Text("Take Lesson 1 Quiz")
                            .font(Font.custom("Courier New", size: 20))
                            .fontWeight(.semibold)
                            .foregroundColor(Color(red: 0.21, green: 0.7, blue: 0.29, opacity: 1.0))
                            .padding()
                    }
                }

                }
            .padding()
            }
        }
        
    }

        #Preview {
            Practice1_Question1()
        }

