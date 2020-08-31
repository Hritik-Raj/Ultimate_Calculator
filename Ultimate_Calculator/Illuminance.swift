//
//  Illuminance.swift
//  Ultimate_Calculator
//
//  Created by Hritik Raj on 8/14/20.
//  Copyright © 2020 Hritik Raj. All rights reserved.
//

import SwiftUI

struct Illuminance: View {
        @State var ShowUnit1 = false
        @State var ShowUnit2 = false
        @State var DisplayUnit1 = "Angle"
        @State var DisplayUnit2 = "Angle"
        @EnvironmentObject var viewRouter: ViewRouter
        @EnvironmentObject var env: GlobalEnvironment
    
    var illudict : [String : String] = ["Kilolux, klxLumen/Centimeter², lm/cm²": "0.1 lm/cm²", "Lumen/Meter², lm/m²Lumen/Centimeter², lm/cm²": "0 lm/cm²", "Phot, phLux, lx": "10,000 lx", "Lumen/Inch², lm/in²Lumen/Foot², lm/ft²": "143.999 lm/ft²", "Kilolux, klxLux, lx": "1,000 lx", "Lumen/Centimeter², lm/cm²Lumen/Foot², lm/ft²": "929.023 lm/ft²", "Nox, nxLumen/Inch², lm/in²": "0 lm/in²", "Lumen/Inch², lm/in²Lux, lx": "1,550.003 lx", "Lux, lxNox, nx": "1,000 nx", "Lumen/Centimeter², lm/cm²Lux, lx": "10,000 lx", "Kilolux, klxPhot, ph": "0.1 ph", "Lumen/Foot², lm/ft²Lux, lx": "10.764 lx", "Nox, nxLux, lx": "0.001 lx", "Nox, nxNox, nx": "1 nx", "Lumen/Inch², lm/in²Lumen/Meter², lm/m²": "1,550.003 lm/m²", "Footcandle, fcLumen/Centimeter², lm/cm²": "0 lm/cm²", "Lumen/Inch², lm/in²Phot, ph": "0.155 ph", "Phot, phFootcandle, fc": "10,000 L/100 km", "Lumen/Centimeter², lm/cm²Phot, ph": "1 ph", "Phot, phLumen/Centimeter², lm/cm²": "1 lm/cm²", "Kilolux, klxFootcandle, fc": "1,000 L/100 km", "Lumen/Inch², lm/in²Nox, nx": "1,550,003 nx", "Kilolux, klxLumen/Foot², lm/ft²": "92.902 lm/ft²", "Lux, lxLumen/Centimeter², lm/cm²": "0 lm/cm²", "Footcandle, fcLumen/Inch², lm/in²": "0.001 lm/in²", "Lumen/Inch², lm/in²Lumen/Centimeter², lm/cm²": "0.155 lm/cm²", "Kilolux, klxNox, nx": "1,000,000 nx", "Lumen/Centimeter², lm/cm²Footcandle, fc": "10,000 L/100 km", "Lumen/Meter², lm/m²Footcandle, fc": "1 L/100 km", "Lumen/Meter², lm/m²Phot, ph": "0 ph", "Nox, nxLumen/Centimeter², lm/cm²": "0 lm/cm²", "Lumen/Meter², lm/m²Lumen/Inch², lm/in²": "0.001 lm/in²", "Footcandle, fcKilolux, klx": "0.001 klx", "Footcandle, fcLumen/Foot², lm/ft²": "0.093 lm/ft²", "Lumen/Centimeter², lm/cm²Nox, nx": "10,000,000 nx", "Nox, nxLumen/Meter², lm/m²": "0.001 lm/m²", "Lux, lxLumen/Foot², lm/ft²": "0.093 lm/ft²", "Phot, phLumen/Foot², lm/ft²": "929.023 lm/ft²", "Phot, phLumen/Inch², lm/in²": "6.452 lm/in²", "Lumen/Meter², lm/m²Kilolux, klx": "0.001 klx", "Lumen/Centimeter², lm/cm²Lumen/Inch², lm/in²": "6.452 lm/in²", "Footcandle, fcFootcandle, fc": "1 L/100 km", "Lumen/Foot², lm/ft²Kilolux, klx": "0.011 klx", "Lux, lxFootcandle, fc": "1 L/100 km", "Lux, lxPhot, ph": "0 ph", "Lumen/Meter², lm/m²Lumen/Foot², lm/ft²": "0.093 lm/ft²", "Lumen/Foot², lm/ft²Footcandle, fc": "10.764 L/100 km", "Lumen/Inch², lm/in²Lumen/Inch², lm/in²": "1 lm/in²", "Nox, nxPhot, ph": "0 ph", "Phot, phLumen/Meter², lm/m²": "10,000 lm/m²", "Kilolux, klxLumen/Inch², lm/in²": "0.645 lm/in²", "Lumen/Centimeter², lm/cm²Lumen/Meter², lm/m²": "10,000 lm/m²", "Lumen/Centimeter², lm/cm²Kilolux, klx": "10 klx", "Footcandle, fcLumen/Meter², lm/m²": "1 lm/m²", "Footcandle, fcPhot, ph": "0 ph", "Lumen/Centimeter², lm/cm²Lumen/Centimeter², lm/cm²": "1 lm/cm²", "Lux, lxLumen/Inch², lm/in²": "0.001 lm/in²", "Lumen/Foot², lm/ft²Lumen/Centimeter², lm/cm²": "0.001 lm/cm²", "Nox, nxLumen/Foot², lm/ft²": "0 lm/ft²", "Lumen/Inch², lm/in²Kilolux, klx": "1.55 klx", "Nox, nxFootcandle, fc": "0.001 L/100 km", "Lux, lxLux, lx": "1 lx", "Phot, phPhot, ph": "1 ph", "Lumen/Inch², lm/in²Footcandle, fc": "1,550.003 L/100 km", "Lumen/Foot², lm/ft²Lumen/Meter², lm/m²": "10.764 lm/m²", "Lumen/Foot², lm/ft²Phot, ph": "0.001 ph", "Footcandle, fcLux, lx": "1 lx", "Lumen/Foot², lm/ft²Lumen/Inch², lm/in²": "0.007 lm/in²", "Kilolux, klxLumen/Meter², lm/m²": "1,000 lm/m²", "Footcandle, fcNox, nx": "1,000 nx", "Lux, lxKilolux, klx": "0.001 klx", "Lux, lxLumen/Meter², lm/m²": "1 lm/m²", "Nox, nxKilolux, klx": "0 klx", "Kilolux, klxKilolux, klx": "1 klx", "Phot, phNox, nx": "10,000,000 nx", "Phot, phKilolux, klx": "10 klx", "Lumen/Meter², lm/m²Nox, nx": "1,000 nx", "Lumen/Foot², lm/ft²Lumen/Foot², lm/ft²": "1 lm/ft²", "Lumen/Meter², lm/m²Lux, lx": "1 lx", "Lumen/Foot², lm/ft²Nox, nx": "10,764 nx", "Lumen/Meter², lm/m²Lumen/Meter², lm/m²": "1 lm/m²"]

    
    var jointdict : [String : UnitIlluminance] = [:]
    
//    let keys1 =
//    ["Footcandle, fc", "Kilolux, klx", "Lumen/Centimeter², lm/cm²", "Lumen/Foot², lm/ft²", "Lumen/Inch², lm/in²", "Lumen/Meter², lm/m²", "Lux, lx", "Nox, nx", "Phot, ph"]
//
//    let keys2 =
//    ["Footcandle, fc", "Kilolux, klx", "Lumen/Centimeter², lm/cm²", "Lumen/Foot², lm/ft²", "Lumen/Inch², lm/in²", "Lumen/Meter², lm/m²", "Lux, lx", "Nox, nx", "Phot, ph"]
//
//
//
//                            init () {
//
//                                for i in 1..<illuarray.count {
//                                    jointdict[illuarray[i]] = array2[i]
//                                }
//
//
//                                let formatter = MeasurementFormatter()
//                                formatter.unitOptions = .providedUnit
//                                for itema in keys1 {
//                                    for itemb in keys2 {
//                                        let itemc = itema + itemb
//                                        let val1 = Measurement(value: 1.0 , unit: jointdict[itema] ?? UnitFuelEfficiency.litersPer100Kilometers)
//                                        let val2 = val1.converted(to: jointdict[itemb] ?? UnitFuelEfficiency.litersPer100Kilometers)
//                                        let storeval =  formatter.string(from: val2)
//                                        illudict[itemc] = storeval
//                                    }
//                                }
//
//                                print ("Final Dict :", illudict)
//                            }
            
        
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
                                    Text(self.DisplayUnit1 + "  "  + env.displayconvertillu)
                                    }
                                .sheet(isPresented: $ShowUnit1) {
                                    ModalIlluminance(isPresented: self.$ShowUnit1, isPresented1: self.$ShowUnit1, isPresented2: self.$ShowUnit2, currentUnit1: self.$DisplayUnit1, currentUnit2: self.$DisplayUnit2)
                                }
                                    .font(.system(size: 40))
                                    .frame(width: (UIScreen.main.bounds.width - 2 * 12), height: UIScreen.main.bounds.height / 10)
                                    .foregroundColor(.white)
                                    .background(Color.gray)
                                    .cornerRadius(UIScreen.main.bounds.width - 2 * 12)
                        
                                Button(action: {
                                    self.ShowUnit2.toggle()
                                }) {
                                                                       Text(self.DisplayUnit2 + "  " + calc(env.displayconvertillu, self.DisplayUnit1, self.DisplayUnit2))
//                                    Text(self.DisplayUnit2 + "  ")
                                    }
                                    .sheet(isPresented: $ShowUnit2) {
                                        ModalIlluminance(isPresented: self.$ShowUnit1, isPresented1: self.$ShowUnit1, isPresented2: self.$ShowUnit2, currentUnit1: self.$DisplayUnit1, currentUnit2: self.$DisplayUnit2)
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
    
    let illuarray =
    ["Footcandle, fc", "Kilolux, klx", "Lumen/Centimeter², lm/cm²", "Lumen/Foot², lm/ft²", "Lumen/Inch², lm/in²", "Lumen/Meter², lm/m²", "Lux, lx", "Nox, nx", "Phot, ph"]
    
    let array2 = [UnitIlluminance.footcandle, UnitIlluminance.kilolux, UnitIlluminance.lumenpercm2, UnitIlluminance.lumenperft2, UnitIlluminance.lumenperin2, UnitIlluminance.lumenpermeter2, UnitIlluminance.lux, UnitIlluminance.nox, UnitIlluminance.phot]
    
    private func calc(_ unit1val: String, _ unit1: String, _ unit2: String) -> String{
        let formatter = MeasurementFormatter()
        let stringval: String = unit1  +  unit2
        let storedval = (illudict[stringval, default: "1"])
        let operand1 = (unit1val as NSString).doubleValue
        let operand2 = (storedval as NSString).doubleValue
        return String(operand1 * operand2)
        
    }
}

