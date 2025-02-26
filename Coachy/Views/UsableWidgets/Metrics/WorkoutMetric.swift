//
//  WorkoutMetric.swift
//  Coachy
//
//  Created by Manuel Alejandro Hernandez Marín on 21/02/25.
//

import SwiftUI

struct WorkoutMetric: View {
    
//    var icon : UIImage
//    var text : String
//    var description : String
    
    var body: some View {
        HStack {
            Image(systemName: "flame")
            Text("450")
            Text("Kcal")
        }
        .padding()
        .background(Color.yellow)
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color.blue, lineWidth: 4) // Border color
        )
    }
}

#Preview {
    WorkoutMetric()
}
