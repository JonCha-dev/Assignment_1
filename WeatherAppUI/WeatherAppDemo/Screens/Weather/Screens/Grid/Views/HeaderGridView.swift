//
//  HeaderGridView.swift
//  WeatherAppDemo
//
//  Created by Jon Chang on 6/21/23.
//

import SwiftUI

struct HeaderGridView: View {
    var body: some View {
        let temp = 70
        let forecast = "Sunny"
        
        VStack(alignment: .center) {
            Text("Cupertino")
                .font(Font.custom("HelveticaNeue-Thin", size: 40))
                .foregroundColor(.white)
                .fontWeight(.regular)
            Text("\(temp)° | \(forecast)")
                .font(Font.custom("HelveticaNeue-Thin", size: 20))
                .foregroundColor(Color(red: 0.831, green: 0.984, blue: 0.992))
                .fontWeight(.medium)
        }
    }

}

struct HeaderGridView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderGridView()
    }
}
