//
//  WeatherButton.swift
//  weather-app
//
//  Created by Samuel Bruton on 10/11/2025.
//
import SwiftUI

struct WeatherButton_Previews: PreviewProvider {

    //    @State private var isNight = false

    static var previews: some View {
        VStack(spacing: 0) {
            Text(" Text Button")
                .frame(width: 170, height: 60)
                .foregroundStyle(.white)
                .font(.system(size: 25, design: .default))
                .padding(.leading, 20)
                .padding(.trailing, 20)
                .padding(.top, 5)
                .padding(.bottom, 5)
                .background(.blue.gradient)

            Text(" Text Button")
                .frame(width: 170, height: 60)
                .foregroundStyle(.white)
                .font(.system(size: 25, design: .default))
                .padding(.leading, 20)
                .padding(.trailing, 20)
                .padding(.top, 5)
                .padding(.bottom, 5)
                .background(.blue.gradient)
        }
        .cornerRadius(50)

    }
}
