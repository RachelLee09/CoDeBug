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
            ScrollView {
                
                NavigationStack{
                    VStack(alignment: .leading){
                        Text("RESOURCES")
                            .font(Font.custom("Courier New", size:35))
                            .fontWeight(.semibold)
                            .foregroundColor(Color(red: 0.941, green: 0.799, blue: 0.657))
                        
                        Text("____________________")
                            .fontWeight(.black)
                            .foregroundColor(Color(red: 0.941, green: 0.799, blue: 0.657))
                            .padding(.bottom)
                        
                        VStack(alignment: .leading){
                            Text("Coding opportunities near you:")
                                .font(Font.custom("Courier New", size:18))
                                .fontWeight(.semibold)
                                .foregroundColor(Color(red: 0.498, green: 0.748, blue: 1.002))
                                .padding(.all)
                            List{
                                NavigationLink(destination: KodeWithKlossy()) {
                                    Text("Kode With Klossy")
                                        .font(Font.custom("Courier New", size:20))
                                        .fontWeight(.semibold)
                                        .foregroundColor(Color(red: 0.494, green: 0.748, blue: 1.002))
                                }
                                .listRowBackground(Color.clear)
                                .listRowSeparator(.hidden)
                            }
                            .background(Rectangle()
                                .foregroundColor(Color(red: 0.186, green: 0.196, blue: 0.222)))
                            .cornerRadius(20)
                            .shadow(radius:30)
                            .padding([.leading, .bottom, .trailing])
                            .listStyle(.plain)
                            .frame(height: 65.0)
                            
                            List{
                                NavigationLink(destination: GirlsWhoCode()) {
                                    Text("Girls Who Code")
                                        .font(Font.custom("Courier New", size:20))
                                        .fontWeight(.semibold)
                                        .foregroundColor(Color(red: 0.498, green: 0.748, blue: 1.002))
                                }
                                .listRowBackground(Color.clear)
                                .listRowSeparator(.hidden)
                                
                            }
                            .background(Rectangle()
                                .foregroundColor(Color(red: 0.184, green: 0.196, blue: 0.222)))
                            .cornerRadius(20)
                            .shadow(radius:30)
                            .padding([.leading, .bottom, .trailing])
                            .scrollContentBackground(.hidden)
                            .listStyle(.plain)
                            .frame(height: 65.0)
                        }
                        .frame(width: nil, height: 190.0)
                        .background(Rectangle()
                            .foregroundColor(Color(red: 0.186, green: 0.196, blue: 0.222)))
                        .cornerRadius(10)
                        .shadow(radius:30)
                        
                        VStack(alignment: .leading){
                            Text("Websites to practice code:")
                                .font(Font.custom("Courier New", size:18))
                                .fontWeight(.semibold)
                                .foregroundColor(Color(red: 0.93, green: 0.349, blue: 0.343))
                                .padding(.bottom)
                            HStack(alignment: .top){
                                Text("Replit:")
                                    .font(Font.custom("Courier New", size:16))
                                    .fontWeight(.black)
                                    .foregroundColor(Color(red: 0.93, green: 0.349, blue: 0.343))
                                Text("Learn more at replit.com.")
                                    .font(Font.custom("Courier New", size:16))
                                    .fontWeight(.black)
                                    .foregroundColor(Color(red: 0.93, green: 0.349, blue: 0.343))
                            }
                            HStack(alignment: .top){
                                Text("NeetCode:")
                                    .font(Font.custom("Courier New", size:16))
                                    .fontWeight(.black)
                                    .foregroundColor(Color(red: 0.93, green: 0.349, blue: 0.343))
                                Text("Learn more at neetcode.io.")
                                    .font(Font.custom("Courier New", size:16))
                                    .fontWeight(.black)
                                    .foregroundColor(Color(red: 0.93, green: 0.349, blue: 0.343))
                            }
                            HStack(alignment: .top){
                                Text("Codecadamy:")
                                    .font(Font.custom("Courier New", size:16))
                                    .fontWeight(.heavy)
                                    .foregroundColor(Color(red: 0.93, green: 0.349, blue: 0.343))
                                Text("Learn more at codecademy.com.")
                                    .font(Font.custom("Courier New", size:16))
                                    .fontWeight(.black)
                                    .foregroundColor(Color(red: 0.93, green: 0.349, blue: 0.343))
                            }
                        }
                        .padding(.all)
                        .frame(width: 360.0, height: 180.0)
                        .background(Rectangle()
                            .foregroundColor(Color(red: 0.186, green: 0.196, blue: 0.222)))
                        .cornerRadius(10)
                        .shadow(radius:30)
                        
                        Text("")
                        VStack(alignment: .leading){
                            Text("Coding in real life:")
                                .font(Font.custom("Courier New", size:18))
                                .fontWeight(.semibold)
                                .foregroundColor(Color(red: 0.21, green: 0.7, blue: 0.29))
                                .padding(.bottom)
                            HStack(alignment: .top){
                                Text("Web Developer:")
                                    .fontWeight(.bold)
                                    .foregroundColor(Color(red: 0.21, green: 0.7, blue: 0.29))
                                    .font(Font.custom("Courier New", size:16))
                                Text("Design and maintain web programs.")
                                    .fontWeight(.heavy)
                                    .foregroundColor(Color(red: 0.21, green: 0.7, blue: 0.29))
                                    .font(Font.custom("Courier New", size:16))
                            }
                            
                            HStack(alignment: .top){
                                Text("Computer Programmer:")
                                    .fontWeight(.heavy)
                                    .foregroundColor(Color(red: 0.21, green: 0.7, blue: 0.29))
                                    .font(Font.custom("Courier New", size:16))
                                Text("Write, edit, test code.")
                                    .fontWeight(.black)
                                    .foregroundColor(Color(red: 0.21, green: 0.7, blue: 0.29))
                                    .font(Font.custom("Courier New", size:16))
                            }
                            Text("Search to learn about ways coding implements itself in our daily lives!")
                                .font(Font.custom("Courier New", size:18))
                                .fontWeight(.semibold)
                                .foregroundColor(Color(red: 0.21, green: 0.7, blue: 0.29))
                        }
                        .padding()
                        .frame(width: 360.0, height: 220.0)
                        .background(Rectangle()
                            .foregroundColor(Color(red: 0.186, green: 0.196, blue: 0.222)))
                        .cornerRadius(10)
                        .shadow(radius:30)
                    }
                    .padding(.all)
                }
            }
            .navigationTitle("Resources")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}
    

#Preview {
    Resources()
}
