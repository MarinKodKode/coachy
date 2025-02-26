//
//  Badge.swift
//  Coachy
//
//  Created by Manuel Alejandro Hernandez Marín on 21/02/25.
//

import Foundation
import SwiftUI

struct BadgeView : View {
    
    var body: some View {
        HStack {
            Text("Cuadriceps")
                .font(.system(size: 12))
                .foregroundStyle(Color.white)
                .padding(.vertical, 8)
                .padding(.horizontal, 16)
        }
        .background(Color.cyan)
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.white))
       
        
        
    }
}

#Preview {
    BadgeView()
}
