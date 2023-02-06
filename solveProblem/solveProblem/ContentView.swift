//
//  ContentView.swift
//  solveProblem
//
//  Created by 문창재 on 2023/02/01.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      TabView {
          VStack{
              Text("초급")
              Image(systemName: "square.fill")
                  .resizable()
                  .frame(width: 300,height: 300)
              Text("중급")
              Image(systemName: "square.fill")
                  .resizable()
                  .frame(width: 300,height: 300)
          }
          .tabItem {
            Image(systemName: "q.circle.fill")
            Text("퀴즈")
          }
          VStack{
              Text("초급")
              Image(systemName: "square.fill")
                  .resizable()
                  .frame(width: 300,height: 300)
              Text("중급")
              Image(systemName: "square.fill")
                  .resizable()
                  .frame(width: 300,height: 300)
          }
          .tabItem {
            Image(systemName: "gamecontroller")
            Text("게임")
          }
          history()
          .tabItem {
            Image(systemName: "book.closed.fill")
            Text("히스토리")
          }
          List{
              Section{
                  Button("로그인"){
                      
                  }
              }footer: {
                  Button("비회원이신가요? 눌러서 회원가입"){
                      
                  }
              }
              Section{
                  NavigationLink {
                          Text("간단한 설정들")
                  }label: {
                      Image(systemName: "gearshape")
                      Text("설정")
                  }
              }
          }
            .tabItem {
              Image(systemName: "rectangle.3.group")
              Text("더보기")
            }
      }
    }
  }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
