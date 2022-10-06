//
//  DetailedView.swift
//  WeatherApp
//
//  Created by Duminda Kuruppu on 06/10/2022.
//

import SwiftUI

struct DetailedView: View {
    
    var data: WeatherData
    @State var isPopupShowing = false
    
    var body: some View {
        VStack {
            Image(systemName: data.icon)
                .foregroundColor(data.color)
            Text(data.day)
            Text("High \(data.high)ºC - Low \(data.low)ºC")
            Button(action: {
                isPopupShowing = true
            }) {
                Text("Show Popup")
            }
            .padding()
            .sheet(isPresented: $isPopupShowing) {
                Text("High \(data.high)ºC - Low \(data.low)ºC")
            }
        }
    }
}

struct DetailedView_Previews: PreviewProvider {
    static var previews: some View {
        DetailedView(data: DataModel.data[0])
    }
}
