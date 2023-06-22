//
//  HourlyView.swift
//  WeatherAppDemo
//
//  Created by renupunjabi on 6/10/23.
//

import SwiftUI

struct HourlyView: View {
    
    var body: some View {
        VStack (alignment: .leading) {
            Text("Sunny conditions will continue all day.")
                .padding([.bottom], 20)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(HourlyData.mockData) { hour in
                        VStack(spacing: 10) {
                            Text(hour.time)
                                .font(.system(size: 15))
                                .foregroundColor(.white)
                            Image(systemName: hour.image)
                                .resizable()
                                .frame(width: 30, height: 30)
                                .foregroundColor(.yellow)
                            Text(hour.temperature)
                                .font(.system(size: 20))
                                .foregroundColor(.white)

                        }
                    }
                    .padding(7)
                    .frame(height:85)
                }
            }
        }
        .padding()
        .background(Color(red: 0.243, green: 0.549, blue: 0.839).opacity(0.95))
        .foregroundColor(.white)
        .cornerRadius(10)
        .frame(
              maxWidth: 360
            )
    }
}
struct HourlyView_Previews: PreviewProvider {
    static var previews: some View {
        HourlyView()
    }
}
