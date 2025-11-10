//
//  HStack.swift
//  weather-app
//
//  Created by Samuel Bruton on 28/10/2025.
//
import SwiftUI

struct WeatherDayView: View {

    var dayOfWeek: String
    var imageName: String
    var temp: Int
    var imageSize: CGFloat = 40

    var body: some View {

        VStack(spacing: 8) {
            Text(dayOfWeek)
                .textCase(.uppercase)
                .foregroundStyle(.white)
            Image(systemName: imageName)
                .symbolRenderingMode(.palette)
                .resizable()
                .foregroundStyle(.white, .lightBlue, .lightPink)
                .aspectRatio(contentMode: .fit)
                .frame(width: imageSize)
            Text("\(temp)°")
                .font(.title)
                .textCase(.uppercase)
                .fontWeight(.medium)
                .foregroundStyle(.white)
        }

    }
}
