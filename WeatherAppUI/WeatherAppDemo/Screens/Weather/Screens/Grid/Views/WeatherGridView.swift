//
//  WeatherGridView.swift
//  WeatherAppDemo
//
//  Created by Jon Chang on 6/21/23.
//

import SwiftUI

struct WeatherGridView: View {
    let gridSetting : [GridItem] = [
        GridItem(.adaptive(minimum: 130, maximum: 190), alignment: .center)
    ]
    
    var body: some View {
        ZStack {
            Image("sunny_bg")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
                .offset(x:-38)
            
            ScrollView(showsIndicators: false) {
                HeaderGridView()
                    .padding()

                LazyVGrid(columns: gridSetting) {
                    uvCell
                    timeCell
                    windCell
                    rainCell
                    feelCell
                    humidityCell
                    visibilityCell
                    pressureCell
                }
            }
        }
    }
    
    private var uvCell : some View {
        HStack {
            Image(systemName: "sun.max.fill")
            Text("UV INDEX")
        }
        .cellTitleStyle()
        .gridStyle()
    }
    
    private var timeCell : some View {
        HStack {
            Image(systemName: "sunset")
            Text("SUNSET")
        }
        .cellTitleStyle()
        .gridStyle()
    }
    
    private var windCell : some View {
        VStack(alignment: .leading){
            HStack {
                Image(systemName: "wind")
                Text("WIND")
            }
            .cellTitleStyle()
            .padding([.bottom])
            
            ZStack {
                Image(systemName: "circle.dotted")
                    .resizable()
                    .frame(width:125, height:125)
                VStack {
                    Text("8")
                        .font(Font.custom("HelveticaNeue-Thin", size:30))
                        .fontWeight(.semibold)
                    Text("mph")
                        .font(Font.custom("HelveticaNeue-Thin", size:20))
                        .fontWeight(.semibold)
                }
            }
            .offset(x:10)
        }
        .gridStyle()
    }
    
    private var rainCell : some View {
        VStack(alignment: .leading) {
            HStack {
                Image(systemName:"drop.fill")
                Text("RAINFALL")
            }
            .cellTitleStyle()
            .padding([.bottom], 1)
            
            Text("0\"")
                .font(Font.custom("HelveticaNeue-Thin", size:35))
                .fontWeight(.semibold)
            Text("in last 24 hrs")
                .font(Font.custom("HelveticaNeue-Thin", size:23))
                .fontWeight(.semibold)
            
            Spacer()
            
            Text("None expected in next 10 days.")
                .font(.system(size:16))
        }
        .gridStyle()
    }
    
    private var feelCell : some View {
        VStack(alignment: .leading) {
            HStack {
                Image(systemName:"thermometer.medium")
                Text("FEELS LIKE")
            }
            .cellTitleStyle()
            .padding([.bottom], 1)
            
            Text("71°")
                .font(Font.custom("HelveticaNeue-Thin", size:35))
                .fontWeight(.semibold)
                .padding([.bottom], 30)
            
            Text("Similar to the actual temperature.")
                .font(.system(size:16))
        }
        .gridStyle()
    }
    
    private var humidityCell : some View {
        VStack(alignment: .leading) {
            HStack {
                Image(systemName:"humidity")
                Text("HUMIDITY")
            }
            .cellTitleStyle()
            .padding([.bottom], 1)
            
            Text("45%")
                .font(Font.custom("HelveticaNeue-Thin", size:35))
                .fontWeight(.semibold)
                .padding([.bottom], 30)
            
            Text("The dew point is 47° right now.")
                .font(.system(size:16))
        }
        .gridStyle()
    }
    
    private var visibilityCell : some View {
        VStack(alignment: .leading) {
            HStack {
                Image(systemName:"eye.fill")
                Text("VISIBILITY")
            }
            .cellTitleStyle()
            .padding([.bottom], 1)
            
            Text("10 mi")
                .font(Font.custom("HelveticaNeue-Thin", size:35))
                .fontWeight(.semibold)
                .padding([.bottom], 40)
            
            Text("It's perfectly clear.")
        }
        .gridStyle()
    }
    
    private var pressureCell : some View {
        VStack(alignment: .leading){
            HStack {
                Image(systemName: "speedometer")
                Text("PRESSURE")
            }
            .cellTitleStyle()
            //.padding([.bottom])
            
            ZStack {
                Image(systemName: "circle.dotted")
                    .resizable()
                    .frame(width:120, height:120)
                VStack {
                    Text("29.95")
                        .font(Font.custom("HelveticaNeue-Thin", size:30))
                        .fontWeight(.semibold)
                    Text("inHG")
                        .font(Font.custom("HelveticaNeue-Thin", size:20))
                        .fontWeight(.semibold)
                }
            }
            .offset(x:15)
        }
        .gridStyle()
    }
}

struct WeatherGridView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherGridView()
    }
}
