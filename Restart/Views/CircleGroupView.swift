//
//  CircleGroupView.swift
//  Restart
//
//  Created by justin.bitancor on 10/6/24.
//

import SwiftUI

struct CircleGroupView: View {
    // MARK: - PROPERTIES
    
    @State var shapeColor: Color
    @State var shapeOpacity: Double
    @State var isAnimating: Bool = false
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            Circle()
                .stroke(shapeColor.opacity(shapeOpacity), lineWidth: 40)
                .frame(width: 260, height: 260, alignment: .center)
            
            Circle()
                .stroke(shapeColor.opacity(shapeOpacity), lineWidth: 80)
                .frame(width: 260, height: 260, alignment: .center)
        } //: ZStack
        .blur(radius: isAnimating ? 0 : 10)
        .opacity(isAnimating ? 1 : 0)
        .scaleEffect(isAnimating ? 1 : 0.5)
        .animation(.easeOut(duration: 1), value: isAnimating)
        .onAppear {
            isAnimating = true
        }
    }
}

#Preview {
    ZStack {
        Color("ColorBlue")
            .ignoresSafeArea(.all, edges: .all)
        
        CircleGroupView(shapeColor: .white, shapeOpacity: 0.2)
    }
    
}
