//
//  Lessons.swift
//  CoDeBug
//
//  Created by Scholar on 7/30/24.
//

import SwiftUI

struct Lessons: View {
    @State var lessons = [1]
    @State var lessonNum = 1
    var body: some View {
        NavigationStack {
            ZStack {
            Color(red: 0.163, green: 0.173, blue: 0.198)
                .ignoresSafeArea()
            
                
                VStack(alignment: .center) {
                    NavigationLink(destination: ContentView()) {
                        
                            Image("home")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 40.0, height: 40.0)
                                
                        }

                    Text("Lesson Plant")
                        .font(Font.custom("Courier New", size: 50))
                        .fontWeight(.semibold)
                        .foregroundColor(Color(red: 1.001, green: 0.849, blue: 0.699))
                        
                    
                    Image("swift")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 80.0, height: 80.0)
                        .cornerRadius(15)
                    Spacer()
                    Text("Lesson \(lessonNum)")
                        .font(Font.custom("Courier New", size: 40))
                        .fontWeight(.semibold)
                        .foregroundColor(Color(red: 0.21, green: 0.7, blue: 0.29))
                    Spacer()
                    HStack {
                        
                        Button {
                            if lessonNum > 1 {
                                lessonNum -= 1
                            }
                        } label: {
                            Image("arrowL")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .fontWeight(.semibold)
                                .foregroundColor(Color.black)
                        }
                        .frame(minWidth: 0, maxWidth: 86, minHeight: 0, maxHeight: 100)
                        .padding(.horizontal)
                        .foregroundStyle(.blue)
                        .background(Color(red: 0.498, green: 0.748, blue: 1.002))
                        .clipShape(Capsule())
                        
                        //Spacer()
                        
                        Text("                  ")
                        
                        Button {
                            if lessonNum < lessons.count {
                                lessonNum += 1
                            }
                        } label: {
                            Image("arrowR")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .fontWeight(.semibold)
                                .foregroundColor(Color.black)
                        }
                        .frame(minWidth: 0, maxWidth: 90, minHeight: 0, maxHeight: 100)
                        .padding(.horizontal)
                        .foregroundStyle(.blue)
                        .background(Color(red: 0.498, green: 0.748, blue: 1.002))
                        .clipShape(Capsule())
                        
                        
                    }.padding(.bottom)
                    
                    if lessonNum == 1 {
                        NavigationLink(destination: Lesson1().navigationBarBackButtonHidden(true)) {
                            Text("Data Types & Variables")
                                .font(Font.custom("Courier New", size:30))
                                .fontWeight(.semibold)
                                .foregroundColor(Color(red: 0.21, green: 0.7, blue: 0.29))
                        }
                        Spacer()
                        NavigationLink(destination: Practice1_Question1().navigationBarBackButtonHidden(true)) {
                            Text("Practice Question 1")
                                .font(Font.custom("Courier New", size:30))
                                .fontWeight(.semibold)
                                .foregroundColor(Color(red: 0.21, green: 0.7, blue: 0.29))
                        }
                        Spacer()
                    }
                    NavigationLink(destination: Quiz1_Question1().navigationBarBackButtonHidden(true)) {
                        Text("Quiz")
                            .font(Font.custom("Courier New", size:30))
                            .fontWeight(.semibold)
                            .foregroundColor(Color(red: 0.93, green: 0.349, blue: 0.343))
                    }
                    Spacer()
                }
            }
        }
        }
    }


struct Lesson1: View {
    @State var showLessons = false
    var body: some View {
        ZStack{
            VStack {
                NavigationLink(destination: Lessons().navigationBarBackButtonHidden(true)) {
                    Text("X")
                }
                Text("Lesson 1")
                    .padding(.horizontal)
                Text("Blah blah blah")
                NavigationLink(destination: Practice1_Question1().navigationBarBackButtonHidden(true)) {
                    Text("Start practice")
                }

            }
            if showLessons {
                Lessons()
            }
        }
    }
}

struct Quiz1_Question1: View {
    @State var answer = ""
    var body : some View {
        VStack {
            NavigationLink(destination: Lessons().navigationBarBackButtonHidden(true)) {
                Text("X")
            }
            Text("Question 1")
            Text("<insert question>")
            TextField("Enter <insert smth>", text: $answer)
            
            if answer == "the answer" {
                NavigationLink(destination: Lessons().navigationBarBackButtonHidden(true)) {
                    Text("Submit")
                }
            } else if answer == "" {
                Text("Enter an answer")
            } else {
                NavigationLink(destination: Wrong1().navigationBarBackButtonHidden(true)) {
                    Text("Submit")
                }
            }
        }
    }
}

struct Wrong1: View {
    var body: some View {
        VStack {
            NavigationLink(destination: Lessons().navigationBarBackButtonHidden(true)) {
                Text("X")
            }
            Text("YOU GOT THAT WRONGGG")
            NavigationLink(destination: Practice1_Question1().navigationBarBackButtonHidden(true)) {
                Text("Restart Quiz")
            }
        }
    }
}

struct Practice1_Question1: View {
    @State var choice = 0
    @State var submitted = false
    var body: some View {
        VStack {
            NavigationLink(destination: Lessons().navigationBarBackButtonHidden(true)) {
                Text("X")
            }
            Text("Question 1")
            Text("<insert question>")
            Button("Option 1") {
                if submitted {
                    submitted = false
                }
                choice = 1
            }
            Button("Option 2") {
                if submitted {
                    submitted = false
                }
                choice = 2
            }
            Button("Option 3") {
                if submitted {
                    submitted = false
                }
                choice = 3
            }
            Button("Option 4") {
                if submitted {
                    submitted = false
                }
                choice = 4
            }
            
            Button {
                submitted = true
            } label: {
                Text("Submit")
            }
            if submitted {
                if choice == 4 {
                    NavigationLink(destination: Lessons().navigationBarBackButtonHidden(true)) {
                        Text("Next question")
                    }
                } else if choice == 1 {
                    Text("Try again")
                } else if choice == 2 {
                    Text("Try again")
                } else if choice == 3 {
                    Text("Try again")
                }
            }
        }
    }
}

#Preview {
    Lessons()
}
