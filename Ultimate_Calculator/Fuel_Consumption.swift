//
//  Fuel_Consumption.swift
//  Ultimate_Calculator
//
//  Created by Hritik Raj on 8/14/20.
//  Copyright © 2020 Hritik Raj. All rights reserved.
//

import SwiftUI

struct Fuel_Consumption: View {
           @State var ShowUnit1 = false
        @State var ShowUnit2 = false
        @State var DisplayUnit1 = "Angle"
        @State var DisplayUnit2 = "Angle"
        @EnvironmentObject var viewRouter: ViewRouter
        @EnvironmentObject var env: GlobalEnvironment
    
        var fueldict : [String : String] = ["Gallons (UK)/100 Kilometers, UK gal/100 kmMiles/Gallon (UK), mil/UK gal": "282.481 mpg Imp.", "Miles/Gallon (UK), mil/UK galKilometers/Liter, km/l": "2.825 UK gal/100 km", "Miles/Liter, mil/lGallons (UK)/100 Kilometers, UK gal/100 km": "62.137 L/100 km", "Miles/Gallon (US), mil/US galLiters/100 Miles, l/100 mil": "146.187 UK gal/100 km", "Liters/100 Kilometers, l/100 kmKilometers/Gallon (US), km/US gal": "0.003 UK gal/100 km", "Liters/100 Miles, l/100 milMiles/Gallon (US), mil/US gal": "146.187 mpg", "Kilometers/Gallon (UK), km/UK galGallons (US)/100 Miles, UK gal/100 mil": "454.609 L/100 km", "Gallons (UK)/100 Kilometers, UK gal/100 kmKilometers/Gallon (UK), km/UK gal": "0.002 UK gal/100 km", "Kilometers/Gallon (UK), km/UK galGallons (UK)/100 Miles, UK gal/100 mil": "160.924 UK gal/100 km", "Kilometers/Liter, km/lLiters/100 Miles, l/100 mil": "62.15 UK gal/100 km", "Gallons (UK)/100 Miles, UK gal/100 milLiters/100 Kilometers, l/100 km": "2.825 L/100 km", "Gallons (US)/100 Miles, UK gal/100 milKilometers/Gallon (UK), km/UK gal": "0.002 UK gal/100 km", "Gallons (US)/100 Miles, UK gal/100 milMiles/Liter, mil/l": "0.016 UK gal/100 km", "Gallons (UK)/100 Kilometers, UK gal/100 kmGallons (US)/100 Kilometers, US gal/100 km": "0.264 UK gal/100 km", "Liters/100 Kilometers, l/100 kmMiles/Gallon (US), mil/US gal": "235.215 mpg", "Miles/Gallon (US), mil/US galKilometers/Gallon (UK), km/UK gal": "0.517 UK gal/100 km", "Liters/100 Miles, l/100 milGallons (UK)/100 Miles, UK gal/100 mil": "0.57 UK gal/100 km", "Gallons (UK)/100 Miles, UK gal/100 milKilometers/Liter, km/l": "0.028 UK gal/100 km", "Kilometers/Gallon (UK), km/UK galGallons (UK)/100 Kilometers, UK gal/100 km": "454.609 L/100 km", "Gallons (UK)/100 Kilometers, UK gal/100 kmKilometers/Gallon (US), km/US gal": "0.003 UK gal/100 km", "Gallons (UK)/100 Miles, UK gal/100 milMiles/Gallon (US), mil/US gal": "83.262 mpg", "Gallons (US)/100 Miles, UK gal/100 milGallons (UK)/100 Miles, UK gal/100 mil": "0.354 UK gal/100 km", "Miles/Liter, mil/lLiters/100 Miles, l/100 mil": "38.618 UK gal/100 km", "Kilometers/Liter, km/lKilometers/Gallon (US), km/US gal": "0.264 UK gal/100 km", "Kilometers/Gallon (US), km/US galGallons (US)/100 Kilometers, US gal/100 km": "100.011 UK gal/100 km", "Gallons (UK)/100 Kilometers, UK gal/100 kmMiles/Liter, mil/l": "0.016 UK gal/100 km", "Gallons (UK)/100 Kilometers, UK gal/100 kmLiters/100 Kilometers, l/100 km": "1 L/100 km", "Gallons (US)/100 Kilometers, US gal/100 kmGallons (UK)/100 Kilometers, UK gal/100 km": "3.785 L/100 km", "Miles/Gallon (UK), mil/UK galKilometers/Gallon (US), km/US gal": "0.746 UK gal/100 km", "Gallons (UK)/100 Miles, UK gal/100 milGallons (US)/100 Kilometers, US gal/100 km": "0.746 UK gal/100 km", "Liters/100 Kilometers, l/100 kmGallons (UK)/100 Kilometers, UK gal/100 km": "1 L/100 km", "Miles/Liter, mil/lKilometers/Gallon (US), km/US gal": "0.164 UK gal/100 km", "Gallons (US)/100 Miles, UK gal/100 milKilometers/Liter, km/l": "0.01 UK gal/100 km", "Gallons (US)/100 Miles, UK gal/100 milGallons (UK)/100 Kilometers, UK gal/100 km": "1 L/100 km", "Liters/100 Kilometers, l/100 kmKilometers/Gallon (UK), km/UK gal": "0.002 UK gal/100 km", "Gallons (US)/100 Miles, UK gal/100 milKilometers/Gallon (US), km/US gal": "0.003 UK gal/100 km", "Kilometers/Gallon (US), km/US galGallons (US)/100 Miles, UK gal/100 mil": "378.541 L/100 km", "Kilometers/Gallon (US), km/US galMiles/Liter, mil/l": "6.092 UK gal/100 km", "Gallons (US)/100 Miles, UK gal/100 milMiles/Gallon (US), mil/US gal": "235.215 mpg", "Liters/100 Miles, l/100 milMiles/Liter, mil/l": "0.026 UK gal/100 km", "Miles/Gallon (UK), mil/UK galMiles/Gallon (UK), mil/UK gal": "1 mpg Imp.", "Miles/Liter, mil/lGallons (UK)/100 Miles, UK gal/100 mil": "21.995 UK gal/100 km", "Gallons (UK)/100 Miles, UK gal/100 milGallons (US)/100 Miles, UK gal/100 mil": "2.825 L/100 km", "Miles/Liter, mil/lLiters/100 Kilometers, l/100 km": "62.137 L/100 km", "Miles/Liter, mil/lMiles/Gallon (UK), mil/UK gal": "4.546 mpg Imp.", "Kilometers/Liter, km/lKilometers/Liter, km/l": "1 UK gal/100 km", "Kilometers/Liter, km/lGallons (UK)/100 Miles, UK gal/100 mil": "35.398 UK gal/100 km", "Kilometers/Liter, km/lGallons (UK)/100 Kilometers, UK gal/100 km": "100 L/100 km", "Kilometers/Liter, km/lLiters/100 Kilometers, l/100 km": "100 L/100 km", "Miles/Gallon (UK), mil/UK galMiles/Gallon (US), mil/US gal": "0.833 mpg", "Kilometers/Gallon (US), km/US galGallons (UK)/100 Miles, UK gal/100 mil": "133.997 UK gal/100 km", "Liters/100 Kilometers, l/100 kmGallons (US)/100 Kilometers, US gal/100 km": "0.264 UK gal/100 km", "Gallons (US)/100 Kilometers, US gal/100 kmKilometers/Gallon (UK), km/UK gal": "0.008 UK gal/100 km", "Miles/Liter, mil/lGallons (US)/100 Miles, UK gal/100 mil": "62.137 L/100 km", "Gallons (US)/100 Kilometers, US gal/100 kmKilometers/Liter, km/l": "0.038 UK gal/100 km", "Kilometers/Gallon (US), km/US galLiters/100 Kilometers, l/100 km": "378.541 L/100 km", "Miles/Gallon (US), mil/US galGallons (UK)/100 Miles, UK gal/100 mil": "83.262 UK gal/100 km", "Miles/Gallon (UK), mil/UK galGallons (UK)/100 Kilometers, UK gal/100 km": "282.481 L/100 km", "Kilometers/Liter, km/lMiles/Gallon (UK), mil/UK gal": "2.825 mpg Imp.", "Gallons (US)/100 Kilometers, US gal/100 kmMiles/Gallon (UK), mil/UK gal": "74.632 mpg Imp.", "Kilometers/Liter, km/lGallons (US)/100 Kilometers, US gal/100 km": "26.42 UK gal/100 km", "Kilometers/Gallon (UK), km/UK galMiles/Gallon (UK), mil/UK gal": "0.621 mpg Imp.", "Gallons (US)/100 Kilometers, US gal/100 kmGallons (UK)/100 Miles, UK gal/100 mil": "1.34 UK gal/100 km", "Liters/100 Miles, l/100 milKilometers/Liter, km/l": "0.016 UK gal/100 km", "Kilometers/Liter, km/lKilometers/Gallon (UK), km/UK gal": "0.22 UK gal/100 km", "Liters/100 Kilometers, l/100 kmLiters/100 Kilometers, l/100 km": "1 L/100 km", "Gallons (US)/100 Miles, UK gal/100 milLiters/100 Kilometers, l/100 km": "1 L/100 km", "Kilometers/Gallon (US), km/US galMiles/Gallon (US), mil/US gal": "0.621 mpg", "Kilometers/Liter, km/lGallons (US)/100 Miles, UK gal/100 mil": "100 L/100 km", "Gallons (US)/100 Kilometers, US gal/100 kmLiters/100 Miles, l/100 mil": "2.352 UK gal/100 km", "Kilometers/Liter, km/lMiles/Liter, mil/l": "1.609 UK gal/100 km", "Miles/Liter, mil/lMiles/Liter, mil/l": "1 UK gal/100 km", "Kilometers/Gallon (UK), km/UK galKilometers/Gallon (US), km/US gal": "1.201 UK gal/100 km", "Gallons (US)/100 Miles, UK gal/100 milMiles/Gallon (UK), mil/UK gal": "282.481 mpg Imp.", "Gallons (UK)/100 Miles, UK gal/100 milLiters/100 Miles, l/100 mil": "1.756 UK gal/100 km", "Gallons (UK)/100 Kilometers, UK gal/100 kmLiters/100 Miles, l/100 mil": "0.622 UK gal/100 km", "Liters/100 Miles, l/100 milGallons (US)/100 Miles, UK gal/100 mil": "1.609 L/100 km", "Miles/Gallon (US), mil/US galKilometers/Liter, km/l": "2.352 UK gal/100 km", "Miles/Gallon (US), mil/US galMiles/Gallon (US), mil/US gal": "1 mpg", "Miles/Gallon (UK), mil/UK galKilometers/Gallon (UK), km/UK gal": "0.621 UK gal/100 km", "Kilometers/Gallon (US), km/US galGallons (UK)/100 Kilometers, UK gal/100 km": "378.541 L/100 km", "Miles/Gallon (US), mil/US galGallons (UK)/100 Kilometers, UK gal/100 km": "235.215 L/100 km", "Liters/100 Miles, l/100 milLiters/100 Miles, l/100 mil": "1 UK gal/100 km", "Liters/100 Miles, l/100 milGallons (US)/100 Kilometers, US gal/100 km": "0.425 UK gal/100 km", "Kilometers/Gallon (US), km/US galMiles/Gallon (UK), mil/UK gal": "0.746 mpg Imp.", "Kilometers/Gallon (UK), km/UK galLiters/100 Kilometers, l/100 km": "454.609 L/100 km", "Miles/Gallon (UK), mil/UK galLiters/100 Kilometers, l/100 km": "282.481 L/100 km", "Kilometers/Liter, km/lMiles/Gallon (US), mil/US gal": "2.352 mpg", "Kilometers/Gallon (UK), km/UK galGallons (US)/100 Kilometers, US gal/100 km": "120.108 UK gal/100 km", "Liters/100 Kilometers, l/100 kmKilometers/Liter, km/l": "0.01 UK gal/100 km", "Kilometers/Gallon (UK), km/UK galMiles/Gallon (US), mil/US gal": "0.517 mpg", "Gallons (UK)/100 Kilometers, UK gal/100 kmGallons (US)/100 Miles, UK gal/100 mil": "1 L/100 km", "Gallons (UK)/100 Kilometers, UK gal/100 kmGallons (UK)/100 Kilometers, UK gal/100 km": "1 L/100 km", "Gallons (UK)/100 Miles, UK gal/100 milKilometers/Gallon (UK), km/UK gal": "0.006 UK gal/100 km", "Kilometers/Gallon (US), km/US galKilometers/Gallon (US), km/US gal": "1 UK gal/100 km", "Miles/Gallon (US), mil/US galMiles/Gallon (UK), mil/UK gal": "1.201 mpg Imp.", "Gallons (UK)/100 Miles, UK gal/100 milMiles/Liter, mil/l": "0.045 UK gal/100 km", "Liters/100 Miles, l/100 milKilometers/Gallon (UK), km/UK gal": "0.004 UK gal/100 km", "Miles/Gallon (US), mil/US galGallons (US)/100 Miles, UK gal/100 mil": "235.215 L/100 km", "Kilometers/Gallon (US), km/US galKilometers/Liter, km/l": "3.785 UK gal/100 km", "Miles/Liter, mil/lMiles/Gallon (US), mil/US gal": "3.785 mpg", "Miles/Liter, mil/lGallons (US)/100 Kilometers, US gal/100 km": "16.417 UK gal/100 km", "Liters/100 Miles, l/100 milLiters/100 Kilometers, l/100 km": "1.609 L/100 km", "Miles/Gallon (US), mil/US galGallons (US)/100 Kilometers, US gal/100 km": "62.144 UK gal/100 km", "Liters/100 Kilometers, l/100 kmGallons (UK)/100 Miles, UK gal/100 mil": "0.354 UK gal/100 km", "Liters/100 Kilometers, l/100 kmLiters/100 Miles, l/100 mil": "0.622 UK gal/100 km", "Gallons (US)/100 Kilometers, US gal/100 kmGallons (US)/100 Miles, UK gal/100 mil": "3.785 L/100 km", "Kilometers/Gallon (UK), km/UK galLiters/100 Miles, l/100 mil": "282.541 UK gal/100 km", "Miles/Gallon (UK), mil/UK galGallons (US)/100 Kilometers, US gal/100 km": "74.632 UK gal/100 km", "Miles/Gallon (US), mil/US galMiles/Liter, mil/l": "3.785 UK gal/100 km", "Kilometers/Gallon (UK), km/UK galMiles/Liter, mil/l": "7.316 UK gal/100 km", "Liters/100 Miles, l/100 milGallons (UK)/100 Kilometers, UK gal/100 km": "1.609 L/100 km", "Gallons (UK)/100 Miles, UK gal/100 milKilometers/Gallon (US), km/US gal": "0.007 UK gal/100 km", "Miles/Gallon (US), mil/US galLiters/100 Kilometers, l/100 km": "235.215 L/100 km", "Miles/Gallon (UK), mil/UK galGallons (UK)/100 Miles, UK gal/100 mil": "99.993 UK gal/100 km", "Gallons (US)/100 Kilometers, US gal/100 kmGallons (US)/100 Kilometers, US gal/100 km": "1 UK gal/100 km", "Gallons (US)/100 Miles, UK gal/100 milGallons (US)/100 Kilometers, US gal/100 km": "0.264 UK gal/100 km", "Kilometers/Gallon (US), km/US galLiters/100 Miles, l/100 mil": "235.265 UK gal/100 km", "Gallons (US)/100 Miles, UK gal/100 milLiters/100 Miles, l/100 mil": "0.622 UK gal/100 km", "Liters/100 Kilometers, l/100 kmMiles/Gallon (UK), mil/UK gal": "282.481 mpg Imp.", "Gallons (UK)/100 Kilometers, UK gal/100 kmKilometers/Liter, km/l": "0.01 UK gal/100 km", "Gallons (UK)/100 Miles, UK gal/100 milGallons (UK)/100 Miles, UK gal/100 mil": "1 UK gal/100 km", "Gallons (US)/100 Kilometers, US gal/100 kmMiles/Liter, mil/l": "0.061 UK gal/100 km", "Liters/100 Kilometers, l/100 kmMiles/Liter, mil/l": "0.016 UK gal/100 km", "Miles/Gallon (UK), mil/UK galMiles/Liter, mil/l": "4.546 UK gal/100 km", "Miles/Liter, mil/lKilometers/Gallon (UK), km/UK gal": "0.137 UK gal/100 km", "Miles/Liter, mil/lKilometers/Liter, km/l": "0.621 UK gal/100 km", "Miles/Gallon (US), mil/US galKilometers/Gallon (US), km/US gal": "0.621 UK gal/100 km", "Gallons (UK)/100 Kilometers, UK gal/100 kmGallons (UK)/100 Miles, UK gal/100 mil": "0.354 UK gal/100 km", "Kilometers/Gallon (UK), km/UK galKilometers/Gallon (UK), km/UK gal": "1 UK gal/100 km", "Gallons (US)/100 Kilometers, US gal/100 kmMiles/Gallon (US), mil/US gal": "62.144 mpg", "Gallons (US)/100 Miles, UK gal/100 milGallons (US)/100 Miles, UK gal/100 mil": "1 L/100 km", "Gallons (UK)/100 Miles, UK gal/100 milGallons (UK)/100 Kilometers, UK gal/100 km": "2.825 L/100 km", "Liters/100 Miles, l/100 milMiles/Gallon (UK), mil/UK gal": "175.563 mpg Imp.", "Gallons (US)/100 Kilometers, US gal/100 kmLiters/100 Kilometers, l/100 km": "3.785 L/100 km", "Liters/100 Kilometers, l/100 kmGallons (US)/100 Miles, UK gal/100 mil": "1 L/100 km", "Miles/Gallon (UK), mil/UK galLiters/100 Miles, l/100 mil": "175.563 UK gal/100 km", "Liters/100 Miles, l/100 milKilometers/Gallon (US), km/US gal": "0.004 UK gal/100 km", "Gallons (UK)/100 Miles, UK gal/100 milMiles/Gallon (UK), mil/UK gal": "99.993 mpg Imp.", "Kilometers/Gallon (UK), km/UK galKilometers/Liter, km/l": "4.546 UK gal/100 km", "Gallons (UK)/100 Kilometers, UK gal/100 kmMiles/Gallon (US), mil/US gal": "235.215 mpg", "Kilometers/Gallon (US), km/US galKilometers/Gallon (UK), km/UK gal": "0.833 UK gal/100 km", "Miles/Gallon (UK), mil/UK galGallons (US)/100 Miles, UK gal/100 mil": "282.481 L/100 km", "Gallons (US)/100 Kilometers, US gal/100 kmKilometers/Gallon (US), km/US gal": "0.01 UK gal/100 km"]

        
        var jointdict : [String : UnitFuelEfficiency] = [:]
    
//            let keys1 = ["Gallons (UK)/100 Kilometers, UK gal/100 km", "Gallons (UK)/100 Miles, UK gal/100 mil", "Gallons (US)/100 Kilometers, US gal/100 km", "Gallons (US)/100 Miles, UK gal/100 mil", "Kilometers/Gallon (UK), km/UK gal","Kilometers/Gallon (US), km/US gal", "Kilometers/Liter, km/l", "Liters/100 Kilometers, l/100 km", "Liters/100 Miles, l/100 mil", "Miles/Gallon (UK), mil/UK gal", "Miles/Gallon (US), mil/US gal", "Miles/Liter, mil/l"]
//    
//           let keys2 = ["Gallons (UK)/100 Kilometers, UK gal/100 km", "Gallons (UK)/100 Miles, UK gal/100 mil", "Gallons (US)/100 Kilometers, US gal/100 km", "Gallons (US)/100 Miles, UK gal/100 mil", "Kilometers/Gallon (UK), km/UK gal","Kilometers/Gallon (US), km/US gal", "Kilometers/Liter, km/l", "Liters/100 Kilometers, l/100 km", "Liters/100 Miles, l/100 mil", "Miles/Gallon (UK), mil/UK gal", "Miles/Gallon (US), mil/US gal", "Miles/Liter, mil/l"]
//    
//                        init () {
//        
//                            for i in 1..<fuelarray.count {
//                                jointdict[fuelarray[i]] = array2[i]
//                            }
//        
//        
//                            let formatter = MeasurementFormatter()
//                            formatter.unitOptions = .providedUnit
//                            for itema in keys1 {
//                                for itemb in keys2 {
//                                    let itemc = itema + itemb
//                                    let val1 = Measurement(value: 1.0 , unit: jointdict[itema] ?? UnitFuelEfficiency.litersPer100Kilometers)
//                                    let val2 = val1.converted(to: jointdict[itemb] ?? UnitFuelEfficiency.litersPer100Kilometers)
//                                    let storeval =  formatter.string(from: val2)
//                                    fueldict[itemc] = storeval
//                                }
//                            }
//        
//                            print ("Final Dict :", fueldict)
//                        }
        
        
        let buttons_normal: [[CalculatorButton]] = [
            [.ac, .plus_minus, .percent, .DEL],
            [.seven, .eight, .nine, .divide],
            [.four, .five, .six, .multiply],
            [.one, .two, .three, .minus],
            [.zero, .decimal, .equals, .plus]
        ]
        var body: some View {
            ZStack (alignment: .bottom){ Color.black
                .edgesIgnoringSafeArea(.all)
                
                VStack (spacing: 6){
                    
    Text(viewRouter.currentPage)
    .font(.system(size: 40))
    .foregroundColor(.white)
    .padding(.all)
                                Button(action: {
                                    self.ShowUnit1.toggle()
                                }) {
                                    Text(self.DisplayUnit1 + "  "  + env.displayconvertfuel)
                                    }
                                .sheet(isPresented: $ShowUnit1) {
                                    ModalFuel(isPresented: self.$ShowUnit1, isPresented1: self.$ShowUnit1, isPresented2: self.$ShowUnit2, currentUnit1: self.$DisplayUnit1, currentUnit2: self.$DisplayUnit2)
                                }
                                    .font(.system(size: 40))
                                    .frame(width: (UIScreen.main.bounds.width - 2 * 12), height: UIScreen.main.bounds.height / 10)
                                    .foregroundColor(.white)
                                    .background(Color.gray)
                                    .cornerRadius(UIScreen.main.bounds.width - 2 * 12)
                        
                                Button(action: {
                                    self.ShowUnit2.toggle()
                                }) {
                                                                      Text(self.DisplayUnit2 + "  " + calc(env.displayconvertfuel, self.DisplayUnit1, self.DisplayUnit2))
//                                    Text(self.DisplayUnit2 + "  ")
                                    }
                                    .sheet(isPresented: $ShowUnit2) {
                                        ModalFuel(isPresented: self.$ShowUnit1, isPresented1: self.$ShowUnit1, isPresented2: self.$ShowUnit2, currentUnit1: self.$DisplayUnit1, currentUnit2: self.$DisplayUnit2)
                                }
                                    .font(.system(size: 40))
                                    .frame(width: (UIScreen.main.bounds.width - 2 * 12), height: UIScreen.main.bounds.height / 10)
                                    .foregroundColor(.white)
                                    .background(Color.gray)
                                    .cornerRadius(UIScreen.main.bounds.width - 2 * 12)
                    Spacer()
                    
    //                HStack {
    //                    Spacer()
    //                    Text(env.displayconvert)
    //                        .foregroundColor(.white)
    //                        .font(.system(size: CGFloat(env.fontsizeconvert)))
    //                }.padding()
                    
                    
                    ForEach(buttons_normal, id: \.self) {
                        row in HStack (spacing: 12) {
                            if self.viewRouter.currentButtonDesign == "Rounded" {
                                ForEach(row, id: \.self) { button in
                                    ConvertorButtonRounded(button: button, buttonconvertor: self.viewRouter.currentPage)
                                }
                            } else if self.viewRouter.currentButtonDesign == "Square" {
                                ForEach(row, id: \.self) { button in
                                    ConvertorButtonSquare(button: button, buttonconvertor: self.viewRouter.currentPage)
                                }
                            } else {
                                ForEach(row, id: \.self) { button in
                                    ConvertorButtonCircle(button: button, buttonconvertor: self.viewRouter.currentPage)
                                }
                            }

                        }
                    }
                    
                    HStack (alignment: .bottom) {
                                Text("Settings").font(.system(size: 14))
                        
                                Button(action: {self.viewRouter.currentPage = "Currency Convert"}) {
                                Text("Currency Convert")
                                }.font(.system(size: 18))
                                .frame(width: (UIScreen.main.bounds.width - 5 * 12)/4, height: ((UIScreen.main.bounds.width - 5 * 12)/4)*0.5)
                                .foregroundColor(.white)
                                .background(Color.gray)
                                .cornerRadius((UIScreen.main.bounds.width - 5 * 12)/4)

                                Button(action: {self.viewRouter.currentPage = "page_settings"}) {
                                Text("Settings")
                                }.font(.system(size: 18))
                                .frame(width: (UIScreen.main.bounds.width - 5 * 12)/4, height: ((UIScreen.main.bounds.width - 5 * 12)/4)*0.5)
                                .foregroundColor(.white)
                                .background(Color.gray)
                                .cornerRadius((UIScreen.main.bounds.width - 5 * 12)/4)

                                Button(action: {
                                    self.viewRouter.currentPage = "page_convertor"
                                    
                                }) {
                                Text("Convertor")
                                }.font(.system(size: 18))
                                .frame(width: (UIScreen.main.bounds.width - 5 * 12)/4, height: ((UIScreen.main.bounds.width - 5 * 12)/4)*0.5)
                                .foregroundColor(.white)
                                .background(Color.gray)
                                .cornerRadius((UIScreen.main.bounds.width - 5 * 12)/4)

                                Button(action: {
                                    self.viewRouter.currentPage = "page_basic"
                                
                                }) {
                                Text("Basic")
                                }.font(.system(size: 18))
                                .frame(width: (UIScreen.main.bounds.width - 5 * 12)/4, height: ((UIScreen.main.bounds.width - 5 * 12)/4)*0.5)
                                .foregroundColor(.white)
                                .background(Color.gray)
                                .cornerRadius((UIScreen.main.bounds.width - 5 * 12)/4)

                     }.foregroundColor(.white)
                }
            }
        }
    
    
    let fuelarray =
    ["Gallons (UK)/100 Kilometers, UK gal/100 km", "Gallons (UK)/100 Miles, UK gal/100 mil", "Gallons (US)/100 Kilometers, US gal/100 km", "Gallons (US)/100 Miles, US gal/100 mil",
     "Kilometers/Gallon (UK), km/UK gal","Kilometers/Gallon (US), km/US gal", "Kilometers/Liter, km/l", "Liters/100 Kilometers, l/100 km", "Liters/100 Miles, l/100 mil", "Miles/Gallon (UK), mil/UK gal", "Miles/Gallon (US), mil/US gal", "Miles/Liter, mil/l"]
    
