//
//  GridStyle.swift
//  WeatherAppDemo
//
//  Created by Jon Chang on 6/21/23.
//

import SwiftUI

struct GridStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 145, alignment: .topLeading)
            .padding()
            .background(Color(red: 0.243, green: 0.549, blue: 0.839).opacity(0.95))
            .foregroundColor(.white)
            .cornerRadius(20)
            .padding([.bottom], 5)

    }
}

struct CellTitleStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(Font.custom("HelveticaNeue-Thin", size:15))
            .foregroundColor(Color(red: 0.831, green: 0.984, blue: 0.992))
            .fontWeight(.medium)
    }
}

extension View {
    func gridStyle() -> some View {
        modifier(GridStyle())
    }
    
    func cellTitleStyle() -> some View {
        modifier(CellTitleStyle())
    }
}

/*
struct GridStyle_Previews: PreviewProvider {
    static var previews: some View {
        GridStyle()
    }
}
*/
