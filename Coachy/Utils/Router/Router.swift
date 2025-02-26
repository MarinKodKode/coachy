//
//  Router.swift
//  Coachy
//
//  Created by Manuel Alejandro Hernandez Marín on 20/02/25.
//

import Foundation
import SwiftUI

class Router: ObservableObject {
    
    private init(){ }
    
    static let shared = Router()
    
//    @Published var viewDestination : Destination?
    @Published var path = NavigationPath()

}
