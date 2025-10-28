//
//  ContentView.swift
//  weather-app
//
//  Created by Samuel Bruton on 28/10/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [.pink, .blue, .white],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            ).edgesIgnoringSafeArea(.all)  // applies background to entire screen

            VStack {
                Text("Saint Helens")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding(.top)

                VStack(spacing: 8) {
                    Image(systemName: "tornado")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150, height: 150)

                    Text("76°C")
                        .font(.system(size: 70, weight: .thin))
                        .foregroundColor(.white)
                }
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}
