//
//  Area.swift
//  Ultimate_Calculator
//
//  Created by Hritik Raj on 8/14/20.
//  Copyright © 2020 Hritik Raj. All rights reserved.
//

import SwiftUI

struct Area: View {
         @State var ShowUnit1 = false
                @State var ShowUnit2 = false
                @State var DisplayUnit1 = "Angle"
                @State var DisplayUnit2 = "Angle"
                @EnvironmentObject var viewRouter: ViewRouter
                @EnvironmentObject var env: GlobalEnvironment
                
                var areadict : [String: String] = ["Acre, acAcre, ac": "1 ac", "Square Kilometer, km²Cents, cent": "24,710.272 cent", "Acre, acSquare Mile, mi²": "0.002 sq mi", "Square Mile, mi²Acre, ac": "640 ac", "Cents, centSquare Yard, yd²": "48.401 yd²", "Hectare, haHectare, ha": "1 ha", "Hectare, haSquare Meter, m²": "10,000 m²", "Tsubo, tsuboAre, a": "0.033 a", "Are, aHectare, ha": "0.01 ha", "Cents, centSquare Inch, in²": "62,727.075 in²", "Square Inch, in²Square Inch, in²": "1 in²", "Square Centimeter, cm²Tsubo, tsubo": "0 tsubo", "Square Kilometer, km²Square Mile, mi²": "0.386 sq mi", "Acre, acAre, a": "40.469 a", "Tsubo, tsuboSquare Foot, ft²": "35.585 sq ft", "Square Kilometer, km²Square Centimeter, cm²": "10,000,000,000 cm²", "Hectare, haSquare Mile, mi²": "0.004 sq mi", "Hectare, haSquare Centimeter, cm²": "100,000,000 cm²", "Hectare, haSquare Foot, ft²": "107,639.104 sq ft", "Square Meter, m²Cents, cent": "0.025 cent", "Square Meter, m²Square Inch, in²": "1,550.003 in²", "Square Mile, mi²Square Inch, in²": "4,014,489,600 in²", "Square Centimeter, cm²Square Kilometer, km²": "0 km²", "Square Inch, in²Square Meter, m²": "0.001 m²", "Square Yard, yd²Hectare, ha": "0 ha", "Square Inch, in²Acre, ac": "0 ac", "Square Centimeter, cm²Square Mile, mi²": "0 sq mi", "Tsubo, tsuboAcre, ac": "0.001 ac", "Square Inch, in²Square Foot, ft²": "0.007 sq ft", "Square Mile, mi²Cents, cent": "63,999.311 cent", "Square Meter, m²Square Foot, ft²": "10.764 sq ft", "Square Centimeter, cm²Hectare, ha": "0 ha", "Square Kilometer, km²Hectare, ha": "100 ha", "Square Mile, mi²Tsubo, tsubo": "783,420.481 tsubo", "Tsubo, tsuboSquare Inch, in²": "5,124.31 in²", "Acre, acSquare Inch, in²": "6,272,640 in²", "Square Meter, m²Square Mile, mi²": "0 sq mi", "Square Yard, yd²Tsubo, tsubo": "0.253 tsubo", "Cents, centHectare, ha": "0.004 ha", "Hectare, haTsubo, tsubo": "3,024.803 tsubo", "Cents, centSquare Meter, m²": "40.469 m²", "Cents, centSquare Mile, mi²": "0 sq mi", "Square Mile, mi²Are, a": "25,899.881 a", "Are, aAcre, ac": "0.025 ac", "Square Inch, in²Are, a": "0 a", "Square Meter, m²Tsubo, tsubo": "0.302 tsubo", "Are, aSquare Centimeter, cm²": "1,000,000 cm²", "Square Kilometer, km²Square Meter, m²": "1,000,000 m²", "Square Foot, ft²Square Mile, mi²": "0 sq mi", "Square Meter, m²Square Kilometer, km²": "0 km²", "Square Kilometer, km²Square Kilometer, km²": "1 km²", "Tsubo, tsuboSquare Meter, m²": "3.306 m²", "Square Foot, ft²Square Meter, m²": "0.093 m²", "Cents, centCents, cent": "1 cent", "Square Centimeter, cm²Acre, ac": "0 ac", "Square Foot, ft²Acre, ac": "0 ac", "Acre, acHectare, ha": "0.405 ha", "Cents, centAcre, ac": "0.01 ac", "Square Mile, mi²Square Mile, mi²": "1 sq mi", "Square Inch, in²Cents, cent": "0 cent", "Square Meter, m²Are, a": "0.01 a", "Square Inch, in²Square Yard, yd²": "0.001 yd²", "Acre, acSquare Centimeter, cm²": "40,468,564.224 cm²", "Square Kilometer, km²Tsubo, tsubo": "302,480.339 tsubo", "Square Kilometer, km²Square Yard, yd²": "1,195,990.046 yd²", "Square Inch, in²Square Kilometer, km²": "0 km²", "Square Kilometer, km²Acre, ac": "247.105 ac", "Hectare, haSquare Inch, in²": "15,500,031 in²", "Square Foot, ft²Square Inch, in²": "144 in²", "Square Foot, ft²Tsubo, tsubo": "0.028 tsubo", "Acre, acSquare Yard, yd²": "4,840 yd²", "Square Yard, yd²Square Centimeter, cm²": "8,361.274 cm²", "Square Kilometer, km²Are, a": "10,000 a", "Tsubo, tsuboSquare Kilometer, km²": "0 km²", "Square Inch, in²Tsubo, tsubo": "0 tsubo", "Hectare, haAre, a": "100 a", "Are, aSquare Inch, in²": "155,000.31 in²", "Square Yard, yd²Cents, cent": "0.021 cent", "Square Mile, mi²Hectare, ha": "258.999 ha", "Tsubo, tsuboSquare Yard, yd²": "3.954 yd²", "Square Inch, in²Square Mile, mi²": "0 sq mi", "Square Yard, yd²Acre, ac": "0 ac", "Square Foot, ft²Are, a": "0.001 a", "Acre, acTsubo, tsubo": "1,224.095 tsubo", "Square Centimeter, cm²Square Foot, ft²": "0.001 sq ft", "Square Kilometer, km²Square Foot, ft²": "10,763,910.417 sq ft", "Square Meter, m²Acre, ac": "0 ac", "Square Yard, yd²Square Kilometer, km²": "0 km²", "Square Centimeter, cm²Cents, cent": "0 cent", "Square Foot, ft²Square Foot, ft²": "1 sq ft", "Square Mile, mi²Square Yard, yd²": "3,097,600 yd²", "Square Mile, mi²Square Foot, ft²": "27,878,400 sq ft", "Hectare, haSquare Kilometer, km²": "0.01 km²", "Cents, centSquare Foot, ft²": "435.605 sq ft", "Cents, centTsubo, tsubo": "12.241 tsubo", "Square Yard, yd²Square Inch, in²": "1,296 in²", "Square Yard, yd²Square Mile, mi²": "0 sq mi", "Are, aSquare Meter, m²": "100 m²", "Square Yard, yd²Square Foot, ft²": "9 sq ft", "Tsubo, tsuboSquare Centimeter, cm²": "33,060 cm²", "Tsubo, tsuboHectare, ha": "0 ha", "Square Foot, ft²Cents, cent": "0.002 cent", "Square Foot, ft²Hectare, ha": "0 ha", "Square Yard, yd²Are, a": "0.008 a", "Square Centimeter, cm²Square Yard, yd²": "0 yd²", "Acre, acSquare Foot, ft²": "43,560 sq ft", "Square Centimeter, cm²Are, a": "0 a", "Square Centimeter, cm²Square Centimeter, cm²": "1 cm²", "Square Meter, m²Square Yard, yd²": "1.196 yd²", "Hectare, haCents, cent": "247.103 cent", "Cents, centSquare Centimeter, cm²": "404,690 cm²", "Acre, acSquare Meter, m²": "4,046.856 m²", "Square Mile, mi²Square Meter, m²": "2,589,988.11 m²", "Square Yard, yd²Square Meter, m²": "0.836 m²", "Square Inch, in²Hectare, ha": "0 ha", "Square Mile, mi²Square Kilometer, km²": "2.59 km²", "Are, aSquare Mile, mi²": "0 sq mi", "Are, aSquare Yard, yd²": "119.599 yd²", "Square Yard, yd²Square Yard, yd²": "1 yd²", "Cents, centAre, a": "0.405 a", "Hectare, haSquare Yard, yd²": "11,959.9 yd²", "Acre, acCents, cent": "99.999 cent", "Square Centimeter, cm²Square Inch, in²": "0.155 in²", "Are, aAre, a": "1 a", "Tsubo, tsuboSquare Mile, mi²": "0 sq mi", "Cents, centSquare Kilometer, km²": "0 km²", "Square Inch, in²Square Centimeter, cm²": "6.452 cm²", "Tsubo, tsuboTsubo, tsubo": "1 tsubo", "Square Kilometer, km²Square Inch, in²": "1,550,003,100.006 in²", "Square Foot, ft²Square Kilometer, km²": "0 km²", "Acre, acSquare Kilometer, km²": "0.004 km²", "Are, aTsubo, tsubo": "30.248 tsubo", "Square Meter, m²Hectare, ha": "0 ha", "Square Centimeter, cm²Square Meter, m²": "0 m²", "Are, aCents, cent": "2.471 cent", "Square Mile, mi²Square Centimeter, cm²": "25,899,881,103.36 cm²", "Square Foot, ft²Square Centimeter, cm²": "929.03 cm²", "Tsubo, tsuboCents, cent": "0.082 cent", "Square Meter, m²Square Centimeter, cm²": "10,000 cm²", "Square Meter, m²Square Meter, m²": "1 m²", "Are, aSquare Foot, ft²": "1,076.391 sq ft", "Hectare, haAcre, ac": "2.471 ac", "Are, aSquare Kilometer, km²": "0 km²", "Square Foot, ft²Square Yard, yd²": "0.111 yd²"]
    
    
    
//                let keys1 = ["Acre, ac", "Are, a", "Hectare, ha", "Square Centimeter, cm²", "Square Foot, ft²", "Square Inch, in²", "Square Kilometer, km²", "Square Meter, m²", "Square Mile, mi²", "Square Yard, yd²", "Tsubo, tsubo", "Cents, cent"]
//
//                let keys2 = ["Acre, ac", "Are, a", "Hectare, ha", "Square Centimeter, cm²", "Square Foot, ft²", "Square Inch, in²", "Square Kilometer, km²", "Square Meter, m²", "Square Mile, mi²", "Square Yard, yd²", "Tsubo, tsubo", "Cents, cent"]
//                init () {
//
//
//                    let formatter = MeasurementFormatter()
//                    formatter.unitOptions = .providedUnit
//                    for itema in keys1 {
//                        for itemb in keys2 {
//                            let itemc = itema + itemb
//                            let val1 = Measurement(value: 1.0 , unit: type(itema))
//                            let val2 = val1.converted(to: type(itemb))
//                            let storeval =  formatter.string(from: val2)
//                            areadict[itemc] = storeval
//                        }
//                    }
//
//                    print ("Final Dict :", areadict)
//                }
                
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
                                            Text(self.DisplayUnit1 + "  "  + env.displayconvertare)
                                            }
                                        .sheet(isPresented: $ShowUnit1) {
                                            ModalArea(isPresented: self.$ShowUnit1, isPresented1: self.$ShowUnit1, isPresented2: self.$ShowUnit2, currentUnit1: self.$DisplayUnit1, currentUnit2: self.$DisplayUnit2)
                                        }
                                            .font(.system(size: 40))
                                            .frame(width: (UIScreen.main.bounds.width - 2 * 12), height: UIScreen.main.bounds.height / 10)
                                            .foregroundColor(.white)
                                            .background(Color.gray)
                                            .cornerRadius(UIScreen.main.bounds.width - 2 * 12)
                                
                                        Button(action: {
                                            self.ShowUnit2.toggle()
                                        }) {
                                            Text(self.DisplayUnit2 + "  " + calc(env.displayconvertare, self.DisplayUnit1, self.DisplayUnit2))
                                            }
                                            .sheet(isPresented: $ShowUnit2) {
                                                ModalArea(isPresented: self.$ShowUnit1, isPresented1: self.$ShowUnit1, isPresented2: self.$ShowUnit2, currentUnit1: self.$DisplayUnit1, currentUnit2: self.$DisplayUnit2)
                                        }
                                            .font(.system(size: 40))
                                            .frame(width: (UIScreen.main.bounds.width - 2 * 12), height: UIScreen.main.bounds.height / 10)
                                            .foregroundColor(.white)
                                            .background(Color.gray)
                                            .cornerRadius(UIScreen.main.bounds.width - 2 * 12)
                            Spacer()
                        

                        
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
    
