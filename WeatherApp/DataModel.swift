//
//  DataModel.swift
//  WeatherApp
//
//  Created by Duminda Kuruppu on 06/10/2022.
//

import UIKit
import SwiftUI

struct WeatherData: Hashable {
    var id: Int
    var day: String
    var high: Int
    var low: Int
    var icon: String
    var color: Color
}

class DataModel: NSObject {
    static let data: [WeatherData] = [
        WeatherData(id: 1, day: "Monday", high: 80, low: 60, icon: "sun.max.fill", color: .red),
        WeatherData(id: 2, day: "Tuesday", high: 20, low: 50, icon: "sun.max.fill", color: .blue),
        WeatherData(id: 3, day: "Wednesday", high: 70, low: 40, icon: "cloud.drizzle.fill", color: .green),
        WeatherData(id: 4, day: "Thursday", high: 90, low: 60, icon: "cloud.fog.fill", color: .black),
        WeatherData(id: 5, day: "Friday", high: 75, low: 65, icon: "sun.max.fill", color: .orange),
        WeatherData(id: 6, day: "Saturday", high: 70, low: 55, icon: "sun.max.fill", color: .yellow),
        WeatherData(id: 7, day: "Sunday", high: 70, low: 40, icon: "sun.max.fill", color: .pink),
    ]
}
