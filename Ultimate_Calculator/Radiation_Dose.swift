//
//  Radiation_Dose.swift
//  Ultimate_Calculator
//
//  Created by Hritik Raj on 8/14/20.
//  Copyright © 2020 Hritik Raj. All rights reserved.
//

import SwiftUI

struct Radiation_Dose: View {
        @State var ShowUnit1 = false
        @State var ShowUnit2 = false
        @State var DisplayUnit1 = "Angle"
        @State var DisplayUnit2 = "Angle"
        @EnvironmentObject var viewRouter: ViewRouter
        @EnvironmentObject var env: GlobalEnvironment
    
    var radiationdosedict : [String : String] = ["Milligray, mGyMicrogray, μGy": "1,000 μGy", "Gray, GyMicrosievert, μSv": "1,000,000 μSv", "Bit, BitRad, rad": "1 rad", "Centigray, cGyMillirem, mrem": "1,000 mrem", "Millirem, mremRad, rad": "0.001 rad", "Microsievert, μSvSievert, Sv": "0 Sv", "Milligray, mGyGray, Gy": "0.001 Gy", "Microgray, μGyGray, Gy": "0 Gy", "Sievert, SvGray, Gy": "1 Gy", "Sievert, SvMilligray, mGy": "1,000 mGy", "Microsievert, μSvMillisievert, mSv": "0.001 mSv", "Millisievert, mSvBit, Bit": "0.1 rad", "Millisievert, mSvMicrosievert, μSv": "1,000 μSv", "Milligray, mGyMilligray, mGy": "1 mGy", "Bit, BitMicrosievert, μSv": "10,000 μSv", "Centigray, cGyMillisievert, mSv": "10 mSv", "Sievert, SvRad, rad": "100 rad", "Centigray, cGyMicrosievert, μSv": "10,000 μSv", "Millisievert, mSvCentigray, cGy": "0.1 cGy", "Centigray, cGyGray, Gy": "0.01 Gy", "Microgray, μGyMicrogray, μGy": "1 μGy", "Gray, GyBit, Bit": "100 rad", "Microsievert, μSvRad, rad": "0 rad", "Gray, GyMillisievert, mSv": "1,000 mSv", "Milligray, mGyRad, rad": "0.1 rad", "Gray, GyMillirem, mrem": "100,000 mrem", "Microgray, μGyMillisievert, mSv": "0.001 mSv", "Millirem, mremMillisievert, mSv": "0.01 mSv", "Microsievert, μSvCentigray, cGy": "0 cGy", "Millirem, mremMicrosievert, μSv": "10 μSv", "Sievert, SvMillirem, mrem": "100,000 mrem", "Millirem, mremMilligray, mGy": "0.01 mGy", "Sievert, SvBit, Bit": "100 rad", "Millisievert, mSvMillirem, mrem": "100 mrem", "Millisievert, mSvSievert, Sv": "0.001 Sv", "Rad, radMilligray, mGy": "10 mGy", "Microgray, μGyRad, rad": "0 rad", "Milligray, mGyMicrosievert, μSv": "1,000 μSv", "Milligray, mGyCentigray, cGy": "0.1 cGy", "Rad, radMillisievert, mSv": "10 mSv", "Millirem, mremMillirem, mrem": "1 mrem", "Sievert, SvMicrosievert, μSv": "1,000,000 μSv", "Milligray, mGyMillirem, mrem": "100 mrem", "Millisievert, mSvRad, rad": "0.1 rad", "Millisievert, mSvMilligray, mGy": "1 mGy", "Bit, BitBit, Bit": "1 rad", "Sievert, SvMillisievert, mSv": "1,000 mSv", "Microgray, μGyMicrosievert, μSv": "1 μSv", "Millisievert, mSvGray, Gy": "0.001 Gy", "Rad, radMillirem, mrem": "1,000 mrem", "Millirem, mremMicrogray, μGy": "10 μGy", "Centigray, cGyRad, rad": "1 rad", "Centigray, cGyBit, Bit": "1 rad", "Millirem, mremSievert, Sv": "0 Sv", "Bit, BitMillirem, mrem": "1,000 mrem", "Bit, BitMicrogray, μGy": "10,000 μGy", "Sievert, SvSievert, Sv": "1 Sv", "Gray, GyMilligray, mGy": "1,000 mGy", "Bit, BitSievert, Sv": "0.01 Sv", "Microsievert, μSvBit, Bit": "0 rad", "Milligray, mGyBit, Bit": "0.1 rad", "Microgray, μGyMilligray, mGy": "0.001 mGy", "Bit, BitCentigray, cGy": "1 cGy", "Microgray, μGyBit, Bit": "0 rad", "Millirem, mremBit, Bit": "0.001 rad", "Microsievert, μSvMilligray, mGy": "0.001 mGy", "Gray, GyGray, Gy": "1 Gy", "Centigray, cGySievert, Sv": "0.01 Sv", "Bit, BitGray, Gy": "0.01 Gy", "Microsievert, μSvMillirem, mrem": "0.1 mrem", "Millirem, mremGray, Gy": "0 Gy", "Gray, GyCentigray, cGy": "100 cGy", "Rad, radMicrosievert, μSv": "10,000 μSv", "Rad, radMicrogray, μGy": "10,000 μGy", "Gray, GyRad, rad": "100 rad", "Gray, GyMicrogray, μGy": "1,000,000 μGy", "Milligray, mGySievert, Sv": "0.001 Sv", "Microsievert, μSvMicrogray, μGy": "1 μGy", "Millisievert, mSvMillisievert, mSv": "1 mSv", "Sievert, SvMicrogray, μGy": "1,000,000 μGy", "Centigray, cGyCentigray, cGy": "1 cGy", "Rad, radGray, Gy": "0.01 Gy", "Rad, radSievert, Sv": "0.01 Sv", "Microgray, μGyMillirem, mrem": "0.1 mrem", "Sievert, SvCentigray, cGy": "100 cGy", "Milligray, mGyMillisievert, mSv": "1 mSv", "Centigray, cGyMilligray, mGy": "10 mGy", "Millirem, mremCentigray, cGy": "0.001 cGy", "Microgray, μGySievert, Sv": "0 Sv", "Rad, radCentigray, cGy": "1 cGy", "Microsievert, μSvMicrosievert, μSv": "1 μSv", "Gray, GySievert, Sv": "1 Sv", "Rad, radRad, rad": "1 rad", "Microgray, μGyCentigray, cGy": "0 cGy", "Microsievert, μSvGray, Gy": "0 Gy", "Bit, BitMillisievert, mSv": "10 mSv", "Rad, radBit, Bit": "1 rad", "Bit, BitMilligray, mGy": "10 mGy", "Millisievert, mSvMicrogray, μGy": "1,000 μGy", "Centigray, cGyMicrogray, μGy": "10,000 μGy"]

    
//    var jointdict : [String : UnitRadiationDose] = [:]
//    
//    let keys1 = ["Bit, Bit", "Centigray, cGy", "Gray, Gy", "Microgray, μGy", "Microsievert, μSv", "Milligray, mGy", "Millirem, mrem", "Millisievert, mSv", "Rad, rad", "Sievert, Sv"]
//    
//       let keys2 = ["Bit, Bit", "Centigray, cGy", "Gray, Gy", "Microgray, μGy", "Microsievert, μSv", "Milligray, mGy", "Millirem, mrem", "Millisievert, mSv", "Rad, rad", "Sievert, Sv"]
//    
//    
//    
//                                       init () {
//    
//                                            for i in 1..<radiationarray.count {
//                                                jointdict[radiationarray[i]] = array2[i]
//                                            }
//    
//    
//                                            let formatter = MeasurementFormatter()
//                                            formatter.unitOptions = .providedUnit
//                                            for itema in keys1 {
//                                                for itemb in keys2 {
//                                                    let itemc = itema + itemb
//                                                    let val1 = Measurement(value: 1.0 , unit: jointdict[itema] ?? UnitRadiationDose.rad)
//                                                    let val2 = val1.converted(to: jointdict[itemb] ?? UnitRadiationDose.rad)
//                                                    let storeval =  formatter.string(from: val2)
//                                                    radiationdosedict[itemc] = storeval
//                                                }
//                                            }
//    
//                                            print ("Final Dict ", radiationdosedict)
//                                        }
    
        
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
                                    Text(self.DisplayUnit1 + "  "  + env.displayconvertradi)
                                    }
                                .sheet(isPresented: $ShowUnit1) {
                                    ModalRadiation(isPresented: self.$ShowUnit1, isPresented1: self.$ShowUnit1, isPresented2: self.$ShowUnit2, currentUnit1: self.$DisplayUnit1, currentUnit2: self.$DisplayUnit2)
                                }
                                    .font(.system(size: 40))
                                    .frame(width: (UIScreen.main.bounds.width - 2 * 12), height: UIScreen.main.bounds.height / 10)
                                    .foregroundColor(.white)
                                    .background(Color.gray)
                                    .cornerRadius(UIScreen.main.bounds.width - 2 * 12)
                        
                                Button(action: {
                                    self.ShowUnit2.toggle()
                                }) {
                                                                        Text(self.DisplayUnit2 + "  " + calc(env.displayconvertradi, self.DisplayUnit1, self.DisplayUnit2))
//                                    Text(self.DisplayUnit2 + "  ")
                                    }
                                    .sheet(isPresented: $ShowUnit2) {
                                        ModalRadiation(isPresented: self.$ShowUnit1, isPresented1: self.$ShowUnit1, isPresented2: self.$ShowUnit2, currentUnit1: self.$DisplayUnit1, currentUnit2: self.$DisplayUnit2)
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
    

    //Radiation.swift
    //base unit: rad
    let radiationarray =
        ["Bit, Bit", "Centigray, cGy", "Gray, Gy", "Microgray, μGy", "Microsievert, μSv", "Milligray, mGy", "Millirem, mrem", "Millisievert, mSv", "Rad, rad", "Sievert, Sv"]
    let array2 = [UnitRadiationDose.bit, UnitRadiationDose.centigray, UnitRadiationDose.gray, UnitRadiationDose.microgray, UnitRadiationDose.microsievert, UnitRadiationDose.milligray, UnitRadiationDose.millirem, UnitRadiationDose.millisievert, UnitRadiationDose.rad, UnitRadiationDose.sievert]
    
    private func calc(_ unit1val: String, _ unit1: String, _ unit2: String) -> String{
          let formatter = MeasurementFormatter()
          let stringval: String = unit1  +  unit2
          let storedval = (radiationdosedict[stringval, default: "1"])
          let operand1 = (unit1val as NSString).doubleValue
          let operand2 = (storedval as NSString).doubleValue
          return String(operand1 * operand2)
          
      }
}

