//
//  playView.swift
//  solveProblem
//
//  Created by 문창재 on 2023/02/03.
//

import SwiftUI
import Foundation

struct playView: View {
    
    @State var carList:[String] = ["sunrise","pencil","lasso"]
    @State var imageName:String = "hare"
    
    func _inList() -> some View {
        ForEach(carList, id: \.self) {
            item in Text(item)
        }
    }
    var body: some View {
        NavigationStack{
            VStack{
                Text("지나가는 동물들을 기억해주세요")
                Image(systemName: imageName)
                    .resizable()
                    .frame(width: 200, height: 200)
                Button("정답 제출"){
                    for item in carList {
                        print(item)
                        imageName = item
                        Thread.sleep(forTimeInterval: 3)
    
                    }
                
                }

            }.navigationTitle("초급 - 1일차")
                .navigationBarTitleDisplayMode(.inline)

        }
                    }
}

struct playView_Previews: PreviewProvider {
    static var previews: some View {
        playView()
    }
}
