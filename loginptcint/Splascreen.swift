//
//  Splascreen.swift
//  loginptcint
//
//  Created by david gomez herrera on 22/02/24.
//

import SwiftUI

struct SplashScreen: View {
    @State private var isActive: Bool = false
    
    var body: some View {
        VStack {
            if isActive {
                Text("¡Bienvenido!")
                    .font(.largeTitle)
            } else {
                Text("Fokin Pazas")
                    .font(.title)
                    .foregroundColor(.blue)
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                            self.isActive = true
                        }
                    }
            }
        }
        .fullScreenCover(isPresented: $isActive, content: {
            RegisterView()
        })
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
