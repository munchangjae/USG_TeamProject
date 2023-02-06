//
//  firstQuiz.swift
//  solveProblem
//
//  Created by 문창재 on 2023/02/01.
//

import SwiftUI

struct firstQuiz: View {
    //@State var Quizes:[GridItem] = [GridItem(.fixed(100)), GridItem(.fixed(100))]
    @State var quizList = ["1일차","2일차","3일차","4일차"]
    
    var body: some View {
        NavigationStack{
            List{
                ForEach(quizList, id: \.self){
                    item in Text(item)
                }
            }.navigationTitle("초급")
            
        }
            
        }
    }

struct firstQuiz_Previews: PreviewProvider {
    static var previews: some View {
        firstQuiz()
    }
}
