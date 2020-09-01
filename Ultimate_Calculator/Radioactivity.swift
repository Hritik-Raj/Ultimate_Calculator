//
//  Radioactivity.swift
//  Ultimate_Calculator
//
//  Created by Hritik Raj on 8/14/20.
//  Copyright © 2020 Hritik Raj. All rights reserved.
//

import SwiftUI

struct Radioactivity: View {
        @State var ShowUnit1 = false
        @State var ShowUnit2 = false
        @State var DisplayUnit1 = "Angle"
        @State var DisplayUnit2 = "Angle"
        @EnvironmentObject var viewRouter: ViewRouter
        @EnvironmentObject var env: GlobalEnvironment
    
        var radioactivitydict : [String : String] = ["Megabecquerel, MBqTerabecquerel, TBq": "0 mSv", "Curie, CiTerabecquerel, TBq": "0.037 mSv", "Curie, CiMicrocurie, μCi": "1,000,000 μSv", "Microcurie, μCiBecquerel, Bq": "37,000 Bit", "Megabecquerel, MBqCurie, Ci": "0 cGy", "Curie, CiMegabecquerel, MBq": "37,000 μGy", "Becquerel, BqCurie, Ci": "0 cGy", "Microcurie, μCiMillicurie, mCi": "0.001 mGy", "Millicurie, mCiBecquerel, Bq": "37,000,000 Bit", "Curie, CiCurie, Ci": "1 cGy", "Becquerel, BqMicrocurie, μCi": "0 μSv", "Rutherford, rdTerabecquerel, TBq": "0 mSv", "Millicurie, mCiCurie, Ci": "0.001 cGy", "Terabecquerel, TBqGigabecquerel, GBq": "1,000 Gy", "Becquerel, BqBecquerel, Bq": "1 Bit", "Terabecquerel, TBqCurie, Ci": "27.027 cGy", "Gigabecquerel, GBqMegabecquerel, MBq": "1,000 μGy", "Millicurie, mCiGigabecquerel, GBq": "0.037 Gy", "Millicurie, mCiTerabecquerel, TBq": "0 mSv", "Millicurie, mCiMicrocurie, μCi": "1,000 μSv", "Rutherford, rdMicrocurie, μCi": "27.027 μSv", "Becquerel, BqGigabecquerel, GBq": "0 Gy", "Becquerel, BqMillicurie, mCi": "0 mGy", "Terabecquerel, TBqMillicurie, mCi": "27,027.027 mGy", "Gigabecquerel, GBqBecquerel, Bq": "1,000,000,000 Bit", "Becquerel, BqTerabecquerel, TBq": "0 mSv", "Microcurie, μCiTerabecquerel, TBq": "0 mSv", "Rutherford, rdBecquerel, Bq": "1,000,000 Bit", "Microcurie, μCiMegabecquerel, MBq": "0.037 μGy", "Terabecquerel, TBqRutherford, rd": "1,000,000 mrem", "Megabecquerel, MBqMegabecquerel, MBq": "1 μGy", "Microcurie, μCiCurie, Ci": "0 cGy", "Rutherford, rdGigabecquerel, GBq": "0.001 Gy", "Gigabecquerel, GBqMicrocurie, μCi": "27,027.027 μSv", "Rutherford, rdMillicurie, mCi": "0.027 mGy", "Megabecquerel, MBqMicrocurie, μCi": "27.027 μSv", "Megabecquerel, MBqRutherford, rd": "1 mrem", "Gigabecquerel, GBqMillicurie, mCi": "27.027 mGy", "Megabecquerel, MBqMillicurie, mCi": "0.027 mGy", "Millicurie, mCiRutherford, rd": "37 mrem", "Microcurie, μCiMicrocurie, μCi": "1 μSv", "Rutherford, rdCurie, Ci": "0 cGy", "Curie, CiRutherford, rd": "37,000 mrem", "Millicurie, mCiMegabecquerel, MBq": "37 μGy", "Becquerel, BqMegabecquerel, MBq": "0 μGy", "Gigabecquerel, GBqCurie, Ci": "0.027 cGy", "Millicurie, mCiMillicurie, mCi": "1 mGy", "Rutherford, rdMegabecquerel, MBq": "1 μGy", "Becquerel, BqRutherford, rd": "0 mrem", "Rutherford, rdRutherford, rd": "1 mrem", "Terabecquerel, TBqMegabecquerel, MBq": "1,000,000 μGy", "Terabecquerel, TBqMicrocurie, μCi": "27,027,027.027 μSv", "Gigabecquerel, GBqTerabecquerel, TBq": "0.001 mSv", "Terabecquerel, TBqTerabecquerel, TBq": "1 mSv", "Curie, CiMillicurie, mCi": "1,000 mGy", "Gigabecquerel, GBqRutherford, rd": "1,000 mrem", "Curie, CiGigabecquerel, GBq": "37 Gy", "Curie, CiBecquerel, Bq": "37,000,000,000 Bit", "Megabecquerel, MBqBecquerel, Bq": "1,000,000 Bit", "Megabecquerel, MBqGigabecquerel, GBq": "0.001 Gy", "Terabecquerel, TBqBecquerel, Bq": "1,000,000,000,000 Bit", "Gigabecquerel, GBqGigabecquerel, GBq": "1 Gy", "Microcurie, μCiRutherford, rd": "0.037 mrem", "Microcurie, μCiGigabecquerel, GBq": "0 Gy"]

    
        
//        var jointdict : [String : UnitRadioactivity] = [:]
//
//        let keys1 = ["Becquerel, Bq", "Curie, Ci", "Gigabecquerel, GBq", "Megabecquerel, MBq", "Microcurie, μCi", "Millicurie, mCi", "Rutherford, rd", "Terabecquerel, TBq"]
//
//            let keys2 = ["Becquerel, Bq", "Curie, Ci", "Gigabecquerel, GBq", "Megabecquerel, MBq", "Microcurie, μCi", "Millicurie, mCi", "Rutherford, rd", "Terabecquerel, TBq"]
//
//
//
//
//                                           init () {
//
//                                                for i in 1..<radioactivityarray.count {
//                                                    jointdict[radioactivityarray[i]] = array2[i]
//                                                }
//    
//
//                                                let formatter = MeasurementFormatter()
//                                                formatter.unitOptions = .providedUnit
//                                                for itema in keys1 {
//                                                    for itemb in keys2 {
//                                                        let itemc = itema + itemb
//                                                        let val1 = Measurement(value: 1.0 , unit: jointdict[itema] ?? UnitRadioactivity.becq)
//                                                        let val2 = val1.converted(to: jointdict[itemb] ?? UnitRadioactivity.becq)
//                                                        let storeval =  formatter.string(from: val2)
//                                                        radioactivitydict[itemc] = storeval
//                                                    }
//                                                }
//
//                                                print ("Final Dict ", radioactivitydict)
//                                            }
    
        
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
                                    Text(self.DisplayUnit1 + "  "  + env.displayconvertradio)
                                    }
                                .sheet(isPresented: $ShowUnit1) {
                                    ModalRadioactivity(isPresented: self.$ShowUnit1, isPresented1: self.$ShowUnit1, isPresented2: self.$ShowUnit2, currentUnit1: self.$DisplayUnit1, currentUnit2: self.$DisplayUnit2)
                                }
                                    .font(.system(size: 40))
                                    .frame(width: (UIScreen.main.bounds.width - 2 * 12), height: UIScreen.main.bounds.height / 10)
                                    .foregroundColor(.white)
                                    .background(Color.gray)
                                    .cornerRadius(UIScreen.main.bounds.width - 2 * 12)
                        
                                Button(action: {
                                    self.ShowUnit2.toggle()
                                }) {
                                                                        Text(self.DisplayUnit2 + "  " + calc(env.displayconvertradio, self.DisplayUnit1, self.DisplayUnit2))
//                                    Text(self.DisplayUnit2 + "  ")
                                    }
                                    .sheet(isPresented: $ShowUnit2) {
                                        ModalRadioactivity(isPresented: self.$ShowUnit1, isPresented1: self.$ShowUnit1, isPresented2: self.$ShowUnit2, currentUnit1: self.$DisplayUnit1, currentUnit2: self.$DisplayUnit2)
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
    
    private func calc(_ unit1val: String, _ unit1: String, _ unit2: String) -> String{
          let formatter = MeasurementFormatter()
          let stringval: String = unit1  +  unit2
          let storedval = (radioactivitydict[stringval, default: "1"])
          let operand1 = (unit1val as NSString).doubleValue
          let operand2 = (storedval as NSString).doubleValue
          return String(operand1 * operand2)
          
      }
    
}

