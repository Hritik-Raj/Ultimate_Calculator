//
//  Frequency.swift
//  Ultimate_Calculator
//
//  Created by Hritik Raj on 8/14/20.
//  Copyright © 2020 Hritik Raj. All rights reserved.
//

import SwiftUI

struct Frequency: View {
         @State var ShowUnit1 = false
        @State var ShowUnit2 = false
        @State var DisplayUnit1 = "Angle"
        @State var DisplayUnit2 = "Angle"
        @EnvironmentObject var viewRouter: ViewRouter
        @EnvironmentObject var env: GlobalEnvironment
        
    
    var freqdict : [String : String] = ["Hertz, HzMegahertz, MHz": "0 MHz", "Revolutions/Minute, rpmRadians/Minute, rad/min": "6.296 btu", "Radians/Hour, rad/hGigahertz, GHz": "0 GHz", "Kilohertz, kHzMegahertz, MHz": "0.001 MHz", "Radians/Minute, rad/minRadians/Hour, rad/h": "61.364 btu", "Revolutions/Minute, rpmKilohertz, kHz": "0 kHz", "Megahertz, MHzGigahertz, GHz": "0.001 GHz", "Revolutions/Second, rpsHertz, Hz": "1 Hz", "Radians/Minute, rad/minRadians/Second, rad/s": "0.017 btu", "Revolutions/Hour, rphRevolutions/Hour, rph": "1 btu", "Revolutions/Minute, rpmMegahertz, MHz": "0 MHz", "Degrees/Hour, deg/hRadians/Hour, rad/h": "0.018 btu", "Radians/Hour, rad/hHertz, Hz": "0 Hz", "Radians/Second, rad/sGigahertz, GHz": "0 GHz", "Revolutions/Minute, rpmRevolutions/Hour, rph": "6.071 btu", "Revolutions/Second, rpsDegrees/Hour, deg/h": "1,298,701.299 btu", "Gigahertz, GHzRevolutions/Second, rps": "1,000,000,000 btu", "Radians/Second, rad/sDegrees/Minute, deg/min": "3,456.522 btu", "Revolutions/Second, rpsRadians/Minute, rad/min": "370.37 btu", "Hertz, HzDegrees/Second, deg/s": "357.143 btu", "Degrees/Second, deg/sMegahertz, MHz": "0 MHz", "Cycles/Second, cycles/sRadians/Second, rad/s": "6.289 btu", "Cycles/Second, cycles/sCycles/Second, cycles/s": "1 Hz", "Revolutions/Minute, rpmGigahertz, GHz": "0 GHz", "Gigahertz, GHzGigahertz, GHz": "1 GHz", "Revolutions/Second, rpsDegrees/Second, deg/s": "357.143 btu", "Revolutions/Hour, rphCycles/Second, cycles/s": "0.003 Hz", "Radians/Second, rad/sCycles/Second, cycles/s": "0.159 Hz", "Degrees/Minute, deg/minGigahertz, GHz": "0 GHz", "Gigahertz, GHzDegrees/Minute, deg/min": "21,739,130,434,782.61 btu", "Degrees/Second, deg/sRevolutions/Hour, rph": "1 btu", "Radians/Hour, rad/hKilohertz, kHz": "0 kHz", "Degrees/Minute, deg/minDegrees/Minute, deg/min": "1 btu", "Radians/Second, rad/sHertz, Hz": "0.159 Hz", "Hertz, HzRevolutions/Hour, rph": "357.143 btu", "Revolutions/Hour, rphDegrees/Minute, deg/min": "60.87 btu", "Cycles/Second, cycles/sKilohertz, kHz": "0.001 kHz", "Revolutions/Minute, rpmRevolutions/Minute, rpm": "1 btu", "Radians/Minute, rad/minDegrees/Minute, deg/min": "58.696 btu", "Revolutions/Hour, rphDegrees/Second, deg/s": "1 btu", "Radians/Second, rad/sMegahertz, MHz": "0 MHz", "Radians/Minute, rad/minRevolutions/Minute, rpm": "0.159 btu", "Hertz, HzRevolutions/Second, rps": "1 btu", "Cycles/Second, cycles/sMegahertz, MHz": "0 MHz", "Degrees/Hour, deg/hDegrees/Minute, deg/min": "0.017 btu", "Radians/Hour, rad/hCycles/Second, cycles/s": "0 Hz", "Degrees/Second, deg/sRevolutions/Second, rps": "0.003 btu", "Revolutions/Hour, rphMegahertz, MHz": "0 MHz", "Kilohertz, kHzDegrees/Minute, deg/min": "21,739,130.435 btu", "Radians/Minute, rad/minMegahertz, MHz": "0 MHz", "Degrees/Minute, deg/minRevolutions/Second, rps": "0 btu", "Gigahertz, GHzRadians/Second, rad/s": "6,289,308,176.101 btu", "Radians/Hour, rad/hRevolutions/Hour, rph": "0.016 btu", "Kilohertz, kHzRevolutions/Second, rps": "1,000 btu", "Degrees/Hour, deg/hGigahertz, GHz": "0 GHz", "Cycles/Second, cycles/sRadians/Minute, rad/min": "370.37 btu", "Kilohertz, kHzKilohertz, kHz": "1 kHz", "Kilohertz, kHzRevolutions/Minute, rpm": "58,823.529 btu", "Revolutions/Second, rpsDegrees/Minute, deg/min": "21,739.13 btu", "Revolutions/Minute, rpmCycles/Second, cycles/s": "0.017 Hz", "Revolutions/Hour, rphRadians/Hour, rad/h": "63.636 btu", "Gigahertz, GHzRadians/Hour, rad/h": "22,727,272,727,272.727 btu", "Degrees/Second, deg/sKilohertz, kHz": "0 kHz", "Kilohertz, kHzDegrees/Second, deg/s": "357,142.857 btu", "Kilohertz, kHzRevolutions/Hour, rph": "357,142.857 btu", "Kilohertz, kHzCycles/Second, cycles/s": "1,000 Hz", "Radians/Hour, rad/hDegrees/Minute, deg/min": "0.957 btu", "Revolutions/Hour, rphHertz, Hz": "0.003 Hz", "Revolutions/Hour, rphRevolutions/Second, rps": "0.003 btu", "Kilohertz, kHzRadians/Second, rad/s": "6,289.308 btu", "Degrees/Hour, deg/hDegrees/Second, deg/s": "0 btu", "Radians/Second, rad/sRadians/Hour, rad/h": "3,613.636 btu", "Degrees/Second, deg/sDegrees/Hour, deg/h": "3,636.364 btu", "Revolutions/Minute, rpmDegrees/Minute, deg/min": "369.565 btu", "Degrees/Hour, deg/hHertz, Hz": "0 Hz", "Cycles/Second, cycles/sRadians/Hour, rad/h": "22,727.273 btu", "Revolutions/Hour, rphRadians/Second, rad/s": "0.018 btu", "Radians/Hour, rad/hRadians/Hour, rad/h": "1 btu", "Degrees/Minute, deg/minKilohertz, kHz": "0 kHz", "Degrees/Minute, deg/minRadians/Minute, rad/min": "0.017 btu", "Degrees/Second, deg/sDegrees/Second, deg/s": "1 btu", "Degrees/Minute, deg/minRevolutions/Minute, rpm": "0.003 btu", "Revolutions/Second, rpsCycles/Second, cycles/s": "1 Hz", "Megahertz, MHzRadians/Hour, rad/h": "22,727,272,727.273 btu", "Revolutions/Second, rpsRevolutions/Minute, rpm": "58.824 btu", "Hertz, HzRadians/Minute, rad/min": "370.37 btu", "Radians/Second, rad/sRevolutions/Second, rps": "0.159 btu", "Revolutions/Minute, rpmDegrees/Second, deg/s": "6.071 btu", "Megahertz, MHzCycles/Second, cycles/s": "1,000,000 Hz", "Radians/Hour, rad/hDegrees/Hour, deg/h": "57.143 btu", "Radians/Second, rad/sKilohertz, kHz": "0 kHz", "Megahertz, MHzDegrees/Hour, deg/h": "1,298,701,298,701.299 btu", "Radians/Hour, rad/hMegahertz, MHz": "0 MHz", "Radians/Minute, rad/minKilohertz, kHz": "0 kHz", "Degrees/Minute, deg/minRadians/Hour, rad/h": "1.045 btu", "Radians/Minute, rad/minGigahertz, GHz": "0 GHz", "Radians/Minute, rad/minRadians/Minute, rad/min": "1 btu", "Degrees/Minute, deg/minMegahertz, MHz": "0 MHz", "Gigahertz, GHzCycles/Second, cycles/s": "1,000,000,000 Hz", "Radians/Second, rad/sRevolutions/Minute, rpm": "9.353 btu", "Revolutions/Hour, rphDegrees/Hour, deg/h": "3,636.364 btu", "Radians/Second, rad/sDegrees/Second, deg/s": "56.786 btu", "Degrees/Hour, deg/hMegahertz, MHz": "0 MHz", "Megahertz, MHzMegahertz, MHz": "1 MHz", "Megahertz, MHzDegrees/Minute, deg/min": "21,739,130,434.783 btu", "Radians/Minute, rad/minCycles/Second, cycles/s": "0.003 Hz", "Cycles/Second, cycles/sRevolutions/Hour, rph": "357.143 btu", "Gigahertz, GHzDegrees/Hour, deg/h": "1,298,701,298,701,298.8 btu", "Hertz, HzRadians/Second, rad/s": "6.289 btu", "Revolutions/Minute, rpmRadians/Second, rad/s": "0.107 btu", "Revolutions/Minute, rpmDegrees/Hour, deg/h": "22,077.922 btu", "Degrees/Minute, deg/minRevolutions/Hour, rph": "0.016 btu", "Degrees/Second, deg/sRadians/Minute, rad/min": "1.037 btu", "Degrees/Hour, deg/hRadians/Second, rad/s": "0 btu", "Radians/Second, rad/sRadians/Second, rad/s": "1 btu", "Degrees/Hour, deg/hRevolutions/Minute, rpm": "0 btu", "Kilohertz, kHzRadians/Hour, rad/h": "22,727,272.727 btu", "Degrees/Minute, deg/minHertz, Hz": "0 Hz", "Megahertz, MHzDegrees/Second, deg/s": "357,142,857.143 btu", "Degrees/Hour, deg/hDegrees/Hour, deg/h": "1 btu", "Radians/Second, rad/sRadians/Minute, rad/min": "58.889 btu", "Megahertz, MHzRevolutions/Minute, rpm": "58,823,529.412 btu", "Revolutions/Second, rpsGigahertz, GHz": "0 GHz", "Degrees/Minute, deg/minDegrees/Second, deg/s": "0.016 btu", "Radians/Minute, rad/minDegrees/Hour, deg/h": "3,506.494 btu", "Cycles/Second, cycles/sRevolutions/Minute, rpm": "58.824 btu", "Revolutions/Second, rpsRadians/Hour, rad/h": "22,727.273 btu", "Gigahertz, GHzRadians/Minute, rad/min": "370,370,370,370.37 btu", "Gigahertz, GHzMegahertz, MHz": "1,000 MHz", "Revolutions/Minute, rpmRadians/Hour, rad/h": "386.364 btu", "Gigahertz, GHzRevolutions/Minute, rpm": "58,823,529,411.765 btu", "Gigahertz, GHzRevolutions/Hour, rph": "357,142,857,142.857 btu", "Revolutions/Second, rpsKilohertz, kHz": "0.001 kHz", "Degrees/Minute, deg/minRadians/Second, rad/s": "0 btu", "Radians/Minute, rad/minDegrees/Second, deg/s": "0.964 btu", "Hertz, HzDegrees/Minute, deg/min": "21,739.13 btu", "Degrees/Minute, deg/minCycles/Second, cycles/s": "0 Hz", "Revolutions/Second, rpsMegahertz, MHz": "0 MHz", "Hertz, HzHertz, Hz": "1 Hz", "Revolutions/Minute, rpmHertz, Hz": "0.017 Hz", "Hertz, HzKilohertz, kHz": "0.001 kHz", "Degrees/Second, deg/sHertz, Hz": "0.003 Hz", "Revolutions/Second, rpsRadians/Second, rad/s": "6.289 btu", "Hertz, HzRadians/Hour, rad/h": "22,727.273 btu", "Megahertz, MHzRadians/Minute, rad/min": "370,370,370.37 btu", "Kilohertz, kHzDegrees/Hour, deg/h": "1,298,701,298.701 btu", "Revolutions/Hour, rphRevolutions/Minute, rpm": "0.165 btu", "Cycles/Second, cycles/sGigahertz, GHz": "0 GHz", "Radians/Hour, rad/hDegrees/Second, deg/s": "0.016 btu", "Cycles/Second, cycles/sDegrees/Hour, deg/h": "1,298,701.299 btu", "Megahertz, MHzRevolutions/Second, rps": "1,000,000 btu", "Gigahertz, GHzDegrees/Second, deg/s": "357,142,857,142.857 btu", "Hertz, HzDegrees/Hour, deg/h": "1,298,701.299 btu", "Kilohertz, kHzGigahertz, GHz": "0 GHz", "Hertz, HzCycles/Second, cycles/s": "1 Hz", "Radians/Minute, rad/minRevolutions/Second, rps": "0.003 btu", "Megahertz, MHzRevolutions/Hour, rph": "357,142,857.143 btu", "Revolutions/Second, rpsRevolutions/Hour, rph": "357.143 btu", "Radians/Hour, rad/hRadians/Minute, rad/min": "0.016 btu", "Degrees/Second, deg/sRevolutions/Minute, rpm": "0.165 btu", "Kilohertz, kHzRadians/Minute, rad/min": "370,370.37 btu", "Cycles/Second, cycles/sDegrees/Second, deg/s": "357.143 btu", "Degrees/Second, deg/sGigahertz, GHz": "0 GHz", "Degrees/Hour, deg/hKilohertz, kHz": "0 kHz", "Revolutions/Second, rpsRevolutions/Second, rps": "1 btu", "Radians/Second, rad/sRevolutions/Hour, rph": "56.786 btu", "Radians/Minute, rad/minHertz, Hz": "0.003 Hz", "Radians/Hour, rad/hRevolutions/Second, rps": "0 btu", "Revolutions/Hour, rphGigahertz, GHz": "0 GHz", "Cycles/Second, cycles/sDegrees/Minute, deg/min": "21,739.13 btu", "Degrees/Second, deg/sCycles/Second, cycles/s": "0.003 Hz", "Degrees/Second, deg/sRadians/Second, rad/s": "0.018 btu", "Revolutions/Hour, rphRadians/Minute, rad/min": "1.037 btu", "Megahertz, MHzKilohertz, kHz": "1,000 kHz", "Megahertz, MHzHertz, Hz": "1,000,000 Hz", "Degrees/Hour, deg/hCycles/Second, cycles/s": "0 Hz", "Hertz, HzGigahertz, GHz": "0 GHz", "Revolutions/Hour, rphKilohertz, kHz": "0 kHz", "Degrees/Hour, deg/hRadians/Minute, rad/min": "0 btu", "Gigahertz, GHzHertz, Hz": "1,000,000,000 Hz", "Kilohertz, kHzHertz, Hz": "1,000 Hz", "Degrees/Hour, deg/hRevolutions/Hour, rph": "0 btu", "Cycles/Second, cycles/sRevolutions/Second, rps": "1 btu", "Degrees/Minute, deg/minDegrees/Hour, deg/h": "59.74 btu", "Revolutions/Minute, rpmRevolutions/Second, rps": "0.017 btu", "Radians/Hour, rad/hRadians/Second, rad/s": "0 btu", "Gigahertz, GHzKilohertz, kHz": "1,000,000 kHz", "Hertz, HzRevolutions/Minute, rpm": "58.824 btu", "Degrees/Second, deg/sDegrees/Minute, deg/min": "60.87 btu", "Degrees/Second, deg/sRadians/Hour, rad/h": "63.636 btu", "Megahertz, MHzRadians/Second, rad/s": "6,289,308.176 btu", "Cycles/Second, cycles/sHertz, Hz": "1 Hz", "Radians/Minute, rad/minRevolutions/Hour, rph": "0.964 btu", "Radians/Second, rad/sDegrees/Hour, deg/h": "206,493.506 btu", "Degrees/Hour, deg/hRevolutions/Second, rps": "0 btu", "Radians/Hour, rad/hRevolutions/Minute, rpm": "0.003 btu"]
    
