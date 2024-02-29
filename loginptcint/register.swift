/// register.swift
// loginptcint
//
// Created by david gomez herrera on 29/01/24.

import SwiftUI

struct RegisterView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @State private var isEmailConfirmed = false

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

                TextField("Nombre", text: $username)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(15.0)
                    .padding(.bottom, 10)
                    .shadow(color: .black, radius: 2, x: 0, y: 0)

                TextField("Apellido", text: .constant(""))
                    .padding()
                    .background(Color.white)
                    .cornerRadius(15.0)
                    .padding(.bottom, 10)
                    .shadow(color: .black, radius: 2, x: 0, y: 0)

                TextField("Correo electrónico", text: .constant(""))
                    .padding()
                    .background(Color.white)
                    .cornerRadius(15.0)
                    .padding(.bottom, 10)
                    .shadow(color: .black, radius: 2, x: 0, y: 0)

                SecureField("Contraseña", text: $password)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(15.0)
                    .padding(.bottom, 10)
                    .shadow(color: .black, radius: 2, x: 0, y: 0)

                SecureField("Confirmar contraseña", text: $confirmPassword)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(15.0)
                    .padding(.bottom, 10)
                    .shadow(color: .black, radius: 2, x: 0, y: 0)

                Button(action: {
                    // Aquí puede ir la lógica de registro
                    // Por ejemplo, puedes establecer isEmailConfirmed en true
                    isEmailConfirmed = true
                }) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 15)
                            .fill(Color(#colorLiteral(red: 0.02745098039, green: 0.6000000238, blue: 0.7137255073, alpha: 1)))
                            .frame(width: 335, height: 69)
                            .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)

                        RoundedRectangle(cornerRadius: 15)
                            .fill(Color.white)
                            .frame(width: 299, height: 54)
                            .overlay(
                                Text("Registrar")
                                    .foregroundColor(.black)
                                    .padding()
                                    .frame(maxWidth: .infinity)
                            )
                    }
                }
                .padding(.top, 20)

                if isEmailConfirmed {
                    Text("Revisa tu bandeja de entrada para confirmar tu dirección de correo electrónico")
                        .foregroundColor(.white)
                        .padding()
                }
            }
            .padding(.horizontal)
            .navigationBarHidden(true)
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
