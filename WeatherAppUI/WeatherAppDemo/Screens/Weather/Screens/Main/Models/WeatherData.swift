//
//  WeatherData.swift
//  WeatherAppDemo
//
//  Created by renupunjabi on 6/10/23.
//

import Foundation

struct HourlyData: Identifiable {
    var id = UUID()    
    let image: String
    let temperature: String
    let time: String
    
    static let mockData = [
        HourlyData(image: "sun.max.fill", temperature:"54°", time: "Now"),
        HourlyData(image: "sun.max.fill", temperature: "54°", time: "9AM"),
        HourlyData(image: "sun.haze.circle", temperature: "57°", time: "10AM"),
        HourlyData(image: "cloud.drizzle.fill", temperature: "60°", time: "11AM"),
        HourlyData(image: "sun.max.fill", temperature: "61°", time: "12PM"),
        HourlyData(image: "sun.max.fill", temperature: "62°", time: "1PM"),
        HourlyData(image: "sun.max.fill", temperature: "64°", time: "2PM"),
        HourlyData(image: "sun.max.fill", temperature: "65°", time: "3PM"),
        HourlyData(image: "sun.max.fill", temperature: "66°", time: "4PM"),
    ]
}

struct DayData: Identifiable {
    var id = UUID()
    let day: String
    let highTemp: String
    let lowTemp: String
    let image: String
    
    static let mockData = [
        DayData(day: "Today", highTemp: "H:70°F", lowTemp: "L:57°F", image: "sun.max.fill"),
        DayData(day: "Tuesday", highTemp: "H:78°F", lowTemp: "L:58°F", image: "sun.max.fill"),
        DayData(day: "Wednesday", highTemp: "H:78°F", lowTemp: "L:60°F", image: "cloud.drizzle.fill"),
        DayData(day: "Thursday", highTemp: "H:79°F", lowTemp: "L:63°F", image: "sun.max.fill"),
        DayData(day: "Friday", highTemp: "H:75°F", lowTemp: "L:54°F", image: "sun.max.fill"),
        DayData(day: "Saturday", highTemp: "H:77°F", lowTemp: "L:53°F", image: "cloud.drizzle.fill"),
        DayData(day: "Sunday", highTemp: "H:76°F", lowTemp: "L:50°F", image: "sun.max.fill"),
    ]
    
}


