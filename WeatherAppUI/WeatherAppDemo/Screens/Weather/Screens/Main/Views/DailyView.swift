//
//  DailyView.swift
//  WeatherAppDemo
//
//  Created by renupunjabi on 6/10/23.
//

import SwiftUI

struct DailyView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(systemName: "calendar")
                Text("10-DAY FORECAST")
            }
            .foregroundColor(Color(red: 0.831, green: 0.984, blue: 0.992))
            .offset(x:15, y:10)
            ForEach(DayData.mockData) { dayData in
                HStack {
                    Text(dayData.day)
                        .font(.title3).bold()
                        .foregroundColor(.white)
                    Spacer()
                    Image(systemName: dayData.image)
                        .resizable()
                        .frame(width:30, height:30)
                        .foregroundColor(.yellow)
                    Spacer()
                    Text(dayData.lowTemp)
                        .font(.system(size: 20))
                        .foregroundColor(.white)
                    Text(dayData.highTemp)
                        .font(.system(size: 20))
                        .foregroundColor(.white)
                }
                .padding()
            }
        }
        .background(Color(red: 0.243, green: 0.549, blue: 0.839).opacity(0.95))
        .foregroundColor(.white)
        .cornerRadius(10)
        .frame(
              maxWidth: 360
            )
    }
}

struct DailyView_Previews: PreviewProvider {
    static var previews: some View {
        DailyView()
    }
}
