//
//  StarterView.swift
//  Coachy
//
//  Created by Manuel Alejandro Hernandez Marín on 20/02/25.
//

import SwiftUI

struct StarterView: View {
    
    @EnvironmentObject var router : Router
    
    var body: some View {
        ZStack{
            
            
            Color.black.opacity(0.75)
                .edgesIgnoringSafeArea(.all)
            
            VStack (spacing : 0) {
                VStack {
                    Image("MainIcon")
                        .resizable()
                        .scaledToFill()
                        .frame(
                            width: 60,
                            height: 60
                        )
                        .cornerRadius(90)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 24)
                .padding(.top, 30)
                
                Spacer()
                
                VStack (alignment: .leading) {
                    Text("Coachy")
                        .foregroundStyle(.white)
                        .fontWeight(.semibold)
                        .font(.system(size: 30))
                        .padding(.bottom, 20)
                    
                    Text("Conectados por un sueño, unidos alcanzando metas.")
                        .foregroundStyle(.white)
                        .fontWeight(.regular)
                        .font(.system(size: 24))

                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 30)
                .padding(.bottom, 40)
                HStack(){
                    Button(action: {
                        router.path.append(NavigationDestination.singup)
                    }, label: {
                        Text("Unirme")
                            .foregroundStyle(.black)
                    })
                    .padding(.horizontal, 35)
                    .padding(.vertical, 15)
                    .background(Color.white)
                    .clipShape(.capsule)
                    
                    Button(action: {
                        
                        router.path.append(NavigationDestination.singin)
                        
                    }, label: {
                        Text("Ingresar")
                            .foregroundStyle(.black)
                    })
                    .padding(.horizontal, 35)
                    .padding(.vertical, 15)
                    .background(Color.white)
                    .clipShape(.capsule)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 24)
                .padding(.bottom, 20)
            }
        }
        .background(
            Image("backgroundImage_1")
                .resizable()
                .scaledToFill()
                .frame(
                    width: UIScreen.main.bounds.width * 1.1,
                    height: UIScreen.main.bounds.height * 1.1
                )
                .edgesIgnoringSafeArea(.all)
        )
    }
}

#Preview {
    StarterView()
}
