//
//  DrawingView.swift
//  solveProblem
//
//  Created by 문창재 on 2023/02/08.
//

import SwiftUI


struct Line {
    var points = [CGPoint]()
    var color: Color = .red
    var linewidth: Double = 1.0
}

struct DrawingView: View {
    @State private var currentLine = Line()
    
    var body: some View {
        VStack{
            Canvas { context, size in
                
            }.gesture(DragGesture(minimumDistance: 0, coordinateSpace: .local).onChanged({ value in
                let newPoint = value.location
                currentLine.points.append(newPoint)
            }).onEnded({ value in
                
            })
            
            )

        }.frame(minWidth: 400, minHeight: 400)
            .border(Color.blue)
    }
}

struct DrawingView_Previews: PreviewProvider {
    static var previews: some View {
        DrawingView()
    }
}
