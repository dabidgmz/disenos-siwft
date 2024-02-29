//
//  menuview.swift
//  loginptcint
//
//  Created by david gomez herrera on 23/02/24.
//

import SwiftUI


struct MenuView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Text("Menú Principal")
                    .font(.largeTitle)
                    .padding()
                
                NavigationLink(destination: RegisterView()) {
                    RectangleButton(title: "Opción 1", color: .blue)
                }
                
                NavigationLink(destination: ProfileView()) {
                    RectangleButton(title: "Opción 2", color: .green)
                }
                
                NavigationLink(destination: SettingsView()) {
                    RectangleButton(title: "Opción 3", color: .orange)
                }
                
                NavigationLink(destination: LoginView()) {
                    RectangleButton(title: "Opción 4", color: .purple)
                }
                
                NavigationLink(destination: ProfileView()) {
                    RectangleButton(title: "Opción 5", color: .yellow)
                }
                
                NavigationLink(destination: SettingsView()) {
                    RectangleButton(title: "Opción 6", color: .red)
                }
                
                Spacer()
            }
            .navigationBarTitle("Menú")
        }
    }
}

struct menuview: View {
    var body: some View {
        Text("Contenido de la opción 1")
            .font(.largeTitle)
    }
}

struct ProfileView: View {
    var body: some View {
        Text("Contenido de la opción 2")
            .font(.largeTitle)
    }
}

struct SettingsView: View {
    var body: some View {
        Text("Contenido de la opción 3")
            .font(.largeTitle)
    }
}

struct RectangleButton: View {
    var title: String
    var color: Color
    
    var body: some View {
        Text(title)
            .foregroundColor(.white)
            .frame(width: 200, height: 100)
            .background(color)
            .cornerRadius(10)
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