    var jointdict : [String : UnitFrequency] = [:]
    
//                init () {
//
//                    for i in 1..<frequencyarray.count {
//                        jointdict[frequencyarray[i]] = array2[i]
//                    }
//
//
//                    let formatter = MeasurementFormatter()
//                    formatter.unitOptions = .providedUnit
//                    for itema in keys1 {
//                        for itemb in keys2 {
//                            let itemc = itema + itemb
//                            let val1 = Measurement(value: 1.0 , unit: jointdict[itema] ?? UnitFrequency.hertz)
//                            let val2 = val1.converted(to: jointdict[itemb] ?? UnitFrequency.hertz)
//                            let storeval =  formatter.string(from: val2)
//                            freqdict[itemc] = storeval
//                        }
//                    }
//
//                    print ("Final Dict :", freqdict)
//                }
//
//    let keys1 = ["Cycles/Second, cycles/s", "Degrees/Hour, deg/h", "Degrees/Minute, deg/min", "Degrees/Second, deg/s", "Gigahertz, GHz", "Hertz, Hz", "Kilohertz, kHz", "Megahertz, MHz", "Radians/Hour, rad/h", "Radians/Minute, rad/min", "Radians/Second, rad/s", "Revolutions/Hour, rph", "Revolutions/Minute, rpm", "Revolutions/Second, rps"]
//
//    let keys2 = ["Cycles/Second, cycles/s", "Degrees/Hour, deg/h", "Degrees/Minute, deg/min", "Degrees/Second, deg/s", "Gigahertz, GHz", "Hertz, Hz", "Kilohertz, kHz", "Megahertz, MHz", "Radians/Hour, rad/h", "Radians/Minute, rad/min", "Radians/Second, rad/s", "Revolutions/Hour, rph", "Revolutions/Minute, rpm", "Revolutions/Second, rps"]
//
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
                                    Text(self.DisplayUnit1 + "  "  + env.displayconvertfreq)
                                    }
                                .sheet(isPresented: $ShowUnit1) {
                                    ModalFrequency(isPresented: self.$ShowUnit1, isPresented1: self.$ShowUnit1, isPresented2: self.$ShowUnit2, currentUnit1: self.$DisplayUnit1, currentUnit2: self.$DisplayUnit2)
                                }
                                    .font(.system(size: 40))
                                    .frame(width: (UIScreen.main.bounds.width - 2 * 12), height: UIScreen.main.bounds.height / 10)
                                    .foregroundColor(.white)
                                    .background(Color.gray)
                                    .cornerRadius(UIScreen.main.bounds.width - 2 * 12)
                        
                                Button(action: {
                                    self.ShowUnit2.toggle()
                                }) {
                                                                      Text(self.DisplayUnit2 + "  " + calc(env.displayconvertfreq, self.DisplayUnit1, self.DisplayUnit2))
                                    Text(self.DisplayUnit2 + "  ")
                                    }
                                    .sheet(isPresented: $ShowUnit2) {
                                        ModalFrequency(isPresented: self.$ShowUnit1, isPresented1: self.$ShowUnit1, isPresented2: self.$ShowUnit2, currentUnit1: self.$DisplayUnit1, currentUnit2: self.$DisplayUnit2)
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
    
    let frequencyarray =
    ["Cycles/Second, cycles/s", "Degrees/Hour, deg/h", "Degrees/Minute, deg/min", "Degrees/Second, deg/s", "Gigahertz, GHz", "Hertz, Hz", "Kilohertz, kHz", "Megahertz, MHz", "Radians/Hour, rad/h", "Radians/Minute, rad/min", "Radians/Second, rad/s", "Revolutions/Hour, rph", "Revolutions/Minute, rpm", "Revolutions/Second, rps"]
    
    let array2 = [UnitFrequency.cyclespersec, UnitFrequency.degperhour, UnitFrequency.degpermin, UnitFrequency.degpersec, UnitFrequency.gigahertz, UnitFrequency.hertz, UnitFrequency.kilohertz, UnitFrequency.megahertz, UnitFrequency.radperhour,
    UnitFrequency.radpermin, UnitFrequency.radpersec ,UnitFrequency.revperhour ,UnitFrequency.revpermin, UnitFrequency.revpersec]
    
    private func calc(_ unit1val: String, _ unit1: String, _ unit2: String) -> String{
        let formatter = MeasurementFormatter()
        let stringval: String = unit1  +  unit2
        let storedval = (freqdict[stringval, default: "1"])
        let operand1 = (unit1val as NSString).doubleValue
        let operand2 = (storedval as NSString).doubleValue
        return String(operand1 * operand2)
        
    }
    
//    private func type(_ unit: String) -> UnitFrequency {
//
//        for itema in frequencyarray {
//
//        }
//
//    }
}