struct Radioactivity_Previews: PreviewProvider {
    static var previews: some View {
        Radioactivity()
        .environmentObject(ViewRouter())
        .environmentObject(GlobalEnvironment())
    }
}

let radioactivityarray =
     ["Becquerel, Bq", "Curie, Ci", "Gigabecquerel, GBq", "Megabecquerel, MBq", "Microcurie, μCi", "Millicurie, mCi", "Rutherford, rd", "Terabecquerel, TBq"]
let array2 = [UnitRadioactivity.becq, UnitRadioactivity.curie , UnitRadioactivity.gigabecq , UnitRadioactivity.megabecq , UnitRadioactivity.microcurie , UnitRadioactivity.millicurie , UnitRadioactivity.rutherford , UnitRadioactivity.terabecq]



public final class UnitRadioactivity: Dimension {
 static let becq = UnitRadioactivity(symbol: "Bit", converter: UnitConverterLinear(coefficient: 1))
 static let curie = UnitRadioactivity(symbol: "cGy", converter: UnitConverterLinear(coefficient: 37000000000))
 static let gigabecq = UnitRadioactivity(symbol: "Gy", converter: UnitConverterLinear(coefficient: 1000000000))
 static let megabecq = UnitRadioactivity(symbol: "μGy", converter: UnitConverterLinear(coefficient: 1000000))
 static let microcurie = UnitRadioactivity(symbol: "μSv", converter: UnitConverterLinear(coefficient: 37000))
 static let millicurie = UnitRadioactivity(symbol: "mGy", converter: UnitConverterLinear(coefficient: 37000000))
 static let rutherford = UnitRadioactivity(symbol: "mrem", converter: UnitConverterLinear(coefficient: 1000000))
 static let terabecq = UnitRadioactivity(symbol: "mSv", converter: UnitConverterLinear(coefficient: 1000000000000))

    
    public override class func baseUnit() -> UnitRadioactivity {
        return becq
    }
}
