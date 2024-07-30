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
        ZStack {
            Color.white
            NavigationStack {
                
                VStack {
                    Text("Lessons")
                    Text("Language Icon (Swift)")
                    
                    HStack {
                        
                        Button {
                            if lessonNum > 1 {
                                lessonNum -= 1
                            }
                        } label: {
                            Text("Previous lesson")
                        }
                        
                        Spacer()
                        Text("Lesson \(lessonNum)")
                        Spacer()
                        
                        Button {
                            if lessonNum < lessons.count {
                                lessonNum += 1
                            }
                        } label: {
                            Text("Next lesson")
                        }
                        
                    }
                    
                    if lessonNum == 1 {
                        NavigationLink(destination: Lesson1().navigationBarBackButtonHidden(true)) {
                            Text("Lesson 1")
                        }
                        NavigationLink(destination: Practice1_Question1().navigationBarBackButtonHidden(true)) {
                            Text("Practice Question 1")
                        }
                        }
                        NavigationLink(destination: Quiz1_Question1().navigationBarBackButtonHidden(true)) {
                            Text("Quiz")
                        }
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
