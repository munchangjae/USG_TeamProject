//
//  scroll.swift
//  solveProblem
//
//  Created by 문창재 on 2023/02/04.
//

import SwiftUI

struct scroll: View {
    var columns: [GridItem] = Array(repeating: .init(.flexible()), count: 1)
    
    var body: some View {
        NavigationStack{
            VStack{
                ScrollView {
                    VStack{
                        Text("동물")
                        ScrollView(.horizontal){
                            LazyHGrid(rows: columns) {
                                ForEach((0...19), id: \.self) { _ in
                                    Color(red: .random(in: 0...1), green: .random(in: 0...1), blue: .random(in: 0...1))
                                        .cornerRadius(15)
                                        .frame(width: 150, height: 150)
                                        .padding()
                                }
                            }
                        }
                        Text("이동수단")
                        ScrollView(.horizontal){
                            LazyHGrid(rows: columns) {
                                ForEach((0...19), id: \.self) { _ in
                                    Color(red: .random(in: 0...1), green: .random(in: 0...1), blue: .random(in: 0...1))
                                        .cornerRadius(15)
                                        .frame(width: 150, height: 150)
                                        .padding()
                                }
                            }
                        }
                        Text("과일")
                        ScrollView(.horizontal){
                            LazyHGrid(rows: columns) {
                                ForEach((0...19), id: \.self) { _ in
                                    Color(red: .random(in: 0...1), green: .random(in: 0...1), blue: .random(in: 0...1))
                                        .cornerRadius(15)
                                        .frame(width: 150, height: 150)
                                        .padding()
                                }
                            }
                        }
                    }
                }
                
                Button("뱃지"){
                    
                }
                
                
            }.navigationTitle("퀴즈와 그리기")
            
        }
        
        
    }
    
    struct scroll_Previews: PreviewProvider {
        static var previews: some View {
            scroll()
        }
    }
}
