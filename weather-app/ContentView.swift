//
//  ContentView.swift
//  weather-app
//
//  Created by Samuel Bruton on 28/10/2025
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            BackgroundGradient(topColor: isNight ? .black : .pink,
                               bottomColor: isNight ? .gray : .white)

            VStack {
                CityTextView(cityName: "Santa Cruz")

                MainWeatherView(imageName: isNight ? "moon.stars.fill" : "sun.max.fill", temp: "19°C")

                HStack(spacing: 20) {
                    WeatherDayView(
                        dayOfWeek: "tues",
                        imageName: "sunrise.fill",
                        temp: 12
                    )
                    WeatherDayView(
                        dayOfWeek: "wed",
                        imageName: "cloud.hail.fill",
                        temp: 17,
                        imageSize: 30
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

                Spacer()

                Button {
                    // action
                    isNight.toggle()
                } label: {
                    WeatherBtnLabel(
                        title: isNight ? "Night Mode" : "Day Mode",
                        textColor: .white,
                        textSize: 32,
                        textDesign: Font.Design.rounded
                    )
                }
                .buttonStyle(.glassProminent)
                .padding(.bottom, 50)
            }
        }
    }
}

#Preview {
    ContentView()
}

// applies background to entire screen
struct BackgroundGradient: View {
    var topColor: Color
    var bottomColor: Color
    var blendColor: Color? = nil

    var body: some View {
        LinearGradient(
            colors: [topColor, blendColor ?? .blue, bottomColor],
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        ).edgesIgnoringSafeArea(.all)
    }
}

struct CityTextView: View {

    var cityName: String

    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding(.top)
    }
}

struct MainWeatherView: View {

    var imageName: String
    var temp: String

    var body: some View {
        VStack(spacing: 8) {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 150)
                .padding(.top)
                .padding(.bottom)

            Text(temp)
                .font(.system(size: 70, weight: .thin))
                .foregroundColor(.white)
                .padding(.bottom)
        }
    }
}

struct WeatherBtnLabel: View {

    var title: String
    var textColor: Color
    var textSize: CGFloat
    var textDesign: Font.Design

    var body: some View {

        Text(title)
            .foregroundStyle(textColor)
            .font(.system(size: textSize, design: textDesign))
            .padding(.leading, 20)
            .padding(.trailing, 20)
            .padding(.top, 5)
            .padding(.bottom, 5)
    }
}
