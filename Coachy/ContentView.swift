//
//  ContentView.swift
//  Coachy
//
//  Created by Manuel Alejandro Hernandez Marín on 19/02/25.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var router : Router
    
    var body: some View {
        NavigationStack(path: $router.path){
            StarterView()
                .navigationDestination(
                    for: NavigationDestination.self){ destination in
                        switch destination {
                        case .singup :
                            SingUpView()
                        case .singin :
                            SingInView()
                        case .starter :
                            StarterView()
                        case .home :
                            HomeView()
                        }
                    }
        }
        
    }
}

#Preview {
    
    let router = Router.shared
    ContentView()
        .environmentObject(router)
}
