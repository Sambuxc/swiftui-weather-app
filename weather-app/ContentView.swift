//
//  ContentView.swift
//  weather-app
//
//  Created by Samuel Bruton on 28/10/2025
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [.pink, .blue, .lightBlue],
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
                
                HStack(spacing: 20) {
                    WeatherDayView(
                        dayOfWeek: "tues",
                        imageName: "sunrise.fill",
                        temp: 12
                    )
                    WeatherDayView(
                        dayOfWeek: "wed",
                        imageName: "cloud.hail.fill",
                        temp: 17
                    )
                    WeatherDayView(
                        dayOfWeek: "thu",
                        imageName: "sunset.fill",
                        temp: 15
                    )
                    WeatherDayView(
                        dayOfWeek: "fri",
                        imageName: "wind.snow",
                        temp: 9
                    )
                    WeatherDayView(
                        dayOfWeek: "sat",
                        imageName: "moon.stars.fill",
                        temp: 11
                    )
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
