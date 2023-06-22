//
//  HeaderView.swift
//  WeatherAppDemo
//
//  Created by renupunjabi on 6/10/23.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        VStack (alignment: .center) {
            Text("Cupertino")
                .font(Font.custom("HelveticaNeue-Thin", size: 35))
                .foregroundColor(.white)
                .fontWeight(.regular)
            Text("70°")
                .font(Font.custom("HelveticaNeue-Thin", size:95))
                .foregroundColor(.white)
                .fontWeight(.thin)
                .offset(x: 15)
            Text("Sunny")
                .font(Font.custom("HelveticaNeue-Thin", size: 20))
                .foregroundColor(Color(red: 0.831, green: 0.984, blue: 0.992))
                .fontWeight(.medium)
            Text("H: 76°  L: 51°")
                .font(Font.custom("HelveticaNeue-Thin", size: 20))
                .foregroundColor(.white)
                .fontWeight(.regular)
                .offset(y: 5)
                .opacity(0.75)
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