struct Radiation_Dose_Previews: PreviewProvider {
    static var previews: some View {
        Radiation_Dose()
        .environmentObject(ViewRouter())
        .environmentObject(GlobalEnvironment())
    }
}



public final class UnitRadiationDose: Dimension {
 static let bit = UnitRadiationDose(symbol: "Bit", converter: UnitConverterLinear(coefficient: 1))
 static let centigray = UnitRadiationDose(symbol: "cGy", converter: UnitConverterLinear(coefficient: 1))
 static let gray = UnitRadiationDose(symbol: "Gy", converter: UnitConverterLinear(coefficient: 100))
 static let microgray = UnitRadiationDose(symbol: "μGy", converter: UnitConverterLinear(coefficient: 0.0001))
 static let microsievert = UnitRadiationDose(symbol: "μSv", converter: UnitConverterLinear(coefficient: 0.0001))
 static let milligray = UnitRadiationDose(symbol: "mGy", converter: UnitConverterLinear(coefficient: 0.1))
 static let millirem = UnitRadiationDose(symbol: "mrem", converter: UnitConverterLinear(coefficient: 0.001))
 static let millisievert = UnitRadiationDose(symbol: "mSv", converter: UnitConverterLinear(coefficient: 0.1))
 static let rad = UnitRadiationDose(symbol: "rad", converter: UnitConverterLinear(coefficient: 1))
 static let sievert = UnitRadiationDose(symbol: "Sv", converter: UnitConverterLinear(coefficient: 100))
    
    public override class func baseUnit() -> UnitRadiationDose {
        return rad
    }
}