struct Illuminance_Previews: PreviewProvider {
    static var previews: some View {
        Illuminance()
        .environmentObject(ViewRouter())
        .environmentObject(GlobalEnvironment())
    }
}

extension UnitIlluminance {
    
//    ["Footcandle, fc", "Kilolux, klx", "Lumen/Centimeter², lm/cm²", "Lumen/Foot², lm/ft²", "Lumen/Inch², lm/in²", "Lumen/Meter², lm/m²", "Lux, lx", "Nox, nx", "Phot, ph"]
    static let footcandle = UnitIlluminance(symbol: "fc", converter: UnitConverterLinear(coefficient: 10.764))
    static let kilolux = UnitIlluminance(symbol: "klx", converter: UnitConverterLinear(coefficient: 1000))
    static let lumenpercm2 = UnitIlluminance(symbol: "lm/cm²", converter: UnitConverterLinear(coefficient: 10000))
    static let lumenperft2 = UnitIlluminance(symbol: "lm/ft²", converter: UnitConverterLinear(coefficient: 10.764))
    static let lumenperin2 = UnitIlluminance(symbol: "lm/in²", converter: UnitConverterLinear(coefficient: 1550.003))
    static let lumenpermeter2 = UnitIlluminance(symbol: "lm/m²", converter: UnitConverterLinear(coefficient: 1))
    static let nox = UnitIlluminance(symbol: "nx", converter: UnitConverterLinear(coefficient: 0.001))
    static let phot = UnitIlluminance(symbol: "ph", converter: UnitConverterLinear(coefficient: 10000))
}
