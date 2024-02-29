//
//  perfilusuario.swift
//  loginptcint
//
//  Created by david gomez herrera on 20/02/24.
//
import SwiftUI

struct perfilusuario: View {
    var body: some View {
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
                Text("Información Personal")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color(#colorLiteral(red: 0.02745098039, green: 0.6000000238, blue: 0.7137255073, alpha: 1)))
                
                VStack(alignment: .leading, spacing: 5) {
                    Text("Nombre")
                        .font(.headline)
                    Text("John Doe")
                        .foregroundColor(.black)
                }
                .padding(.horizontal)
                
                VStack(alignment: .leading, spacing: 5) {
                    Text("Correo Electrónico")
                        .font(.headline)
                    Text("john@example.com")
                        .foregroundColor(.black)
                }
                .padding(.horizontal)
                
                VStack(alignment: .leading, spacing: 5) {
                    Text("Teléfono")
                        .font(.headline)
                    Text("123-456-7890")
                        .foregroundColor(.black)
                }
                .padding(.horizontal)
            }
            .padding()
            .background(Color.white)
            .cornerRadius(15)
            .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
            .padding()
            
            VStack(spacing: 20) {
                Button(action: {
                    // Perform password reset logic here
                }) {
                    Text("Restablecer Contraseña")
                        .foregroundColor(.black)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .cornerRadius(15)
                        .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
                        .padding(.horizontal)
                }
                
                Button(action: {
                    // Perform logout logic here
                }) {
                    Text("Cerrar Sesión")
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color(#colorLiteral(red: 0.02745098039, green: 0.6000000238, blue: 0.7137255073, alpha: 1)))
                        .cornerRadius(15)
                        .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
                        .padding(.horizontal)
                }
            }
            .padding(.bottom, 20)
            .padding(.horizontal)
            
            Spacer()
        }
        .padding(.horizontal)
        .navigationBarHidden(true)
        .background(Color(#colorLiteral(red: 0.6549019814, green: 0.8156862855, blue: 0.8235294223, alpha: 1)))
        .edgesIgnoringSafeArea(.all)
    }
}

struct perfilusuario_Previews: PreviewProvider {
    static var previews: some View {
        perfilusuario()
    }
}