    let array2 = [UnitFuelEfficiency.gallonukper100km, UnitFuelEfficiency.gallonukper100mile ,UnitFuelEfficiency.gallonusper100km ,UnitFuelEfficiency.gallonusper100mile ,UnitFuelEfficiency.kmperukgal,   UnitFuelEfficiency.kmperusgal,UnitFuelEfficiency.kmpl,UnitFuelEfficiency.litersPer100Kilometers, UnitFuelEfficiency.literper100mile,UnitFuelEfficiency.milesPerImperialGallon,UnitFuelEfficiency.milesPerGallon,UnitFuelEfficiency.mileperliter]
    
    private func calc(_ unit1val: String, _ unit1: String, _ unit2: String) -> String{
        let formatter = MeasurementFormatter()
        let stringval: String = unit1  +  unit2
        let storedval = (fueldict[stringval, default: "1"])
        let operand1 = (unit1val as NSString).doubleValue
        let operand2 = (storedval as NSString).doubleValue
        return String(operand1 * operand2)
        
    }
}

struct Fuel_Consumption_Previews: PreviewProvider {
    static var previews: some View {
        Fuel_Consumption()
        .environmentObject(ViewRouter())
        .environmentObject(GlobalEnvironment())
    }
}


extension UnitFuelEfficiency {
    
