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
                        NavigationLink(destination: Lesson1_Pt1().navigationBarBackButtonHidden(true)) {
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

#Preview {
    Lessons()
}
