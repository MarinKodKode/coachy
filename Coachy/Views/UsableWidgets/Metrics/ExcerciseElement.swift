//
//  ExcerciseElement.swift
//  Coachy
//
//  Created by Manuel Alejandro Hernandez Marín on 21/02/25.
//

import SwiftUI

struct ExcerciseElement: View {
    var body: some View {
        ZStack {
            HStack(spacing : 16) {
                Image("backgroundImage_1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 16))
                    .padding()
                
                VStack(alignment: .leading) {
                    Text("Squat Jumps")
                    HStack {
                        BadgeView()
                        Text("10 reps")
                    }
                }
                
                HStack (alignment : .center, spacing : 10){
                    Image(systemName: "checkmark.circle")
                        .resizable()
                        .frame(width: 20, height: 20)
                    
                }
                .padding(.top, 30)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .clipShape(RoundedRectangle(cornerRadius: 16))
            .overlay(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(Color.gray, lineWidth: 4)
            )
            .padding(.horizontal, 16)
        }
    }
}

#Preview {
    ExcerciseElement()
}
