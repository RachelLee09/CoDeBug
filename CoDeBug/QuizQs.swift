//
//  QuizQs.swift
//  CoDeBug
//
//  Created by Scholar on 8/1/24.
//

import SwiftUI

var quizResults = 0

struct Quiz1_Question1: View {
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
                    Text("Fill in the black so no errors occur")
                        .font(Font.custom("Courier New", size: 30))
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 0.498, green: 0.748, blue: 1.002))
                        .multilineTextAlignment(.center)
                        .padding(.top)
                    Text("[ BLANK ] name = 'Rachel'")
                        .font(Font.custom("Courier New", size: 20))
                        .fontWeight(.semibold)
                        .foregroundColor(Color(red: 0.93, green: 0.349, blue: 0.343, opacity: 1.0))
                        .padding(.top)
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
//                    Button("Check") {
//                        if answer == "var" {
//                            bottomText = "Correct!"
//                            submitted = true
//                        }
//                        else if answer == "Var" {
//                            bottomText = "Incorrect. Remember that code is case-sensitive!"
//                            submitted = false
//                        }
//                        else {
//                            bottomText = "Incorrect. Try again!"
//                            submitted = false
//                        }
//                    }
//                    .font(Font.custom("Courier New", size: 25))
//                    .buttonStyle(.borderedProminent)
//                    .accentColor(Color(red: 0.208, green: 0.7, blue: 0.29))
//                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
//
//
//                    if submitted == true{
                    Button("Submit") {
                        submitted = true
                        if answer == "var"{
                            quizResults += 1
                        }
                    }
                    .font(Font.custom("Courier New", size: 25))
                    .buttonStyle(.borderedProminent)
                    .accentColor(Color(red: 0.208, green: 0.7, blue: 0.29))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)

                    if submitted == true{
                        NavigationLink(destination: Quiz1_Question2()) {
                            Text("Next Question")
                                .font(Font.custom("Courier New", size: 24))
                                .fontWeight(.semibold)
                                .foregroundColor(Color(red: 0.21, green: 0.7, blue: 0.29))
                        }
                        }
                    }
                }

        } .accentColor(Color(red: 0.163, green: 0.173, blue: 0.198))
        }
    }
//}

