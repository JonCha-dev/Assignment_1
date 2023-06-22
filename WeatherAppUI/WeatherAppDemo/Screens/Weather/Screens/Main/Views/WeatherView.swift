//
//  WeatherView.swift
//  WeatherAppDemo
//
//  Created by renupunjabi on 6/10/23.
//

import SwiftUI

struct WeatherView: View {
    var body: some View {
        ZStack(){
            Image("sunny_bg")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea(.all)
                .offset(x:-38)
           
            ScrollView(showsIndicators: false) {
                HeaderView()
                    .padding([.bottom])
                HourlyView()
                DailyView()
            }
    
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView()
    }
}
