//
//  ContentView.swift
//  WeatherApp
//
//  Created by Duminda Kuruppu on 06/10/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(DataModel.data, id: \.self) { object in
                HStack{
                    Image(systemName: object.icon)
                        .foregroundColor(object.color)
                    Text("\( object.high)ºC")
                        .foregroundColor(Color.blue)
                    NavigationLink(object.day, destination: DetailedView(data: object))
                }
            }
            .navigationTitle("Colombo")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
