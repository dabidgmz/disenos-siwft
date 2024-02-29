//
//  ContentView.swift
//  loginptcint
//
//  Created by david gomez herrera on 26/01/24.
//

import SwiftUI
struct LoginView: View {
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [Color(#colorLiteral(red: 0.02745098039, green: 0.6000000238, blue: 0.7137255073, alpha: 1)), Color.white]),
                startPoint: .top,
                endPoint: .bottom
            )
            .edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer().frame(height: 80)
                Circle()
                    .fill(Color(#colorLiteral(red: 0.02745098039, green: 0.6000000238, blue: 0.7137255073, alpha: 1)))
                    .frame(width: 120, height: 120)
                    .overlay(
                        Image(systemName: "person")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 60, height: 60)
                            .foregroundColor(.white)
                    )
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("Email")
                        .foregroundColor(.black)
                        .shadow(color: .white, radius: 2, x: 0, y: 0)
                    
                    TextField("", text: .constant(""))
                        .padding()
                        .background(Color.white)
                        .cornerRadius(15.0)
                        .padding(.bottom, 10)
                        .shadow(color: .black, radius: 2, x: 0, y: 0)
                    
                    Text("Password")
                        .foregroundColor(.black)
                        .shadow(color: .white, radius: 2, x: 0, y: 0)
                    
                    SecureField("", text: .constant(""))
                        .padding()
                        .background(Color.white)
                        .cornerRadius(15.0)
                        .padding(.bottom, 10)
                        .shadow(color: .black, radius: 2, x: 0, y: 0)
                    
                    Button(action: {
                    }) {
                        Text("Login")
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color(#colorLiteral(red: 0.02745098039, green: 0.6000000238, blue: 0.7137255073, alpha: 1)))
                            .cornerRadius(8.0)
                            .shadow(color: .black, radius: 2, x: 0, y: 0)
                    }
                    
                    Spacer()
                    
                    HStack {
                        Spacer()
                        Text("No tienes una cuenta")
                            .foregroundColor(.black)
                            .multilineTextAlignment(.center)
                            .shadow(color: .white, radius: 2, x: 0, y: 0)
                        Spacer()
                        
                        NavigationLink(destination: RegisterView()) {
                            Text("Register")
                                .foregroundColor(Color(#colorLiteral(red: 0.02745098039, green: 0.6000000238, blue: 0.7137255073, alpha: 1)))
                                .shadow(color: .black, radius: 2, x: 0, y: 0)
                        }
                        Spacer()
                    }
                }
                .padding()
                .cornerRadius(16.0)
                .padding()
            }
            .padding(.horizontal)
            .navigationBarHidden(true)
        }
    }
}



struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
    
}
