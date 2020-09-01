//
//  Temperature.swift
//  Ultimate_Calculator
//
//  Created by Hritik Raj on 8/14/20.
//  Copyright © 2020 Hritik Raj. All rights reserved.
//

import SwiftUI

struct Temperature: View {
        @State var ShowUnit1 = false
        @State var ShowUnit2 = false
        @State var DisplayUnit1 = "Angle"
        @State var DisplayUnit2 = "Angle"
        @EnvironmentObject var viewRouter: ViewRouter
        @EnvironmentObject var env: GlobalEnvironment
    
    var tempdict : [String : String] = ["Fahrenheit, °FCelsius, °C": "-17.778 °C", "Kelvin, KCelsius, °C": "-272.15 °C", "Fahrenheit, °FFahrenheit, °F": "1°F", "Kelvin, KFahrenheit, °F": "-457.87°F", "Celsius, °CFahrenheit, °F": "32", "Celsius, °CCelsius, °C": "1 °C", "Fahrenheit, °FKelvin, K": "255.928 K", "Celsius, °CKelvin, K": "274.15 K", "Kelvin, KKelvin, K": "1 K"]

    
//                var jointdict : [String : UnitTemperature] = [:]
//
//                let keys1 = ["Celsius, °C", "Fahrenheit, °F", "Kelvin, K"]
//
//                    let keys2 = ["Celsius, °C", "Fahrenheit, °F", "Kelvin, K"]
//
//
//
//                                                   init () {
//
//                                                        for i in 1..<temperaturearray.count {
//                                                            jointdict[temperaturearray[i]] = array2[i]
//                                                        }
//
//
//                                                        let formatter = MeasurementFormatter()
//                                                        formatter.unitOptions = .providedUnit
//                                                        for itema in keys1 {
//                                                            for itemb in keys2 {
//                                                                let itemc = itema + itemb
//                                                                let val1 = Measurement(value: 1.0 , unit: jointdict[itema] ?? UnitTemperature.kelvin)
//                                                                let val2 = val1.converted(to: jointdict[itemb] ?? UnitTemperature.kelvin)
//                                                                let storeval =  formatter.string(from: val2)
//                                                                tempdict[itemc] = storeval
//                                                            }
//                                                        }
//
//                                                        print ("Final Dict ", tempdict)
//
//    }
        
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
                                    Text(self.DisplayUnit1 + "  "  + env.displayconverttemp)
                                    }
                                .sheet(isPresented: $ShowUnit1) {
                                    ModalTemperature(isPresented: self.$ShowUnit1, isPresented1: self.$ShowUnit1, isPresented2: self.$ShowUnit2, currentUnit1: self.$DisplayUnit1, currentUnit2: self.$DisplayUnit2)
                                }
                                    .font(.system(size: 40))
                                    .frame(width: (UIScreen.main.bounds.width - 2 * 12), height: UIScreen.main.bounds.height / 10)
                                    .foregroundColor(.white)
                                    .background(Color.gray)
                                    .cornerRadius(UIScreen.main.bounds.width - 2 * 12)
                        
                                Button(action: {
                                    self.ShowUnit2.toggle()
                                }) {
                                                                       Text(self.DisplayUnit2 + "  " + calc(env.displayconverttemp, self.DisplayUnit1, self.DisplayUnit2))
//                                    Text(self.DisplayUnit2 + "  ")
                                    }
                                    .sheet(isPresented: $ShowUnit2) {
                                        ModalTemperature(isPresented: self.$ShowUnit1, isPresented1: self.$ShowUnit1, isPresented2: self.$ShowUnit2, currentUnit1: self.$DisplayUnit1, currentUnit2: self.$DisplayUnit2)
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
                                                    
    
    
    let temperaturearray =
    ["Celsius, °C", "Fahrenheit, °F", "Kelvin, K"]

    let array2 = [UnitTemperature.celsius, UnitTemperature.fahrenheit, UnitTemperature.kelvin]
    
    private func calc(_ unit1val: String, _ unit1: String, _ unit2: String) -> String{
        var kelvin: Bool = false
          let formatter = MeasurementFormatter()
        if unit1 == "Kelvin, K" || unit2 == "Kelvin, K" {
            kelvin = true
        }
          let stringval: String = unit1  +  unit2
          let storedval = (tempdict[stringval, default: "1"])
          let operand1 = (unit1val as NSString).doubleValue
          let operand2 = (storedval as NSString).doubleValue
        if kelvin == true {
            return String(operand1 + operand2)
        }
          return String(operand1 * operand2)
          
      }
    

}

struct Temperature_Previews: PreviewProvider {
    static var previews: some View {
        Temperature()
        .environmentObject(ViewRouter())
        .environmentObject(GlobalEnvironment())
    }
}