struct Frequency_Previews: PreviewProvider {
    static var previews: some View {
        Frequency()
        .environmentObject(ViewRouter())
        .environmentObject(GlobalEnvironment())
    }
}

extension UnitFrequency {

        
    static let cyclespersec = UnitFrequency(symbol: "cycles/s", converter: UnitConverterLinear(coefficient: 1))
    static let degperhour = UnitFrequency(symbol: "btu", converter: UnitConverterLinear(coefficient: 0.00000077))
    static let degpermin = UnitFrequency(symbol: "btu", converter: UnitConverterLinear(coefficient: 0.000046))
    static let degpersec = UnitFrequency(symbol: "btu", converter: UnitConverterLinear(coefficient: 0.0028))
    static let radperhour = UnitFrequency(symbol: "btu", converter: UnitConverterLinear(coefficient: 0.000044))
    static let radpermin = UnitFrequency(symbol: "btu", converter: UnitConverterLinear(coefficient: 0.0027))
    static let radpersec = UnitFrequency(symbol: "btu", converter: UnitConverterLinear(coefficient: 0.159))
    static let revperhour = UnitFrequency(symbol: "btu", converter: UnitConverterLinear(coefficient: 0.0028))
    static let revpermin = UnitFrequency(symbol: "btu", converter: UnitConverterLinear(coefficient: 0.017))
    static let revpersec = UnitFrequency(symbol: "btu", converter: UnitConverterLinear(coefficient: 1))
}