struct Quiz1_Question2: View {
    @State var choice = 0
    @State var submitted = false
    var body: some View {
        NavigationStack {
            ZStack {
                Color(red:0.163, green: 0.173, blue: 0.198)
                    .ignoresSafeArea()
                VStack(alignment: .center) {
                    // NavigationLink(destination: Lessons().navigationBarBackButtonHidden(true)) {
//                    Text("< Back")
//                        .font(Font.custom("Courier New", size: 25))
//                        .fontWeight(.semibold)
//                        .foregroundColor(Color(red: 0.93, green: 0.349, blue: 0.343))
//                        .offset(x:-135, y:-50)
                    
                    Text("Question 2:")
                        .font(Font.custom("Courier New", size: 30))
                        .fontWeight(.semibold)
                        .foregroundColor(Color(red: 1.001, green: 0.849, blue: 0.699))
                        .padding(.vertical)
                    Text("What option fills in the blank so no error occurs?")
                        .font(Font.custom("Courier New", size: 30))
                        .fontWeight(.semibold)
                        .foregroundColor(Color(red: 1.001, green: 0.849, blue: 0.699, opacity: 1.0))
                        .multilineTextAlignment(.center)
                        .padding(.all)
                    Text("var old: [ BLANK ]")
                        .font(Font.custom("Courier New", size: 20))
                        .fontWeight(.semibold)
                        .foregroundColor(Color(red: 0.93, green: 0.349, blue: 0.343, opacity: 1.0))
                    Text("old = false")
                        .font(Font.custom("Courier New", size: 20))
                        .fontWeight(.semibold)
                        .foregroundColor(Color(red: 0.93, green: 0.349, blue: 0.343, opacity: 1.0))
                    Button("A. String") {
                        choice = 1
                    }
                    .padding(.all)
                    .font(Font.custom("Courier New", size: 20))
                    .fontWeight(.semibold)
                    .foregroundStyle(Color(red: 0.498, green: 0.748, blue: 1.002))
                    .buttonStyle(.bordered)
                    .tint(Color(red: 0.48, green: 0.50, blue: 0.57))
                    
                    Button("B. Int") {
                        
                        choice = 2
                    }
                    .padding(.all)
                    .font(Font.custom("Courier New", size: 20))
                    .fontWeight(.semibold)
                    .foregroundStyle(Color(red: 0.498, green: 0.748, blue: 1.002))
                    .buttonStyle(.bordered)
                    .tint(Color(red: 0.48, green: 0.50, blue: 0.57))
                    
                    Button("C. Bool") {
                        quizResults += 1
                        choice = 3
                    }
                    .padding(.all)
                    .font(Font.custom("Courier New", size: 20))
                    .fontWeight(.semibold)
                    .foregroundStyle(Color(red: 0.498, green: 0.748, blue: 1.002))
                    .buttonStyle(.bordered)
                    .tint(Color(red: 0.48, green: 0.50, blue: 0.57))
                    
                    Button("D. Double") {
                        
                        choice = 4
                    }
                    .padding(.all)
                    .font(Font.custom("Courier New", size: 20))
                    .fontWeight(.semibold)
                    .foregroundStyle(Color(red: 0.498, green: 0.748, blue: 1.002))
                    .buttonStyle(.bordered)
                    .tint(Color(red: 0.48, green: 0.50, blue: 0.57))
                    
                    
                    //                Button {
                    //                    submitted = true
                    //                } label: {
                    //                    Text("Submit")
                    //                }
                    //                .fontWeight(.semibold)
                    //                .foregroundColor(Color.white)
                    //                .buttonStyle(.borderedProminent)
                    //                .tint(Color(red: 0.21, green: 0.7, blue: 0.29))
                    // if submitted {
                    //if choice == 4 {
                    Button("Submit") {
                        submitted = true
                    }
                    .font(Font.custom("Courier New", size: 25))
                    .buttonStyle(.borderedProminent)
                    .accentColor(Color(red: 0.208, green: 0.7, blue: 0.29))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    
                    if submitted == true{
                        NavigationLink(destination: Quiz1_Question3().navigationBarBackButtonHidden(true)) {
                            Text("Next question")
                                .font(Font.custom("Courier New", size: 20))
                                .fontWeight(.semibold)
                                .foregroundColor(Color(red: 0.21, green: 0.7, blue: 0.29, opacity: 1.0))
                        }
                        
                    }
                    
                    //                } else if choice == 1 {
                    //                    Text("Try again")
                    //                        .font(Font.custom("Courier New", size: 20))
                    //                        .fontWeight(.semibold)
                    //                    .foregroundColor(Color(red: 0.93, green: 0.349, blue: 0.343))                } else if choice == 2 {
                    //                    Text("Try again")
                    //                            .font(Font.custom("Courier New", size: 20))
                    //                            .fontWeight(.semibold)
                    //                        .foregroundColor(Color(red: 0.93, green: 0.349, blue: 0.343))
                    //                } else if choice == 3 {
                    //                    Text("Try again")
                    //                        .font(Font.custom("Courier New", size: 20))
                    //                        .fontWeight(.semibold)
                    //                    .foregroundColor(Color(red: 0.93, green: 0.349, blue: 0.343))
                }
                .padding()
            }
        }
    }
    // }
    //}
    // }
    // }
}

