//
//  Weight.swift
//  Ultimate_Calculator
//
//  Created by Hritik Raj on 8/14/20.
//  Copyright © 2020 Hritik Raj. All rights reserved.
//

import SwiftUI

struct Weight: View {
        @State var ShowUnit1 = false
        @State var ShowUnit2 = false
        @State var DisplayUnit1 = "Angle"
        @State var DisplayUnit2 = "Angle"
        @EnvironmentObject var viewRouter: ViewRouter
        @EnvironmentObject var env: GlobalEnvironment
        
    
        var weightdict : [String : String] = ["Carat, ctPound (US), lb": "0.00057 lb", "Short Ton (US), tNanograms, ng": "907,185,000,000,000 ng", "Milligrams, mgMetric Ton, t": "0 t", "Kilogram, kgMilligrams, mg": "1,000,000 mg", "Centigrams, cgLong Ton (UK), t": "0 t", "Grains, grPound (US), lb": "0 lb", "Micrograms, μgLong Ton (UK), t": "0 t", "Micrograms, μgGrains, gr": "0 gr", "Micrograms, μgShort Ton (US), t": "0 tn", "Metric Ton, tTroy Ounces, oz t": "32,150.743 oz t", "Milligrams, mgKilogram, kg": "0 kg", "Stone, stOunce (US), oz": "224 oz", "Troy Ounces, oz tCentigrams, cg": "3,110.348 cg", "Ounce (US), ozCarat (UK), UK ct": "109.375 UK ct", "Micrograms, μgStone, st": "0 st", "Metric Ton, tKilogram, kg": "1,000 kg", "Pound (US), lbShort Ton (US), t": "0 tn", "Nanograms, ngNanograms, ng": "1 ng", "Micrograms, μgOunce (US), oz": "0 oz", "Short Ton (US), tGram, g": "907,185 g", "Micrograms, μgMilligrams, mg": "0.001 mg", "Long Ton (UK), tCarat (UK), UK ct": "3,920,011.926 UK ct", "Micrograms, μgCarat, ct": "0 kg", "Milligrams, mgNanograms, ng": "1,000,000 ng", "Nanograms, ngCentigrams, cg": "0 cg", "Metric Ton, tShort Ton (US), t": "1.102 tn", "Nanograms, ngOunce (US), oz": "0 oz", "Metric Ton, tCarat (UK), UK ct": "3,858,089.588 UK ct", "Troy Ounces, oz tOunce (US), oz": "1.097 oz", "Grains, grCarat, ct": "0 kg", "Metric Ton, tMetric Ton, t": "1 t", "Short Ton (US), tKilogram, kg": "907.185 kg", "Milligrams, mgShort Ton (US), t": "0 tn", "Gram, gGrains, gr": "15.432 gr", "Grains, grStone, st": "0 st", "Ounce (US), ozPound (US), lb": "0.062 lb", "Long Ton (UK), tStone, st": "160.001 st", "Pound (US), lbMetric Ton, t": "0 t", "Stone, stMetric Ton, t": "0.006 t", "Troy Ounces, oz tGrains, gr": "480 gr", "Nanograms, ngCarat (UK), UK ct": "0 UK ct", "Centigrams, cgCarat (UK), UK ct": "0.039 UK ct", "Milligrams, mgMilligrams, mg": "1 mg", "Kilogram, kgMicrograms, μg": "1,000,000,000 µg", "Carat, ctMilligrams, mg": "1,000,000 mg", "Gram, gPound (US), lb": "0.002 lb", "Ounce (US), ozShort Ton (US), t": "0 tn", "Kilogram, kgNanograms, ng": "1,000,000,000,000 ng", "Nanograms, ngKilogram, kg": "0 kg", "Nanograms, ngShort Ton (US), t": "0 tn", "Carat, ctCarat, ct": "1 kg", "Grains, grShort Ton (US), t": "0 tn", "Pound (US), lbTroy Ounces, oz t": "14.583 oz t", "Milligrams, mgGram, g": "0.001 g", "Gram, gMetric Ton, t": "0 t", "Nanograms, ngStone, st": "0 st", "Centigrams, cgShort Ton (US), t": "0 tn", "Centigrams, cgCarat, ct": "0 kg", "Short Ton (US), tTroy Ounces, oz t": "29,166.672 oz t", "Milligrams, mgTroy Ounces, oz t": "0 oz t", "Metric Ton, tMicrograms, μg": "1,000,000,000,000 µg", "Gram, gStone, st": "0 st", "Carat, ctOunce (US), oz": "35.274 oz", "Pound (US), lbGram, g": "453.592 g", "Gram, gMicrograms, μg": "1,000,000 µg", "Carat (UK), UK ctCarat, ct": "0 kg", "Metric Ton, tStone, st": "157.473 st", "Pound (US), lbCarat (UK), UK ct": "1,749.999 UK ct", "Long Ton (UK), tMetric Ton, t": "1.016 t", "Pound (US), lbNanograms, ng": "453,592,000,000 ng", "Carat, ctKilogram, kg": "1 kg", "Ounce (US), ozStone, st": "0.004 st", "Long Ton (UK), tGram, g": "1,016,050 g", "Stone, stStone, st": "1 st", "Micrograms, μgNanograms, ng": "1,000 ng", "Stone, stCarat, ct": "6.35 kg", "Long Ton (UK), tGrains, gr": "15,680,047.705 gr", "Pound (US), lbKilogram, kg": "0.454 kg", "Stone, stGram, g": "6,350.29 g", "Nanograms, ngTroy Ounces, oz t": "0 oz t", "Stone, stPound (US), lb": "14 lb", "Gram, gLong Ton (UK), t": "0 t", "Carat, ctGrains, gr": "15,432.358 gr", "Kilogram, kgLong Ton (UK), t": "0.001 t", "Troy Ounces, oz tMetric Ton, t": "0 t", "Ounce (US), ozNanograms, ng": "28,349,500,000 ng", "Micrograms, μgCentigrams, cg": "0 cg", "Kilogram, kgKilogram, kg": "1 kg", "Metric Ton, tNanograms, ng": "1,000,000,000,000,000 ng", "Centigrams, cgCentigrams, cg": "1 cg", "Metric Ton, tPound (US), lb": "2,204.624 lb", "Gram, gOunce (US), oz": "0.035 oz", "Pound (US), lbGrains, gr": "6,999.994 gr", "Ounce (US), ozTroy Ounces, oz t": "0.911 oz t", "Long Ton (UK), tMicrograms, μg": "1,016,050,000,000 µg", "Carat, ctLong Ton (UK), t": "0.001 t", "Troy Ounces, oz tCarat (UK), UK ct": "120 UK ct", "Carat (UK), UK ctGram, g": "0.259 g", "Long Ton (UK), tShort Ton (US), t": "1.12 tn", "Short Ton (US), tStone, st": "142.857 st", "Long Ton (UK), tCentigrams, cg": "101,605,000 cg", "Milligrams, mgPound (US), lb": "0 lb", "Ounce (US), ozCentigrams, cg": "2,834.95 cg", "Gram, gShort Ton (US), t": "0 tn", "Carat, ctCarat (UK), UK ct": "3,858.09 UK ct", "Grains, grCarat (UK), UK ct": "0.25 UK ct", "Carat (UK), UK ctGrains, gr": "4 gr", "Pound (US), lbCarat, ct": "0.454 kg", "Centigrams, cgPound (US), lb": "0 lb", "Milligrams, mgCarat, ct": "0 kg", "Carat (UK), UK ctShort Ton (US), t": "0 tn", "Micrograms, μgCarat (UK), UK ct": "0 UK ct", "Grains, grLong Ton (UK), t": "0 t", "Stone, stGrains, gr": "97,999.951 gr", "Centigrams, cgOunce (US), oz": "0 oz", "Carat (UK), UK ctMetric Ton, t": "0 t", "Grains, grMicrograms, μg": "64,798.91 µg", "Milligrams, mgGrains, gr": "0.015 gr", "Short Ton (US), tMilligrams, mg": "907,185,000 mg", "Troy Ounces, oz tStone, st": "0.005 st", "Stone, stShort Ton (US), t": "0.007 tn", "Long Ton (UK), tMilligrams, mg": "1,016,050,000 mg", "Gram, gMilligrams, mg": "1,000 mg", "Nanograms, ngMicrograms, μg": "0.001 µg", "Micrograms, μgPound (US), lb": "0 lb", "Kilogram, kgGram, g": "1,000 g", "Carat, ctMicrograms, μg": "1,000,000,000 µg", "Long Ton (UK), tTroy Ounces, oz t": "32,666.763 oz t", "Grains, grOunce (US), oz": "0.002 oz", "Carat (UK), UK ctNanograms, ng": "259,195,640 ng", "Grains, grMetric Ton, t": "0 t", "Kilogram, kgCarat, ct": "1 kg", "Short Ton (US), tCentigrams, cg": "90,718,500 cg", "Metric Ton, tCarat, ct": "1,000 kg", "Grains, grNanograms, ng": "64,798,910 ng", "Stone, stMicrograms, μg": "6,350,290,000 µg", "Troy Ounces, oz tMilligrams, mg": "31,103.48 mg", "Short Ton (US), tOunce (US), oz": "32,000.035 oz", "Ounce (US), ozMetric Ton, t": "0 t", "Centigrams, cgGram, g": "0.01 g", "Troy Ounces, oz tPound (US), lb": "0.069 lb", "Metric Ton, tLong Ton (UK), t": "0.984 t", "Carat (UK), UK ctOunce (US), oz": "0.009 oz", "Centigrams, cgMicrograms, μg": "10,000 µg", "Micrograms, μgKilogram, kg": "0 kg", "Milligrams, mgOunce (US), oz": "0 oz", "Centigrams, cgGrains, gr": "0.154 gr", "Kilogram, kgTroy Ounces, oz t": "32.151 oz t", "Metric Ton, tMilligrams, mg": "1,000,000,000 mg", "Kilogram, kgMetric Ton, t": "0.001 t", "Ounce (US), ozMicrograms, μg": "28,349,500 µg", "Stone, stKilogram, kg": "6.35 kg", "Gram, gCarat, ct": "0.001 kg", "Carat, ctStone, st": "0.157 st", "Nanograms, ngMetric Ton, t": "0 t", "Nanograms, ngGrains, gr": "0 gr", "Carat (UK), UK ctCarat (UK), UK ct": "1 UK ct", "Troy Ounces, oz tMicrograms, μg": "31,103,480 µg", "Ounce (US), ozCarat, ct": "0.028 kg", "Carat, ctShort Ton (US), t": "0.001 tn", "Ounce (US), ozLong Ton (UK), t": "0 t", "Micrograms, μgMetric Ton, t": "0 t", "Pound (US), lbCentigrams, cg": "45,359.2 cg", "Pound (US), lbPound (US), lb": "1 lb", "Carat (UK), UK ctCentigrams, cg": "25.92 cg", "Centigrams, cgMetric Ton, t": "0 t", "Troy Ounces, oz tNanograms, ng": "31,103,480,000 ng", "Short Ton (US), tPound (US), lb": "2,000.002 lb", "Ounce (US), ozMilligrams, mg": "28,349.5 mg", "Gram, gTroy Ounces, oz t": "0.032 oz t", "Ounce (US), ozKilogram, kg": "0.028 kg", "Micrograms, μgTroy Ounces, oz t": "0 oz t", "Carat, ctMetric Ton, t": "0.001 t", "Metric Ton, tGram, g": "1,000,000 g", "Short Ton (US), tCarat (UK), UK ct": "3,500,001.003 UK ct", "Kilogram, kgPound (US), lb": "2.205 lb", "Centigrams, cgMilligrams, mg": "10 mg", "Grains, grGrains, gr": "1 gr", "Gram, gGram, g": "1 g", "Nanograms, ngCarat, ct": "0 kg", "Ounce (US), ozGrains, gr": "437.5 gr", "Kilogram, kgGrains, gr": "15,432.358 gr", "Milligrams, mgCentigrams, cg": "0.1 cg", "Long Ton (UK), tLong Ton (UK), t": "1 t", "Stone, stTroy Ounces, oz t": "204.167 oz t", "Kilogram, kgStone, st": "0.157 st", "Centigrams, cgTroy Ounces, oz t": "0 oz t", "Nanograms, ngMilligrams, mg": "0 mg", "Micrograms, μgGram, g": "0 g", "Carat (UK), UK ctMilligrams, mg": "259.196 mg", "Carat (UK), UK ctPound (US), lb": "0.001 lb", "Ounce (US), ozGram, g": "28.35 g", "Milligrams, mgMicrograms, μg": "1,000 µg", "Metric Ton, tGrains, gr": "15,432,358.353 gr", "Troy Ounces, oz tKilogram, kg": "0.031 kg", "Carat, ctNanograms, ng": "1,000,000,000,000 ng", "Long Ton (UK), tOunce (US), oz": "35,840.138 oz", "Pound (US), lbMicrograms, μg": "453,592,000 µg", "Pound (US), lbLong Ton (UK), t": "0 t", "Short Ton (US), tMetric Ton, t": "0.907 t", "Grains, grKilogram, kg": "0 kg", "Gram, gKilogram, kg": "0.001 kg", "Long Ton (UK), tKilogram, kg": "1,016.05 kg", "Stone, stCarat (UK), UK ct": "24,499.988 UK ct", "Gram, gCentigrams, cg": "100 cg", "Kilogram, kgCentigrams, cg": "100,000 cg", "Troy Ounces, oz tShort Ton (US), t": "0 tn", "Carat (UK), UK ctKilogram, kg": "0 kg", "Pound (US), lbStone, st": "0.071 st", "Grains, grTroy Ounces, oz t": "0.002 oz t", "Carat, ctTroy Ounces, oz t": "32.151 oz t", "Stone, stLong Ton (UK), t": "0.006 t", "Nanograms, ngLong Ton (UK), t": "0 t", "Stone, stCentigrams, cg": "635,029 cg", "Milligrams, mgLong Ton (UK), t": "0 t", "Gram, gNanograms, ng": "1,000,000,000 ng", "Long Ton (UK), tCarat, ct": "1,016.05 kg", "Nanograms, ngGram, g": "0 g", "Grains, grCentigrams, cg": "6.48 cg", "Short Ton (US), tGrains, gr": "14,000,004.012 gr", "Short Ton (US), tShort Ton (US), t": "1 tn", "Troy Ounces, oz tGram, g": "31.103 g", "Centigrams, cgKilogram, kg": "0 kg", "Short Ton (US), tMicrograms, μg": "907,185,000,000 µg", "Centigrams, cgNanograms, ng": "10,000,000 ng", "Nanograms, ngPound (US), lb": "0 lb", "Carat, ctCentigrams, cg": "100,000 cg", "Long Ton (UK), tNanograms, ng": "1,016,050,000,000,000 ng", "Stone, stNanograms, ng": "6,350,290,000,000 ng", "Troy Ounces, oz tCarat, ct": "0.031 kg", "Metric Ton, tCentigrams, cg": "100,000,000 cg", "Short Ton (US), tLong Ton (UK), t": "0.893 t", "Kilogram, kgShort Ton (US), t": "0.001 tn", "Pound (US), lbMilligrams, mg": "453,592 mg", "Troy Ounces, oz tTroy Ounces, oz t": "1 oz t", "Centigrams, cgStone, st": "0 st", "Carat (UK), UK ctLong Ton (UK), t": "0 t", "Kilogram, kgOunce (US), oz": "35.274 oz", "Carat (UK), UK ctStone, st": "0 st", "Milligrams, mgCarat (UK), UK ct": "0.004 UK ct", "Grains, grMilligrams, mg": "64.799 mg", "Short Ton (US), tCarat, ct": "907.185 kg", "Carat (UK), UK ctMicrograms, μg": "259,195.64 µg", "Milligrams, mgStone, st": "0 st", "Troy Ounces, oz tLong Ton (UK), t": "0 t", "Long Ton (UK), tPound (US), lb": "2,240.009 lb", "Ounce (US), ozOunce (US), oz": "1 oz", "Metric Ton, tOunce (US), oz": "35,273.991 oz", "Grains, grGram, g": "0.065 g", "Stone, stMilligrams, mg": "6,350,290 mg", "Carat, ctGram, g": "1,000 g", "Gram, gCarat (UK), UK ct": "3.858 UK ct", "Carat (UK), UK ctTroy Ounces, oz t": "0.008 oz t", "Micrograms, μgMicrograms, μg": "1 µg", "Kilogram, kgCarat (UK), UK ct": "3,858.09 UK ct", "Pound (US), lbOunce (US), oz": "16 oz"]

    
//                    var jointdict : [String : UnitMass] = [:]
//
//                                let keys1 =       ["Carat, ct", "Carat (UK), UK ct", "Centigrams, cg",  "Grains, gr", "Gram, g", "Kilogram, kg", "Long Ton (UK), t", "Metric Ton, t", "Micrograms, μg", "Milligrams, mg", "Nanograms, ng", "Ounce (US), oz", "Pound (US), lb", "Short Ton (US), t", "Stone, st", "Troy Ounces, oz t"]
//
//                                    let keys2 =       ["Carat, ct", "Carat (UK), UK ct", "Centigrams, cg",  "Grains, gr", "Gram, g", "Kilogram, kg", "Long Ton (UK), t", "Metric Ton, t", "Micrograms, μg", "Milligrams, mg", "Nanograms, ng", "Ounce (US), oz", "Pound (US), lb", "Short Ton (US), t", "Stone, st", "Troy Ounces, oz t"]
//
//
//                                                                   init () {
//
//                                                                        for i in 1..<weightarray.count {
//                                                                            jointdict[weightarray[i]] = array2[i]
//                                                                        }
//
//
//                                                                        let formatter = MeasurementFormatter()
//                                                                        formatter.unitOptions = .providedUnit
//                                                                        for itema in keys1 {
//                                                                            for itemb in keys2 {
//                                                                                let itemc = itema + itemb
//                                                                                let val1 = Measurement(value: 1.0 , unit: jointdict[itema] ?? UnitMass.kilograms)
//                                                                                let val2 = val1.converted(to: jointdict[itemb] ?? UnitMass.kilograms)
//                                                                                let storeval =  formatter.string(from: val2)
//                                                                                weightdict[itemc] = storeval
//                                                                            }
//                                                                        }
//
//                                                                        print ("Final Dict ", weightdict)
//                                                                    }
        
    
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
                                    Text(self.DisplayUnit1 + "  "  + env.displayconvertweight)
                                    }
                                .sheet(isPresented: $ShowUnit1) {
                                    ModalWeight(isPresented: self.$ShowUnit1, isPresented1: self.$ShowUnit1, isPresented2: self.$ShowUnit2, currentUnit1: self.$DisplayUnit1, currentUnit2: self.$DisplayUnit2)
                                }
                                    .font(.system(size: 40))
                                    .frame(width: (UIScreen.main.bounds.width - 2 * 12), height: UIScreen.main.bounds.height / 10)
                                    .foregroundColor(.white)
                                    .background(Color.gray)
                                    .cornerRadius(UIScreen.main.bounds.width - 2 * 12)
                        
                                Button(action: {
                                    self.ShowUnit2.toggle()
                                }) {
                                    Text(self.DisplayUnit2 + "  " + calc(env.displayconvertweight, self.DisplayUnit1, self.DisplayUnit2))
                                    }
                                    .sheet(isPresented: $ShowUnit2) {
                                        ModalWeight(isPresented: self.$ShowUnit1, isPresented1: self.$ShowUnit1, isPresented2: self.$ShowUnit2, currentUnit1: self.$DisplayUnit1, currentUnit2: self.$DisplayUnit2)
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
           let storedval = (weightdict[stringval, default: "1"])
           let operand1 = (unit1val as NSString).doubleValue
           let operand2 = (storedval as NSString).doubleValue
           return String(operand1 * operand2)
           
       }
    
    let weightarray =
        ["Carat, ct", "Carat (UK), UK ct", "Centigrams, cg",  "Grains, gr", "Gram, g", "Kilogram, kg", "Long Ton (UK), t", "Metric Ton, t", "Micrograms, μg", "Milligrams, mg", "Nanograms, ng", "Ounce (US), oz", "Pound (US), lb", "Short Ton (US), t", "Stone, st", "Troy Ounces, oz t"]
    
    let array2 = [UnitMass.carats, UnitMass.caratsUK, UnitMass.centigrams, UnitMass.grains, UnitMass.grams, UnitMass.kilograms, UnitMass.longTon, UnitMass.metricTons, UnitMass.micrograms, UnitMass.milligrams, UnitMass.nanograms, UnitMass.ounces, UnitMass.pounds, UnitMass.shortTons, UnitMass.stones, UnitMass.ouncesTroy]
    
}

struct Weight_Previews: PreviewProvider {
    static var previews: some View {
        Weight()
        .environmentObject(ViewRouter())
        .environmentObject(GlobalEnvironment())
    }
}



extension UnitMass {
 static let caratsUK = UnitMass(symbol: "UK ct", converter: UnitConverterLinear(coefficient: 0.00025919564))

 static let grains = UnitMass(symbol: "gr", converter: UnitConverterLinear(coefficient: 0.00006479891))
 static let longTon = UnitMass(symbol: "t", converter: UnitConverterLinear(coefficient: 1016.05))

}
