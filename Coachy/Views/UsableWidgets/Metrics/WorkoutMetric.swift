//
//  WorkoutMetric.swift
//  Coachy
//
//  Created by Manuel Alejandro Hernandez Marín on 21/02/25.
//

import SwiftUI

struct WorkoutMetric: View {
    
    var icon : Image
    var text : String
    var description : String
    
    var body: some View {
        HStack {
            icon
                .foregroundStyle(Color("lightBlue"))
            Text(text)
                .foregroundStyle(Color("lightBlue"))
            Text(description)
                .foregroundStyle(Color("lightBlue"))
        }
        .padding()
        .background(Color("darkGrey"))
        .clipShape(RoundedRectangle(cornerRadius: 16))
//        .overlay(
//            RoundedRectangle(cornerRadius: 16)
//                .stroke(Color.blue, lineWidth: 4) // Border color
//        )
    }
}

#Preview {
    WorkoutMetric(
        icon: Image(systemName: "flame"), text: "Calories", description: "110"
    )
}
