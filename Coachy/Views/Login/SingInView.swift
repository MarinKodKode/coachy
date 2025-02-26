//
//  SingInView.swift
//  Coachy
//
//  Created by Manuel Alejandro Hernandez Marín on 20/02/25.
//

import SwiftUI

struct SingInView: View {
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @EnvironmentObject var router : Router
    
    var body: some View {
            
        ZStack {
            VStack{
                VStack{
                    Image("backgroundImage_4")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                        .frame(height: UIScreen.main.bounds.height * 0.22)
                }
                VStack {
                    
                    Text("¡Hola de nuevo!")
                        .padding(.top, 50)
                        .font(.system(size: 30))
                        .fontWeight(.semibold)
                        .foregroundStyle(Color.blue)
                        
                    VStack (alignment: .leading, spacing: 16){
                        TextField("Correo o número telefónico", text : $firstName)
                            .padding()
                            .overlay(
                                RoundedRectangle(cornerRadius: 14)
                                    .stroke(Color.blue, lineWidth: 2)
                            )
                        TextField("Correo o número telefónico", text : $firstName)
                            .padding()
                            .overlay(
                                RoundedRectangle(cornerRadius: 14)
                                    .stroke(Color.blue, lineWidth: 2)
                            )
                        Button(action: {}, label: {
                            Text("¿Olvidaste tu contraseña?")
                        })
                        .padding()
                        
                        Button(action: {
                            router.path.append(NavigationDestination.home)
                        }, label: {
                            Text("Ingresar")
                                .font(.system(size: 16))
                                .padding()
                                .foregroundStyle(Color.white)
                                
                        })
                        .frame(maxWidth: UIScreen.main.bounds.width * 0.95)
                        .background(Color.blue)
                        .cornerRadius(12)
                    }
                    .padding(.top, 30)
                    .padding(.horizontal, 20)
                    
                    VStack(alignment: .center){
                        LabelledDivider(label: "Ingresar con")
                    }
                    .padding(.top, 30)
                    
                    HStack (spacing: 45) {
                        Button(action: {}, label: {
                            Image("facebook_icon")
                                .resizable()
                                .scaledToFill()
                                .frame(width : 30, height: 10)
                        })
                        
                        Button(action: {}, label: {
                            Image("google_icon")
                                .resizable()
                                .scaledToFill()
                                .frame(width : 30, height: 10)
                        })
                        
                        Button(action: {}, label: {
                            Image("apple_logo")
                                .resizable()
                                .scaledToFill()
                                .frame(width : 30, height: 10)
                        })
                    }
                    .padding(.top, 20)

                    HStack {
                        Text("¿No tienes una cuenta?")
                            .foregroundStyle(Color.black)
                        Button(action: {}, label : {
                            Text("Registrarme")
                        })
                    }
                    .padding(.top, 24)
                    Spacer()
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .background(.white)
                .cornerRadius(30)
                .shadow(radius: 5)
            }
            
        }
        .navigationBarBackButtonHidden(true)
        .edgesIgnoringSafeArea(.all)
        
    }
}

#Preview {
    SingInView()
}
