//
//  LoadingView.swift
//  InbursaMovil
//
//  Created by Manuel Alejandro Hernandez Marin on 21/07/23.
//

import SwiftUI
import SDWebImageSwiftUI

public struct LoadingView: View {
    
    public init(){}
    

    public var body: some View {
        ZStack(alignment: .center) {
            Color.black.opacity(0.6)
                .edgesIgnoringSafeArea(.all)

            if let url = Bundle.main.url(
                forResource: "weights-spinner", withExtension: "gif")
            {
                WebImage(url: gifURL())
                    .resizable()
                    .indicator(.activity)
                    .scaledToFit()
                    .frame(width: calculateFrameWidth(), alignment: .center)
            }
        }
    }

    public func gifURL() -> URL? {
        // Devolver la URL del recurso GIF
        return Bundle.main.url(
            forResource: "weights-spinner", withExtension: "gif")
    }

    // Cálculo separado para evitar dependencias circulares dentro de la vista
    public func calculateFrameWidth() -> CGFloat {
        let screenWidth = UIScreen.main.bounds.width

        return screenWidth < 390 ? screenWidth - 250 : screenWidth - 320

//        return screenWidth * 0.8  // Valor por defecto si no es ni iPad ni iPhone
    }
}