//                ["Acre, ac", "Are, a", "Hectare, ha", "Square Centimeter, cm²", "Square Foot, ft²", "Square Inch, in²", "Square Kilometer, km²", "Square Meter, m²", "Square Mile, mi²", "Square Yard, yd²", "Tsubo, tsubo", "Cents, cent"]
    
    private func type(_ unit: String) -> UnitArea {
    
    if unit == "Acre, ac" {
        return UnitArea.acres
    }
    else if unit == "Are, a" {
        return UnitArea.ares
    }
    else if unit == "Hectare, ha" {
        return UnitArea.hectares
    }
    else if unit == "Square Centimeter, cm²" {
        return UnitArea.squareCentimeters
    }
    else if unit == "Square Foot, ft²" {
        return UnitArea.squareFeet
    }
    else if unit == "Square Inch, in²" {
        return UnitArea.squareInches
    }
    else if unit == "Square Kilometer, km²" {
        return UnitArea.squareKilometers
    }
    else if unit == "Square Meter, m²" {
        return UnitArea.squareMeters
    }
    else if unit == "Square Mile, mi²" {
        return UnitArea.squareMiles
    }
    else if unit == "Square Yard, yd²" {
        return UnitArea.squareYards
    }
    else if unit == "Tsubo, tsubo" {
        return UnitArea.tsubo
    }
    else if unit == "Cents, cent" {
        return UnitArea.cent
    }
        return UnitArea.squareMeters
        
}
    
    
//    private func type(_ inputvalunit1: String, _ inputUnit1: String, _ inputUnit2: String) -> String {
//        let formatter = MeasurementFormatter()
//        formatter.unitOptions = .providedUnit
//        let inputval = Double(inputvalunit1)
//
//
//        if inputUnit1 == "Acre, ac" {
//            switch inputUnit2 {
//            case "Are, a":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.acres)
//                let retval = acre.converted(to: UnitArea.ares)
//                return formatter.string(from: retval)
//
//            case "Hectare, ha":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.acres)
//                let retval = acre.converted(to: UnitArea.hectares)
//                return formatter.string(from: retval)
//
//            case "Square Centimeter, cm²":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.acres)
//                let retval = acre.converted(to: UnitArea.squareCentimeters)
//                return formatter.string(from: retval)
//
//            case "Square Foot, ft²":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.acres)
//                let retval = acre.converted(to: UnitArea.squareFeet)
//                return formatter.string(from: retval)
//
//            case "Square Inch, in²":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.acres)
//                let retval = acre.converted(to: UnitArea.squareInches)
//                return formatter.string(from: retval)
//
//            case "Square Kilometer, km²":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.acres)
//                let retval = acre.converted(to: UnitArea.squareKilometers)
//                return formatter.string(from: retval)
//
//            case "Square Meter, m²":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.acres)
//                let retval = acre.converted(to: UnitArea.squareMeters)
//                return formatter.string(from: retval)
//
//            case "Square Mile, mi²":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.acres)
//                let retval = acre.converted(to: UnitArea.squareMiles)
//                return formatter.string(from: retval)
//
//            case "Square Yard, yd²":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.acres)
//                let retval = acre.converted(to: UnitArea.squareYards)
//                return formatter.string(from: retval)
//
//            case "Tsubo, tsubo":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.acres)
//                let retval = acre.converted(to: UnitArea.tsubo)
//                return formatter.string(from: retval)
//
//            default:
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.acres)
//                let retval = acre.converted(to: UnitArea.cent)
//                return formatter.string(from: retval)
//
//            }
//        }
//
//        else if inputUnit1 == "Are, a" {
//            switch inputUnit2 {
//            case "Acre, ac":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.ares)
//                let retval = acre.converted(to: UnitArea.acres)
//                return formatter.string(from: retval)
//
//            case "Hectare, ha":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.ares)
//                let retval = acre.converted(to: UnitArea.hectares)
//                return formatter.string(from: retval)
//
//            case "Square Centimeter, cm²":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.ares)
//                let retval = acre.converted(to: UnitArea.squareCentimeters)
//                return formatter.string(from: retval)
//
//            case "Square Foot, ft²":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.ares)
//                let retval = acre.converted(to: UnitArea.squareFeet)
//                return formatter.string(from: retval)
//
//            case "Square Inch, in²":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.ares)
//                let retval = acre.converted(to: UnitArea.squareInches)
//                return formatter.string(from: retval)
//
//            case "Square Kilometer, km²":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.ares)
//                let retval = acre.converted(to: UnitArea.squareKilometers)
//                return formatter.string(from: retval)
//
//            case "Square Meter, m²":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.ares)
//                let retval = acre.converted(to: UnitArea.squareMeters)
//                return formatter.string(from: retval)
//
//            case "Square Mile, mi²":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.ares)
//                let retval = acre.converted(to: UnitArea.squareMiles)
//                return formatter.string(from: retval)
//
//            case "Square Yard, yd²":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.ares)
//                let retval = acre.converted(to: UnitArea.squareYards)
//                return formatter.string(from: retval)
//
//            case "Tsubo, tsubo":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.ares)
//                let retval = acre.converted(to: UnitArea.tsubo)
//                return formatter.string(from: retval)
//
//            default:
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.ares)
//                let retval = acre.converted(to: UnitArea.cent)
//                return formatter.string(from: retval)
//
//            }
//        }
//
//        else if inputUnit1 == "Hectare, ha" {
//            switch inputUnit2 {
//            case "Are, a":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.hectares)
//                let retval = acre.converted(to: UnitArea.ares)
//                return formatter.string(from: retval)
//
//            case "Acre, ac":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.hectares)
//                let retval = acre.converted(to: UnitArea.acres)
//                return formatter.string(from: retval)
//
//            case "Square Centimeter, cm²":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.hectares)
//                let retval = acre.converted(to: UnitArea.squareCentimeters)
//                return formatter.string(from: retval)
//
//            case "Square Foot, ft²":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.hectares)
//                let retval = acre.converted(to: UnitArea.squareFeet)
//                return formatter.string(from: retval)
//
//            case "Square Inch, in²":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.hectares)
//                let retval = acre.converted(to: UnitArea.squareInches)
//                return formatter.string(from: retval)
//
//            case "Square Kilometer, km²":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.hectares)
//                let retval = acre.converted(to: UnitArea.squareKilometers)
//                return formatter.string(from: retval)
//
//            case "Square Meter, m²":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.hectares)
//                let retval = acre.converted(to: UnitArea.squareMeters)
//                return formatter.string(from: retval)
//
//            case "Square Mile, mi²":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.hectares)
//                let retval = acre.converted(to: UnitArea.squareMiles)
//                return formatter.string(from: retval)
//
//            case "Square Yard, yd²":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.hectares)
//                let retval = acre.converted(to: UnitArea.squareYards)
//                return formatter.string(from: retval)
//
//            case "Tsubo, tsubo":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.hectares)
//                let retval = acre.converted(to: UnitArea.tsubo)
//                return formatter.string(from: retval)
//
//            default:
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.hectares)
//                let retval = acre.converted(to: UnitArea.cent)
//                return formatter.string(from: retval)
//
//            }
//        }
//
//        else if inputUnit1 == "Square Centimeter, cm²" {
//            switch inputUnit2 {
//            case "Are, a":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.squareCentimeters)
//                let retval = acre.converted(to: UnitArea.ares)
//                return formatter.string(from: retval)
//
//            case "Hectare, ha":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.squareCentimeters)
//                let retval = acre.converted(to: UnitArea.hectares)
//                return formatter.string(from: retval)
//
//            case "Acre, ac":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.squareCentimeters)
//                let retval = acre.converted(to: UnitArea.acres)
//                return formatter.string(from: retval)
//
//            case "Square Foot, ft²":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.squareCentimeters)
//                let retval = acre.converted(to: UnitArea.squareFeet)
//                return formatter.string(from: retval)
//
//            case "Square Inch, in²":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.squareCentimeters)
//                let retval = acre.converted(to: UnitArea.squareInches)
//                return formatter.string(from: retval)
//
//            case "Square Kilometer, km²":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.squareCentimeters)
//                let retval = acre.converted(to: UnitArea.squareKilometers)
//                return formatter.string(from: retval)
//
//            case "Square Meter, m²":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.squareCentimeters)
//                let retval = acre.converted(to: UnitArea.squareMeters)
//                return formatter.string(from: retval)
//
//            case "Square Mile, mi²":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.squareCentimeters)
//                let retval = acre.converted(to: UnitArea.squareMiles)
//                return formatter.string(from: retval)
//
//            case "Square Yard, yd²":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.squareCentimeters)
//                let retval = acre.converted(to: UnitArea.squareYards)
//                return formatter.string(from: retval)
//
//            case "Tsubo, tsubo":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.squareCentimeters)
//                let retval = acre.converted(to: UnitArea.tsubo)
//                return formatter.string(from: retval)
//
//            default:
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.squareCentimeters)
//                let retval = acre.converted(to: UnitArea.cent)
//                return formatter.string(from: retval)
//
//            }
//        }
//
//        else if inputUnit1 == "Square Foot, ft²" {
//            switch inputUnit2 {
//            case "Are, a":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.squareFeet)
//                let retval = acre.converted(to: UnitArea.ares)
//                return formatter.string(from: retval)
//
//            case "Hectare, ha":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.squareFeet)
//                let retval = acre.converted(to: UnitArea.hectares)
//                return formatter.string(from: retval)
//
//            case "Square Centimeter, cm²":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.squareFeet)
//                let retval = acre.converted(to: UnitArea.squareCentimeters)
//                return formatter.string(from: retval)
//
//            case "Acre, ac":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.squareFeet)
//                let retval = acre.converted(to: UnitArea.acres)
//                return formatter.string(from: retval)
//
//            case "Square Inch, in²":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.squareFeet)
//                let retval = acre.converted(to: UnitArea.squareInches)
//                return formatter.string(from: retval)
//
//            case "Square Kilometer, km²":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.squareFeet)
//                let retval = acre.converted(to: UnitArea.squareKilometers)
//                return formatter.string(from: retval)
//
//            case "Square Meter, m²":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.squareFeet)
//                let retval = acre.converted(to: UnitArea.squareMeters)
//                return formatter.string(from: retval)
//
//            case "Square Mile, mi²":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.squareFeet)
//                let retval = acre.converted(to: UnitArea.squareMiles)
//                return formatter.string(from: retval)
//
//            case "Square Yard, yd²":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.squareFeet)
//                let retval = acre.converted(to: UnitArea.squareYards)
//                return formatter.string(from: retval)
//
//            case "Tsubo, tsubo":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.squareFeet)
//                let retval = acre.converted(to: UnitArea.tsubo)
//                return formatter.string(from: retval)
//
//            default:
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.squareFeet)
//                let retval = acre.converted(to: UnitArea.cent)
//                return formatter.string(from: retval)
//
//            }
//        }
//
//        else if inputUnit1 == "Square Inch, in²" {
//            switch inputUnit2 {
//            case "Are, a":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.squareInches)
//                let retval = acre.converted(to: UnitArea.ares)
//                return formatter.string(from: retval)
//
//            case "Hectare, ha":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.squareInches)
//                let retval = acre.converted(to: UnitArea.hectares)
//                return formatter.string(from: retval)
//
//            case "Square Centimeter, cm²":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.squareInches)
//                let retval = acre.converted(to: UnitArea.squareCentimeters)
//                return formatter.string(from: retval)
//
//            case "Square Foot, ft²":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.squareInches)
//                let retval = acre.converted(to: UnitArea.squareFeet)
//                return formatter.string(from: retval)
//
//            case "Acre, ac":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.squareInches)
//                let retval = acre.converted(to: UnitArea.acres)
//                return formatter.string(from: retval)
//
//            case "Square Kilometer, km²":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.squareInches)
//                let retval = acre.converted(to: UnitArea.squareKilometers)
//                return formatter.string(from: retval)
//
//            case "Square Meter, m²":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.squareInches)
//                let retval = acre.converted(to: UnitArea.squareMeters)
//                return formatter.string(from: retval)
//
//            case "Square Mile, mi²":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.squareInches)
//                let retval = acre.converted(to: UnitArea.squareMiles)
//                return formatter.string(from: retval)
//
//            case "Square Yard, yd²":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.squareInches)
//                let retval = acre.converted(to: UnitArea.squareYards)
//                return formatter.string(from: retval)
//
//            case "Tsubo, tsubo":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.squareInches)
//                let retval = acre.converted(to: UnitArea.tsubo)
//                return formatter.string(from: retval)
//
//            default:
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.squareInches)
//                let retval = acre.converted(to: UnitArea.cent)
//                return formatter.string(from: retval)
//
//            }
//        }
//
//        else if inputUnit1 == "Square Kilometer, km²" {
//            switch inputUnit2 {
//            case "Are, a":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.squareKilometers)
//                let retval = acre.converted(to: UnitArea.ares)
//                return formatter.string(from: retval)
//
//            case "Hectare, ha":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.squareKilometers)
//                let retval = acre.converted(to: UnitArea.hectares)
//                return formatter.string(from: retval)
//
//            case "Square Centimeter, cm²":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.squareKilometers)
//                let retval = acre.converted(to: UnitArea.squareCentimeters)
//                return formatter.string(from: retval)
//
//            case "Square Foot, ft²":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.squareKilometers)
//                let retval = acre.converted(to: UnitArea.squareFeet)
//                return formatter.string(from: retval)
//
//            case "Square Inch, in²":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.squareKilometers)
//                let retval = acre.converted(to: UnitArea.squareInches)
//                return formatter.string(from: retval)
//
//            case "Acre, ac":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.squareKilometers)
//                let retval = acre.converted(to: UnitArea.acres)
//                return formatter.string(from: retval)
//
//            case "Square Meter, m²":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.squareKilometers)
//                let retval = acre.converted(to: UnitArea.squareMeters)
//                return formatter.string(from: retval)
//
//            case "Square Mile, mi²":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.squareKilometers)
//                let retval = acre.converted(to: UnitArea.squareMiles)
//                return formatter.string(from: retval)
//
//            case "Square Yard, yd²":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.squareKilometers)
//                let retval = acre.converted(to: UnitArea.squareYards)
//                return formatter.string(from: retval)
//
//            case "Tsubo, tsubo":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.squareKilometers)
//                let retval = acre.converted(to: UnitArea.tsubo)
//                return formatter.string(from: retval)
//
//            default:
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.squareKilometers)
//                let retval = acre.converted(to: UnitArea.cent)
//                return formatter.string(from: retval)
//
//            }
//        }
//
//        else if inputUnit1 == "Square Meter, m²" {
//            switch inputUnit2 {
//            case "Are, a":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.squareMeters)
//                let retval = acre.converted(to: UnitArea.ares)
//                return formatter.string(from: retval)
//
//            case "Hectare, ha":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.squareMeters)
//                let retval = acre.converted(to: UnitArea.hectares)
//                return formatter.string(from: retval)
//
//            case "Square Centimeter, cm²":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.squareMeters)
//                let retval = acre.converted(to: UnitArea.squareCentimeters)
//                return formatter.string(from: retval)
//
//            case "Square Foot, ft²":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.squareMeters)
//                let retval = acre.converted(to: UnitArea.squareFeet)
//                return formatter.string(from: retval)
//
//            case "Square Inch, in²":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.squareMeters)
//                let retval = acre.converted(to: UnitArea.squareInches)
//                return formatter.string(from: retval)
//
//            case "Square Kilometer, km²":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.squareMeters)
//                let retval = acre.converted(to: UnitArea.squareKilometers)
//                return formatter.string(from: retval)
//
//            case "Acre, ac":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.squareMeters)
//                let retval = acre.converted(to: UnitArea.acres)
//                return formatter.string(from: retval)
//
//            case "Square Mile, mi²":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.squareMeters)
//                let retval = acre.converted(to: UnitArea.squareMiles)
//                return formatter.string(from: retval)
//
//            case "Square Yard, yd²":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.squareMeters)
//                let retval = acre.converted(to: UnitArea.squareYards)
//                return formatter.string(from: retval)
//
//            case "Tsubo, tsubo":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.squareMeters)
//                let retval = acre.converted(to: UnitArea.tsubo)
//                return formatter.string(from: retval)
//
//            default:
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.squareMeters)
//                let retval = acre.converted(to: UnitArea.cent)
//                return formatter.string(from: retval)
//
//            }
//        }
//
//        else if inputUnit1 == "Square Mile, mi²" {
//            switch inputUnit2 {
//            case "Are, a":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.squareMiles)
//                let retval = acre.converted(to: UnitArea.ares)
//                return formatter.string(from: retval)
//
//            case "Hectare, ha":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.squareMiles)
//                let retval = acre.converted(to: UnitArea.hectares)
//                return formatter.string(from: retval)
//
//            case "Square Centimeter, cm²":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.squareMiles)
//                let retval = acre.converted(to: UnitArea.squareCentimeters)
//                return formatter.string(from: retval)
//
//            case "Square Foot, ft²":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.squareMiles)
//                let retval = acre.converted(to: UnitArea.squareFeet)
//                return formatter.string(from: retval)
//
//            case "Square Inch, in²":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.squareMiles)
//                let retval = acre.converted(to: UnitArea.squareInches)
//                return formatter.string(from: retval)
//
//            case "Square Kilometer, km²":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.squareMiles)
//                let retval = acre.converted(to: UnitArea.squareKilometers)
//                return formatter.string(from: retval)
//
//            case "Square Meter, m²":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.squareMiles)
//                let retval = acre.converted(to: UnitArea.squareMeters)
//                return formatter.string(from: retval)
//
//            case "Acre, ac":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.squareMiles)
//                let retval = acre.converted(to: UnitArea.acres)
//                return formatter.string(from: retval)
//
//            case "Square Yard, yd²":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.squareMiles)
//                let retval = acre.converted(to: UnitArea.squareYards)
//                return formatter.string(from: retval)
//
//            case "Tsubo, tsubo":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.squareMiles)
//                let retval = acre.converted(to: UnitArea.tsubo)
//                return formatter.string(from: retval)
//
//            default:
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.squareMiles)
//                let retval = acre.converted(to: UnitArea.cent)
//                return formatter.string(from: retval)
//
//            }
//        }
//
//        else if inputUnit1 == "Square Yard, yd²" {
//            switch inputUnit2 {
//            case "Are, a":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.squareYards)
//                let retval = acre.converted(to: UnitArea.ares)
//                return formatter.string(from: retval)
//
//            case "Hectare, ha":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.squareYards)
//                let retval = acre.converted(to: UnitArea.hectares)
//                return formatter.string(from: retval)
//
//            case "Square Centimeter, cm²":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.squareYards)
//                let retval = acre.converted(to: UnitArea.squareCentimeters)
//                return formatter.string(from: retval)
//
//            case "Square Foot, ft²":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.squareYards)
//                let retval = acre.converted(to: UnitArea.squareFeet)
//                return formatter.string(from: retval)
//
//            case "Square Inch, in²":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.squareYards)
//                let retval = acre.converted(to: UnitArea.squareInches)
//                return formatter.string(from: retval)
//
//            case "Square Kilometer, km²":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.squareYards)
//                let retval = acre.converted(to: UnitArea.squareKilometers)
//                return formatter.string(from: retval)
//
//            case "Square Meter, m²":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.squareYards)
//                let retval = acre.converted(to: UnitArea.squareMeters)
//                return formatter.string(from: retval)
//
//            case "Square Mile, mi²":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.squareYards)
//                let retval = acre.converted(to: UnitArea.squareMiles)
//                return formatter.string(from: retval)
//
//            case "Acre, ac":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.squareYards)
//                let retval = acre.converted(to: UnitArea.acres)
//                return formatter.string(from: retval)
//
//            case "Tsubo, tsubo":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.squareYards)
//                let retval = acre.converted(to: UnitArea.tsubo)
//                return formatter.string(from: retval)
//
//            default:
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.squareYards)
//                let retval = acre.converted(to: UnitArea.cent)
//                return formatter.string(from: retval)
//
//            }
//        }
//
//        else if inputUnit1 == "Tsubo, tsubo" {
//            switch inputUnit2 {
//            case "Are, a":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.tsubo)
//                let retval = acre.converted(to: UnitArea.ares)
//                return formatter.string(from: retval)
//
//            case "Hectare, ha":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.tsubo)
//                let retval = acre.converted(to: UnitArea.hectares)
//                return formatter.string(from: retval)
//
//            case "Square Centimeter, cm²":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.tsubo)
//                let retval = acre.converted(to: UnitArea.squareCentimeters)
//                return formatter.string(from: retval)
//
//            case "Square Foot, ft²":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.tsubo)
//                let retval = acre.converted(to: UnitArea.squareFeet)
//                return formatter.string(from: retval)
//
//            case "Square Inch, in²":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.tsubo)
//                let retval = acre.converted(to: UnitArea.squareInches)
//                return formatter.string(from: retval)
//
//            case "Square Kilometer, km²":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.tsubo)
//                let retval = acre.converted(to: UnitArea.squareKilometers)
//                return formatter.string(from: retval)
//
//            case "Square Meter, m²":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.tsubo)
//                let retval = acre.converted(to: UnitArea.squareMeters)
//                return formatter.string(from: retval)
//
//            case "Square Mile, mi²":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.tsubo)
//                let retval = acre.converted(to: UnitArea.squareMiles)
//                return formatter.string(from: retval)
//
//            case "Square Yard, yd²":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.tsubo)
//                let retval = acre.converted(to: UnitArea.squareYards)
//                return formatter.string(from: retval)
//
//            case "Acre, ac":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.tsubo)
//                let retval = acre.converted(to: UnitArea.acres)
//                return formatter.string(from: retval)
//
//            default:
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.tsubo)
//                let retval = acre.converted(to: UnitArea.cent)
//                return formatter.string(from: retval)
//
//            }
//        }
//
//        else if inputUnit1 == "Cents, cent" {
//            switch inputUnit2 {
//            case "Are, a":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.cent)
//                let retval = acre.converted(to: UnitArea.ares)
//                return formatter.string(from: retval)
//
//            case "Hectare, ha":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.cent)
//                let retval = acre.converted(to: UnitArea.hectares)
//                return formatter.string(from: retval)
//
//            case "Square Centimeter, cm²":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.cent)
//                let retval = acre.converted(to: UnitArea.squareCentimeters)
//                return formatter.string(from: retval)
//
//            case "Square Foot, ft²":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.cent)
//                let retval = acre.converted(to: UnitArea.squareFeet)
//                return formatter.string(from: retval)
//
//            case "Square Inch, in²":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.cent)
//                let retval = acre.converted(to: UnitArea.squareInches)
//                return formatter.string(from: retval)
//
//            case "Square Kilometer, km²":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.cent)
//                let retval = acre.converted(to: UnitArea.squareKilometers)
//                return formatter.string(from: retval)
//
//            case "Square Meter, m²":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.cent)
//                let retval = acre.converted(to: UnitArea.squareMeters)
//                return formatter.string(from: retval)
//
//            case "Square Mile, mi²":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.cent)
//                let retval = acre.converted(to: UnitArea.squareMiles)
//                return formatter.string(from: retval)
//
//            case "Square Yard, yd²":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.cent)
//                let retval = acre.converted(to: UnitArea.squareYards)
//                return formatter.string(from: retval)
//
//            case "Tsubo, tsubo":
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.cent)
//                let retval = acre.converted(to: UnitArea.tsubo)
//                return formatter.string(from: retval)
//
//            default:
//                let acre = Measurement(value: inputval ?? 0.0 , unit: UnitArea.cent)
//                let retval = acre.converted(to: UnitArea.acres)
//                return formatter.string(from: retval)
//
//            }
//        }
//
//        return String(0.0)
//
//    }
//
    
    
    private func calc(_ unit1val: String, _ unit1: String, _ unit2: String) -> String{
        let formatter = MeasurementFormatter()
        let stringval: String = unit1  +  unit2
        let storedval = (areadict[stringval, default: "1"])
        let operand1 = (unit1val as NSString).doubleValue
        let operand2 = (storedval as NSString).doubleValue
        return String(operand1 * operand2)
        
    }
    
}

struct Area_Previews: PreviewProvider {
    static var previews: some View {
        Area()
        .environmentObject(ViewRouter())
        .environmentObject(GlobalEnvironment())
    }
}

extension UnitArea {
    static let tsubo = UnitArea(symbol: "tsubo", converter: UnitConverterLinear(coefficient: 3.306))
    static let cent = UnitArea(symbol: "cent", converter: UnitConverterLinear(coefficient: 40.469))
}