struct Quiz1_Question3: View {
    @State private var answer = ""
    @State private var menuName = "Choose the correct answer."
    @State private var submitted = false
    @State private var bottomText = ""
    var body: some View {
        ZStack{
            Color(red: 0.163, green: 0.173, blue: 0.198)
                .ignoresSafeArea()
            VStack(alignment: .center) {
                Text("Question 3:")
                    .font(Font.custom("Courier New", size: 30))
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 1.0, green: 0.849, blue: 0.699))
                    .padding(.bottom)
                ZStack {
                    List{
                        Menu(menuName) {
                            Button("var number = 1") {
                                menuName = "var number = 1"
                                quizResults += 1
                            }
                            Button("variable number = 1"){
                                menuName = "variable number = 1"
                            }
                            Button("Var number = 2"){
                                menuName = "Var number = 2"
                            }
                        }
                        .listRowBackground(Color.clear)
                        .listRowSeparator(.hidden)
                        .font(Font.custom("Courier New", size: 18))
                        .fontWeight(.semibold)
                        .accentColor(.white)
                    }
                    .background(Rectangle()
                        .foregroundColor(Color(red: 0.184, green: 0.196, blue: 0.222 )))
                }
                .background(Rectangle()
                    .foregroundColor(Color(red: 0.184, green: 0.196, blue: 0.222)))
                .cornerRadius(20)
                .shadow(radius:30)
                .padding([.leading, .bottom, .trailing])
                .listStyle(.plain)
                .frame(height: 70.0)
                
                Text("is the correct syntax to declare a variable called number and assign it a value of 1. ")
                    .font(Font.custom("Courier New", size: 30))
                    .fontWeight(.semibold)
                    .foregroundColor(Color(red: 0.498, green: 0.748, blue: 1.002))
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                
                Text("")
                Text(bottomText)
                    .font(Font.custom("Courier New", size: 20))
                    .fontWeight(.semibold)
                    .foregroundColor(Color(red: 1.0, green: 0.849, blue: 0.699))
                
//                Button("Check") {
//                    if menuName == "'blue'"{
//                        bottomText = "Correct!"
//                            submitted = true
//                        }
//
//                    else {
//                        bottomText = "Incorrect. Try again!"
//                            submitted = false
//                    }
//                }
//                .font(Font.custom("Courier New", size: 30))
//                .buttonStyle(.borderedProminent)
//                .accentColor(Color(red: 0.208, green: 0.7, blue: 0.29))
//                .fontWeight(.bold)
//
//                if submitted{
                Button("Submit") {
                    submitted = true
                }
                .font(Font.custom("Courier New", size: 25))
                .buttonStyle(.borderedProminent)
                .accentColor(Color(red: 0.208, green: 0.7, blue: 0.29))
                .fontWeight(.bold)
                
                if submitted{
                    NavigationLink(destination: QuizResults()) {
                        Text("Quiz Results")
                            .font(Font.custom("Courier New", size: 20))
                            .fontWeight(.semibold)
                            .foregroundColor(Color(red: 0.21, green: 0.7, blue: 0.29, opacity: 1.0))
                            .multilineTextAlignment(.center)
                    }
                    }
                    
                }
            .padding()
            }
        }
    }
//}

struct QuizResults: View {
    var body: some View {
        ZStack{
            Color(red: 0.163, green: 0.173, blue: 0.198)
                .ignoresSafeArea()
            VStack(alignment: .center){
                Text("Congratulation! WOOO! You have completed Lesson 1.")
                    .font(Font.custom("Courier New", size: 24))
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 1.0, green: 0.849, blue: 0.699))
                    .multilineTextAlignment(.center)
                Text("")
                Text("Your quiz results are:")
                    .font(Font.custom("Courier New", size: 20))
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 0.498, green: 0.748, blue: 1.002))
                    .multilineTextAlignment(.center)
                Text("")
                Text("\(quizResults) out of 3! Nice Job!")
                    .font(Font.custom("Courier New", size: 30))
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 0.209, green: 0.692, blue: 0.287))
                    .multilineTextAlignment(.center)
                Text("")
                Text("")
                Image("bugteach")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                Text("")
                NavigationLink(destination: Lessons()) {
                    Text("Return to Lessons")
                        .font(Font.custom("Courier New", size: 20))
                        .fontWeight(.semibold)
                        .foregroundColor(Color(red: 0.21, green: 0.7, blue: 0.29, opacity: 1.0))
                        .multilineTextAlignment(.center)
                }
            }
            .padding(.all)
        }
    }
}

#Preview {
    Quiz1_Question1()
}