    static let gallonukper100km = UnitFuelEfficiency(symbol: "UK gal/100 km", converter: UnitConverterLinear(coefficient: 4.546))
    static let gallonukper100mile = UnitFuelEfficiency(symbol: "UK gal/100 km", converter: UnitConverterLinear(coefficient: 2.825))
    static let gallonusper100km = UnitFuelEfficiency(symbol: "UK gal/100 km", converter: UnitConverterLinear(coefficient: 3.785))
    static let gallonusper100mile = UnitFuelEfficiency(symbol: "UK gal/100 km", converter: UnitConverterLinear(coefficient: 2.352))
    static let kmperukgal = UnitFuelEfficiency(symbol: "UK gal/100 km", converter: UnitConverterLinear(coefficient: 454.609))
    static let kmperusgal = UnitFuelEfficiency(symbol: "UK gal/100 km", converter: UnitConverterLinear(coefficient: 378.541))
    static let kmpl = UnitFuelEfficiency(symbol: "UK gal/100 km", converter: UnitConverterLinear(coefficient: 100))
    static let literper100mile = UnitFuelEfficiency(symbol: "UK gal/100 km", converter: UnitConverterLinear(coefficient: 1.609))
    static let mileperliter = UnitFuelEfficiency(symbol: "UK gal/100 km", converter: UnitConverterLinear(coefficient: 62.137))
}
