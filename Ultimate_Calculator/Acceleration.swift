//
//  Acceleration.swift
//  Ultimate_Calculator
//
//  Created by Hritik Raj on 8/14/20.
//  Copyright © 2020 Hritik Raj. All rights reserved.
//

import Foundation
import SwiftUI

struct Acceleration: View {
//    @State var ShowUnit1 = false
//        @State var ShowUnit2 = false
//        @EnvironmentObject var viewRouter: ViewRouter
//        @EnvironmentObject var env: GlobalEnvironment
//
//        let buttons_normal: [[CalculatorButton]] = [
//            [.ac, .plus_minus, .percent, .DEL],
//            [.seven, .eight, .nine, .divide],
//            [.four, .five, .six, .multiply],
//            [.one, .two, .three, .minus],
//            [.zero, .decimal, .equals, .plus]
//        ]
//        var body: some View {
//            ZStack (alignment: .bottom){ Color.black
//                .edgesIgnoringSafeArea(.all)
//
//                VStack (spacing: 6){
//
//                    Text(viewRouter.currentPage)
//                    .font(.system(size: 40))
//                    .foregroundColor(.white)
//                    .padding(.all)
//                                Button(action: {
//                                    self.ShowUnit1.toggle()
//                                }) {
//                                    Text("Unit 1" + "   " + env.displayconvertacc)
//                                    }
//                                    .sheet(isPresented: $ShowUnit1) {
//                                    ModalAcceleration(isPresented: self.$ShowUnit1)
//                                }
//                                    .font(.system(size: 40))
//                                    .frame(width: (UIScreen.main.bounds.width - 2 * 12), height: UIScreen.main.bounds.height / 10)
//                                    .foregroundColor(.white)
//                                    .background(Color.gray)
//                                    .cornerRadius(UIScreen.main.bounds.width - 2 * 12)
//
//                                Button(action: {
//                                    self.ShowUnit2.toggle()
//                                }) {
//                                    Text("Unit 2")
//                                    }
//                                    .sheet(isPresented: $ShowUnit2) {
//                                    ModalAcceleration(isPresented: self.$ShowUnit2)
//                                }
//                                    .font(.system(size: 40))
//                                    .frame(width: (UIScreen.main.bounds.width - 2 * 12), height: UIScreen.main.bounds.height / 10)
//                                    .foregroundColor(.white)
//                                    .background(Color.gray)
//                                    .cornerRadius(UIScreen.main.bounds.width - 2 * 12)
//                    Spacer()
    
    
    
        @State var ShowUnit1 = false
        @State var ShowUnit2 = false
        @State var DisplayUnit1 = "Angle"
        @State var DisplayUnit2 = "Angle"
        @EnvironmentObject var viewRouter: ViewRouter
        @EnvironmentObject var env: GlobalEnvironment
        
    var accelerationdict : [String : String] = ["Earth Gravity, gEarth Gravity, g": "1 G", "Mile/Hour Minute, mph/minDecimeter/Second², dm/s²": "0.075 dm/s²", "Foot/Second², fps²Mile/Hour Second, mph/s": "0.682 mph/s", "Inch/Second², ips²Mile/Second², mps²": "0 mps²", "Meter/Second², m/s²Inch/Second², ips²": "40 ips²", "Earth Gravity, gKilometer/Second², km/s²": "0.01 km/s²", "Galileo, GalGalileo, Gal": "1 Gal", "Meter/Second², m/s²Mile/Hour Minute, mph/min": "133.333 mph/min", "Mile/Hour Second, mph/sDecimeter/Second², dm/s²": "4.47 dm/s²", "Mile/Second², mps²Yard/Second², yd/s²": "1,760.77 yd/s²", "Earth Gravity, gMile/Hour Second, mph/s": "21.946 mph/s", "Knot/Second, kn/sEarth Gravity, g": "0.052 G", "Foot/Second², fps²Inch/Second², ips²": "12.2 ips²", "Decimeter/Second², dm/s²Foot/Second², fps²": "0.328 fps²", "Mile/Second², mps²Kilometer/Hour², km/h²": "20,900,571.429 km/h²", "Yard/Second², yd/s²Mile/Hour Second, mph/s": "2.045 mph/s", "Microgal, μgalKnot/Second, kn/s": "0 kn/s", "Meter/Second², m/s²Knot/Second, kn/s": "1.946 kn/s", "Meter/Second², m/s²Microgal, μgal": "100,000,000 μgal", "Mile/Hour Second, mph/sInch/Second², ips²": "17.88 ips²", "Decigal, dGalKilometer/Hour², km/h²": "12.987 km/h²", "Knot/Second, kn/sMile/Hour Minute, mph/min": "68.533 mph/min", "Kilometer/Hour², km/h²Microgal, μgal": "7,700 μgal", "Earth Gravity, gInch/Second², ips²": "392.4 ips²", "Kilometer/Hour², km/h²Decimeter/Second², dm/s²": "0.001 dm/s²", "Mile/Hour Minute, mph/minMilligal, mGal": "750 mGal", "Knot/Second, kn/sKnot/Second, kn/s": "1 kn/s", "Decimeter/Second², dm/s²Earth Gravity, g": "0.01 G", "Inch/Second², ips²Mile/Hour Second, mph/s": "0.056 mph/s", "Knot/Second, kn/sFoot/Second², fps²": "1.685 fps²", "Kilometer/Second², km/s²Mile/Hour Minute, mph/min": "133,333.333 mph/min", "Mile/Second², mps²Microgal, μgal": "160,934,400,000 μgal", "Decimeter/Second², dm/s²Galileo, Gal": "10 Gal", "Decimeter/Second², dm/s²Knot/Second, kn/s": "0.195 kn/s", "Centigal, cGalKilometer/Second², km/s²": "0 km/s²", "Galileo, GalMicrogal, μgal": "1,000,000 μgal", "Decigal, dGalMile/Hour Second, mph/s": "0.002 mph/s", "Decigal, dGalDecimeter/Second², dm/s²": "0.01 dm/s²", "Kilometer/Second², km/s²Galileo, Gal": "100,000 Gal", "Mile/Hour Second, mph/sMilligal, mGal": "44,700 mGal", "Milligal, mGalKilometer/Second², km/s²": "0 km/s²", "Decimeter/Second², dm/s²Kilometer/Hour², km/h²": "1,298.701 km/h²", "Kilometer/Second², km/s²Knot/Second, kn/s": "1,945.525 kn/s", "Centigal, cGalMile/Second², mps²": "0 mps²", "Microgal, μgalCentigal, cGal": "0 cGal", "Foot/Second², fps²Kilometer/Hour², km/h²": "3,961.039 km/h²", "Mile/Hour Second, mph/sYard/Second², yd/s²": "0.489 yd/s²", "Yard/Second², yd/s²Centigal, cGal": "9,140 cGal", "Mile/Hour Second, mph/sKilometer/Hour², km/h²": "5,805.195 km/h²", "Earth Gravity, gMilligal, mGal": "981,000 mGal", "Microgal, μgalDecimeter/Second², dm/s²": "0 dm/s²", "Foot/Second², fps²Decimeter/Second², dm/s²": "3.05 dm/s²", "Decigal, dGalInch/Second², ips²": "0.04 ips²", "Knot/Second, kn/sMeter/Second², m/s²": "0.514 m/s²", "Microgal, μgalFoot/Second², fps²": "0 fps²", "Decimeter/Second², dm/s²Microgal, μgal": "10,000,000 μgal", "Kilometer/Second², km/s²Milligal, mGal": "100,000,000 mGal", "Earth Gravity, gFoot/Second², fps²": "32.164 fps²", "Milligal, mGalGalileo, Gal": "0.001 Gal", "Milligal, mGalYard/Second², yd/s²": "0 yd/s²", "Kilometer/Hour², km/h²Mile/Hour Second, mph/s": "0 mph/s", "Meter/Second², m/s²Foot/Second², fps²": "3.279 fps²", "Milligal, mGalMicrogal, μgal": "1,000 μgal", "Foot/Second², fps²Decigal, dGal": "305 dGal", "Meter/Second², m/s²Milligal, mGal": "100,000 mGal", "Decimeter/Second², dm/s²Decigal, dGal": "100 dGal", "Inch/Second², ips²Kilometer/Second², km/s²": "0 km/s²", "Centigal, cGalMile/Hour Second, mph/s": "0 mph/s", "Centigal, cGalMeter/Second², m/s²": "0 m/s²", "Kilometer/Second², km/s²Centigal, cGal": "10,000,000 cGal", "Meter/Second², m/s²Meter/Second², m/s²": "1 m/s²", "Mile/Hour Second, mph/sMile/Hour Second, mph/s": "1 mph/s", "Mile/Second², mps²Earth Gravity, g": "164.051 G", "Earth Gravity, gMicrogal, μgal": "981,000,000 μgal", "Meter/Second², m/s²Earth Gravity, g": "0.102 G", "Yard/Second², yd/s²Microgal, μgal": "91,400,000 μgal", "Decigal, dGalDecigal, dGal": "1 dGal", "Milligal, mGalKnot/Second, kn/s": "0 kn/s", "Foot/Second², fps²Milligal, mGal": "30,500 mGal", "Kilometer/Second², km/s²Kilometer/Second², km/s²": "1 km/s²", "Milligal, mGalDecigal, dGal": "0.01 dGal", "Inch/Second², ips²Decigal, dGal": "25 dGal", "Galileo, GalCentigal, cGal": "100 cGal", "Decigal, dGalMile/Second², mps²": "0 mps²", "Foot/Second², fps²Foot/Second², fps²": "1 fps²", "Earth Gravity, gYard/Second², yd/s²": "10.733 yd/s²", "Kilometer/Second², km/s²Foot/Second², fps²": "3,278.689 fps²", "Earth Gravity, gGalileo, Gal": "981 Gal", "Meter/Second², m/s²Decigal, dGal": "1,000 dGal", "Milligal, mGalDecimeter/Second², dm/s²": "0 dm/s²", "Kilometer/Hour², km/h²Centigal, cGal": "0.77 cGal", "Earth Gravity, gDecimeter/Second², dm/s²": "98.1 dm/s²", "Milligal, mGalFoot/Second², fps²": "0 fps²", "Microgal, μgalMile/Second², mps²": "0 mps²", "Milligal, mGalMile/Hour Minute, mph/min": "0.001 mph/min", "Foot/Second², fps²Kilometer/Second², km/s²": "0 km/s²", "Foot/Second², fps²Knot/Second, kn/s": "0.593 kn/s", "Milligal, mGalMilligal, mGal": "1 mGal", "Yard/Second², yd/s²Milligal, mGal": "91,400 mGal", "Inch/Second², ips²Foot/Second², fps²": "0.082 fps²", "Yard/Second², yd/s²Yard/Second², yd/s²": "1 yd/s²", "Inch/Second², ips²Knot/Second, kn/s": "0.049 kn/s", "Meter/Second², m/s²Centigal, cGal": "10,000 cGal", "Mile/Hour Minute, mph/minKilometer/Second², km/s²": "0 km/s²", "Mile/Second², mps²Inch/Second², ips²": "64,373.76 ips²", "Decimeter/Second², dm/s²Mile/Hour Minute, mph/min": "13.333 mph/min", "Centigal, cGalEarth Gravity, g": "0 G", "Foot/Second², fps²Galileo, Gal": "30.5 Gal", "Centigal, cGalGalileo, Gal": "0.01 Gal", "Knot/Second, kn/sKilometer/Hour², km/h²": "6,675.325 km/h²", "Knot/Second, kn/sMile/Second², mps²": "0 mps²", "Mile/Second², mps²Galileo, Gal": "160,934.4 Gal", "Decimeter/Second², dm/s²Mile/Second², mps²": "0 mps²", "Decimeter/Second², dm/s²Yard/Second², yd/s²": "0.109 yd/s²", "Galileo, GalFoot/Second², fps²": "0.033 fps²", "Kilometer/Hour², km/h²Mile/Hour Minute, mph/min": "0.01 mph/min", "Mile/Hour Minute, mph/minDecigal, dGal": "7.5 dGal", "Yard/Second², yd/s²Meter/Second², m/s²": "0.914 m/s²", "Centigal, cGalDecigal, dGal": "0.1 dGal", "Mile/Hour Minute, mph/minEarth Gravity, g": "0.001 G", "Mile/Hour Second, mph/sMeter/Second², m/s²": "0.447 m/s²", "Centigal, cGalMilligal, mGal": "10 mGal", "Inch/Second², ips²Inch/Second², ips²": "1 ips²", "Centigal, cGalDecimeter/Second², dm/s²": "0.001 dm/s²", "Inch/Second², ips²Centigal, cGal": "250 cGal", "Galileo, GalEarth Gravity, g": "0.001 G", "Mile/Hour Second, mph/sKnot/Second, kn/s": "0.87 kn/s", "Kilometer/Second², km/s²Mile/Second², mps²": "0.621 mps²", "Decimeter/Second², dm/s²Milligal, mGal": "10,000 mGal", "Mile/Hour Second, mph/sKilometer/Second², km/s²": "0 km/s²", "Knot/Second, kn/sGalileo, Gal": "51.4 Gal", "Mile/Hour Second, mph/sGalileo, Gal": "44.7 Gal", "Kilometer/Second², km/s²Microgal, μgal": "100,000,000,000 μgal", "Centigal, cGalYard/Second², yd/s²": "0 yd/s²", "Mile/Hour Minute, mph/minYard/Second², yd/s²": "0.008 yd/s²", "Kilometer/Hour², km/h²Kilometer/Hour², km/h²": "1 km/h²", "Decigal, dGalMeter/Second², m/s²": "0.001 m/s²", "Yard/Second², yd/s²Earth Gravity, g": "0.093 G", "Decimeter/Second², dm/s²Kilometer/Second², km/s²": "0 km/s²", "Yard/Second², yd/s²Foot/Second², fps²": "2.997 fps²", "Centigal, cGalKnot/Second, kn/s": "0 kn/s", "Mile/Second², mps²Foot/Second², fps²": "5,276.538 fps²", "Inch/Second², ips²Galileo, Gal": "2.5 Gal", "Inch/Second², ips²Milligal, mGal": "2,500 mGal", "Yard/Second², yd/s²Mile/Hour Minute, mph/min": "121.867 mph/min", "Yard/Second², yd/s²Inch/Second², ips²": "36.56 ips²", "Microgal, μgalInch/Second², ips²": "0 ips²", "Earth Gravity, gMile/Hour Minute, mph/min": "1,308 mph/min", "Mile/Hour Minute, mph/minGalileo, Gal": "0.75 Gal", "Meter/Second², m/s²Decimeter/Second², dm/s²": "10 dm/s²", "Decigal, dGalKilometer/Second², km/s²": "0 km/s²", "Kilometer/Hour², km/h²Milligal, mGal": "7.7 mGal", "Knot/Second, kn/sKilometer/Second², km/s²": "0.001 km/s²", "Galileo, GalMile/Hour Second, mph/s": "0.022 mph/s", "Mile/Hour Second, mph/sMicrogal, μgal": "44,700,000 μgal", "Mile/Hour Second, mph/sMile/Second², mps²": "0 mps²", "Kilometer/Hour², km/h²Galileo, Gal": "0.008 Gal", "Kilometer/Second², km/s²Meter/Second², m/s²": "1,000 m/s²", "Galileo, GalInch/Second², ips²": "0.4 ips²", "Knot/Second, kn/sDecimeter/Second², dm/s²": "5.14 dm/s²", "Mile/Second², mps²Centigal, cGal": "16,093,440 cGal", "Kilometer/Second², km/s²Inch/Second², ips²": "40,000 ips²", "Decigal, dGalKnot/Second, kn/s": "0.002 kn/s", "Knot/Second, kn/sMicrogal, μgal": "51,400,000 μgal", "Galileo, GalYard/Second², yd/s²": "0.011 yd/s²", "Galileo, GalMile/Second², mps²": "0 mps²", "Mile/Hour Minute, mph/minKnot/Second, kn/s": "0.015 kn/s", "Yard/Second², yd/s²Mile/Second², mps²": "0.001 mps²", "Decimeter/Second², dm/s²Inch/Second², ips²": "4 ips²", "Earth Gravity, gCentigal, cGal": "98,100 cGal", "Decigal, dGalCentigal, cGal": "10 cGal", "Galileo, GalKilometer/Second², km/s²": "0 km/s²", "Kilometer/Second², km/s²Earth Gravity, g": "101.937 G", "Meter/Second², m/s²Galileo, Gal": "100 Gal", "Meter/Second², m/s²Mile/Second², mps²": "0.001 mps²", "Earth Gravity, gDecigal, dGal": "9,810 dGal", "Mile/Second², mps²Decigal, dGal": "1,609,344 dGal", "Kilometer/Hour², km/h²Inch/Second², ips²": "0.003 ips²", "Yard/Second², yd/s²Decigal, dGal": "914 dGal", "Yard/Second², yd/s²Kilometer/Hour², km/h²": "11,870.13 km/h²", "Foot/Second², fps²Yard/Second², yd/s²": "0.334 yd/s²", "Mile/Hour Second, mph/sMile/Hour Minute, mph/min": "59.6 mph/min", "Mile/Second², mps²Meter/Second², m/s²": "1,609.344 m/s²", "Inch/Second², ips²Microgal, μgal": "2,500,000 μgal", "Milligal, mGalMile/Second², mps²": "0 mps²", "Earth Gravity, gKnot/Second, kn/s": "19.086 kn/s", "Inch/Second², ips²Yard/Second², yd/s²": "0.027 yd/s²", "Microgal, μgalKilometer/Hour², km/h²": "0 km/h²", "Microgal, μgalEarth Gravity, g": "0 G", "Kilometer/Hour², km/h²Yard/Second², yd/s²": "0 yd/s²", "Microgal, μgalMeter/Second², m/s²": "0 m/s²", "Kilometer/Hour², km/h²Earth Gravity, g": "0 G", "Mile/Second², mps²Mile/Hour Second, mph/s": "3,600.322 mph/s", "Kilometer/Hour², km/h²Decigal, dGal": "0.077 dGal", "Meter/Second², m/s²Kilometer/Second², km/s²": "0.001 km/s²", "Microgal, μgalGalileo, Gal": "0 Gal", "Knot/Second, kn/sInch/Second², ips²": "20.56 ips²", "Decigal, dGalGalileo, Gal": "0.1 Gal", "Decigal, dGalMilligal, mGal": "100 mGal", "Galileo, GalDecimeter/Second², dm/s²": "0.1 dm/s²", "Centigal, cGalMile/Hour Minute, mph/min": "0.013 mph/min", "Kilometer/Hour², km/h²Meter/Second², m/s²": "0 m/s²", "Decigal, dGalYard/Second², yd/s²": "0.001 yd/s²", "Decimeter/Second², dm/s²Meter/Second², m/s²": "0.1 m/s²", "Mile/Hour Minute, mph/minMile/Hour Minute, mph/min": "1 mph/min", "Inch/Second², ips²Kilometer/Hour², km/h²": "324.675 km/h²", "Inch/Second², ips²Mile/Hour Minute, mph/min": "3.333 mph/min", "Milligal, mGalMeter/Second², m/s²": "0 m/s²", "Milligal, mGalMile/Hour Second, mph/s": "0 mph/s", "Decimeter/Second², dm/s²Decimeter/Second², dm/s²": "1 dm/s²", "Mile/Hour Minute, mph/minMeter/Second², m/s²": "0.008 m/s²", "Centigal, cGalFoot/Second², fps²": "0 fps²", "Galileo, GalDecigal, dGal": "10 dGal", "Kilometer/Second², km/s²Mile/Hour Second, mph/s": "2,237.136 mph/s", "Knot/Second, kn/sDecigal, dGal": "514 dGal", "Galileo, GalMilligal, mGal": "1,000 mGal", "Mile/Hour Minute, mph/minInch/Second², ips²": "0.3 ips²", "Knot/Second, kn/sMile/Hour Second, mph/s": "1.15 mph/s", "Galileo, GalMile/Hour Minute, mph/min": "1.333 mph/min", "Knot/Second, kn/sMilligal, mGal": "51,400 mGal", "Foot/Second², fps²Meter/Second², m/s²": "0.305 m/s²", "Meter/Second², m/s²Kilometer/Hour², km/h²": "12,987.013 km/h²", "Mile/Hour Minute, mph/minKilometer/Hour², km/h²": "97.403 km/h²", "Mile/Second², mps²Mile/Second², mps²": "1 mps²", "Milligal, mGalKilometer/Hour², km/h²": "0.13 km/h²", "Kilometer/Second², km/s²Decimeter/Second², dm/s²": "10,000 dm/s²", "Milligal, mGalEarth Gravity, g": "0 G", "Earth Gravity, gMile/Second², mps²": "0.006 mps²", "Microgal, μgalKilometer/Second², km/s²": "0 km/s²", "Mile/Hour Minute, mph/minMile/Hour Second, mph/s": "0.017 mph/s", "Meter/Second², m/s²Yard/Second², yd/s²": "1.094 yd/s²", "Kilometer/Second², km/s²Decigal, dGal": "1,000,000 dGal", "Decigal, dGalFoot/Second², fps²": "0.003 fps²", "Yard/Second², yd/s²Knot/Second, kn/s": "1.778 kn/s", "Mile/Hour Second, mph/sFoot/Second², fps²": "1.466 fps²", "Decigal, dGalMile/Hour Minute, mph/min": "0.133 mph/min", "Foot/Second², fps²Centigal, cGal": "3,050 cGal", "Kilometer/Second², km/s²Kilometer/Hour², km/h²": "12,987,012.987 km/h²", "Kilometer/Hour², km/h²Knot/Second, kn/s": "0 kn/s", "Earth Gravity, gKilometer/Hour², km/h²": "127,402.597 km/h²", "Foot/Second², fps²Earth Gravity, g": "0.031 G", "Mile/Hour Minute, mph/minCentigal, cGal": "75 cGal", "Mile/Second², mps²Decimeter/Second², dm/s²": "16,093.44 dm/s²", "Yard/Second², yd/s²Kilometer/Second², km/s²": "0.001 km/s²", "Meter/Second², m/s²Mile/Hour Second, mph/s": "2.237 mph/s", "Centigal, cGalInch/Second², ips²": "0.004 ips²", "Galileo, GalMeter/Second², m/s²": "0.01 m/s²", "Centigal, cGalKilometer/Hour², km/h²": "1.299 km/h²", "Mile/Hour Second, mph/sEarth Gravity, g": "0.046 G", "Mile/Second², mps²Kilometer/Second², km/s²": "1.609 km/s²", "Microgal, μgalMile/Hour Minute, mph/min": "0 mph/min", "Inch/Second², ips²Decimeter/Second², dm/s²": "0.25 dm/s²", "Decimeter/Second², dm/s²Mile/Hour Second, mph/s": "0.224 mph/s", "Mile/Second², mps²Knot/Second, kn/s": "3,131.019 kn/s", "Mile/Hour Minute, mph/minFoot/Second², fps²": "0.025 fps²", "Mile/Second², mps²Mile/Hour Minute, mph/min": "214,579.2 mph/min", "Foot/Second², fps²Mile/Hour Minute, mph/min": "40.667 mph/min", "Decimeter/Second², dm/s²Centigal, cGal": "1,000 cGal", "Mile/Hour Minute, mph/minMile/Second², mps²": "0 mps²", "Galileo, GalKnot/Second, kn/s": "0.019 kn/s", "Kilometer/Second², km/s²Yard/Second², yd/s²": "1,094.092 yd/s²", "Decigal, dGalMicrogal, μgal": "100,000 μgal", "Knot/Second, kn/sYard/Second², yd/s²": "0.562 yd/s²", "Mile/Hour Second, mph/sDecigal, dGal": "447 dGal", "Kilometer/Hour², km/h²Kilometer/Second², km/s²": "0 km/s²", "Inch/Second², ips²Meter/Second², m/s²": "0.025 m/s²", "Yard/Second², yd/s²Galileo, Gal": "91.4 Gal", "Mile/Hour Minute, mph/minMicrogal, μgal": "750,000 μgal", "Earth Gravity, gMeter/Second², m/s²": "9.81 m/s²", "Foot/Second², fps²Mile/Second², mps²": "0 mps²", "Microgal, μgalMile/Hour Second, mph/s": "0 mph/s", "Centigal, cGalMicrogal, μgal": "10,000 μgal", "Centigal, cGalCentigal, cGal": "1 cGal", "Microgal, μgalDecigal, dGal": "0 dGal", "Microgal, μgalMilligal, mGal": "0.001 mGal", "Galileo, GalKilometer/Hour², km/h²": "129.87 km/h²", "Milligal, mGalInch/Second², ips²": "0 ips²", "Kilometer/Hour², km/h²Mile/Second², mps²": "0 mps²", "Kilometer/Hour², km/h²Foot/Second², fps²": "0 fps²", "Inch/Second², ips²Earth Gravity, g": "0.003 G", "Mile/Second², mps²Milligal, mGal": "160,934,400 mGal", "Knot/Second, kn/sCentigal, cGal": "5,140 cGal", "Yard/Second², yd/s²Decimeter/Second², dm/s²": "9.14 dm/s²", "Microgal, μgalMicrogal, μgal": "1 μgal", "Mile/Hour Second, mph/sCentigal, cGal": "4,470 cGal", "Decigal, dGalEarth Gravity, g": "0 G", "Milligal, mGalCentigal, cGal": "0.1 cGal", "Microgal, μgalYard/Second², yd/s²": "0 yd/s²", "Foot/Second², fps²Microgal, μgal": "30,500,000 μgal"]

    
    
//        let keys1 = ["Centigal, cGal", "Decigal, dGal", "Decimeter/Second², dm/s²", "Earth Gravity, g", "Foot/Second², fps²", "Galileo, Gal", "Inch/Second², ips²", "Kilometer/Hour², km/h²", "Kilometer/Second², km/s²", "Knot/Second, kn/s", "Microgal, μgal", "Meter/Second², m/s²", "Mile/Hour Minute, mph/min", "Mile/Hour Second, mph/s", "Mile/Second², mps²", "Milligal, mGal", "Yard/Second², yd/s²" ]
//
//        let keys2 = ["Centigal, cGal", "Decigal, dGal", "Decimeter/Second², dm/s²", "Earth Gravity, g", "Foot/Second², fps²", "Galileo, Gal", "Inch/Second², ips²", "Kilometer/Hour², km/h²", "Kilometer/Second², km/s²", "Knot/Second, kn/s", "Microgal, μgal", "Meter/Second², m/s²", "Mile/Hour Minute, mph/min", "Mile/Hour Second, mph/s", "Mile/Second², mps²", "Milligal, mGal", "Yard/Second², yd/s²" ]
//
//        init () {
//
//
//            let formatter = MeasurementFormatter()
//            formatter.unitOptions = .providedUnit
//            for itema in keys1 {
//                for itemb in keys2 {
//                    let itemc = itema + itemb
//                    let val1 = Measurement(value: 1.0 , unit: type(itema))
//                    let val2 = val1.converted(to: type(itemb))
//                    let storeval =  formatter.string(from: val2)
//                    accelerationdict[itemc] = storeval
//                }
//            }
//
//            print ("Final Dict :", accelerationdict)
//        }
        
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
                                    Text(self.DisplayUnit1 + "  "  + env.displayconvertacc)
                                    }
                                .sheet(isPresented: $ShowUnit1) {
                                    ModalAcceleration(isPresented: self.$ShowUnit1, isPresented1: self.$ShowUnit1, isPresented2: self.$ShowUnit2, currentUnit1: self.$DisplayUnit1, currentUnit2: self.$DisplayUnit2)
                                }
                                    .font(.system(size: 40))
                                    .frame(width: (UIScreen.main.bounds.width - 2 * 12), height: UIScreen.main.bounds.height / 10)
                                    .foregroundColor(.white)
                                    .background(Color.gray)
//                                    .cornerRadius(UIScreen.main.bounds.width - 2 * 12)
                        
                                Button(action: {
                                    self.ShowUnit2.toggle()
                                }) {
                                    Text(self.DisplayUnit2 + "  " + calc(env.displayconvertacc , self.DisplayUnit1, self.DisplayUnit2))
                                    }
                                    .sheet(isPresented: $ShowUnit2) {
                                        ModalAcceleration(isPresented: self.$ShowUnit1, isPresented1: self.$ShowUnit1, isPresented2: self.$ShowUnit2, currentUnit1: self.$DisplayUnit1, currentUnit2: self.$DisplayUnit2)
                                }
                                    .font(.system(size: 40))
                                    .frame(width: (UIScreen.main.bounds.width - 2 * 12), height: UIScreen.main.bounds.height / 10)
                                    .foregroundColor(.white)
                                    .background(Color.gray)
//                                    .cornerRadius(UIScreen.main.bounds.width - 2 * 12)
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
    
    
//    func mathfunctions(_ input: Double, _ type1: String, _ type2: String) -> String {
//        let formatter = MeasurementFormatter()
//        if type1 == "mphsq" && type2 == "kmphsq" {
//            let speed = Measurement<UnitAcceleration>(value: input, unit: .)
//               return formatter.string(from: speed.converted(to: .kilometersPerHour))
//        }
//
//        return "0"
//
//
//    }
    
//    func string(from: Unit) -> String {
//
//    }
    
//                ["Centigal, cGal", "Decigal, dGal", "Decimeter/Second², dm/s²", "Earth Gravity, g", "Foot/Second², fps²", "Galileo, Gal", "Inch/Second², ips²", "Kilometer/Hour², km/h²", "Kilometer/Second², km/s²", "Knot/Second, kn/s", "Microgal, μgal", "Meter/Second², m/s²", "Mile/Hour Minute, mph/min", "Mile/Hour Second, mph/s", "Mile/Second², mps²", "Milligal, mGal", "Yard/Second², yd/s²" ]
    
    
//    private func type(_ inputvalunit1: String, _ inputUnit1: String, _ inputUnit2: String) -> String {
//        let formatter = MeasurementFormatter()
//        formatter.unitOptions = .providedUnit
//        let inputval = Double(inputvalunit1)
//
//        if inputUnit1 == "Centigal, cGal" {
//            switch inputUnit2 {
//            case "Decigal, dGal":
//                let centigal = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.cGal)
//                let retval = centigal.converted(to: UnitAcceleration.dGal)
//                return formatter.string(from: retval)
//
//            case "Decimeter/Second², dm/s²":
//                let centigal = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.cGal)
//                let retval = centigal.converted(to: UnitAcceleration.decimeterpers2)
//                return formatter.string(from: retval)
//
//            case "Earth Gravity, g":
//                let centigal = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.cGal)
//                let retval = centigal.converted(to: UnitAcceleration.gravity)
//                return formatter.string(from: retval)
//
//            case "Foot/Second², fps²":
//                let centigal = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.cGal)
//                let retval = centigal.converted(to: UnitAcceleration.fps2)
//                return formatter.string(from: retval)
//
//            case "Galileo, Gal":
//                let centigal = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.cGal)
//                let retval = centigal.converted(to: UnitAcceleration.Gal)
//                return formatter.string(from: retval)
//
//            case "Inch/Second², ips²":
//                let centigal = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.cGal)
//                let retval = centigal.converted(to: UnitAcceleration.ips2)
//                return formatter.string(from: retval)
//
//            case "Kilometer/Hour², km/h²":
//                let centigal = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.cGal)
//                let retval = centigal.converted(to: UnitAcceleration.kmh2)
//                return formatter.string(from: retval)
//
//            case "Kilometer/Second², km/s²":
//                let centigal = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.cGal)
//                let retval = centigal.converted(to: UnitAcceleration.kms2)
//                return formatter.string(from: retval)
//
//            case "Knot/Second, kn/s":
//                let centigal = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.cGal)
//                let retval = centigal.converted(to: UnitAcceleration.kns2)
//                return formatter.string(from: retval)
//
//            case "Microgal, μgal":
//                let centigal = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.cGal)
//                let retval = centigal.converted(to: UnitAcceleration.μGal)
//                return formatter.string(from: retval)
//
//            case "Meter/Second², m/s²":
//                let centigal = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.cGal)
//                let retval = centigal.converted(to: UnitAcceleration.metersPerSecondSquared)
//                return formatter.string(from: retval)
//
//            case "Mile/Hour Minute, mph/min":
//                let centigal = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.cGal)
//                let retval = centigal.converted(to: UnitAcceleration.mphmin)
//                return formatter.string(from: retval)
//
//            case "Mile/Hour Second, mph/s":
//                let centigal = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.cGal)
//                let retval = centigal.converted(to: UnitAcceleration.mphsec)
//                return formatter.string(from: retval)
//
//            case "Mile/Second², mps²":
//                let centigal = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.cGal)
//                let retval = centigal.converted(to: UnitAcceleration.mps2)
//                return formatter.string(from: retval)
//
//            case "Milligal, mGal":
//                let centigal = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.cGal)
//                let retval = centigal.converted(to: UnitAcceleration.mGal)
//                return formatter.string(from: retval)
//
//
//            default:
//
//                let centigal = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.cGal)
//                let retval = centigal.converted(to: UnitAcceleration.yds2)
//                return formatter.string(from: retval)
//            }
//        }
//
//        else if inputUnit1 == "Decigal, dGal" {
//            switch inputUnit2 {
//            case "Centigal, cGal":
//                let decigal = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.dGal)
//                let retval = decigal.converted(to: UnitAcceleration.dGal)
//                return formatter.string(from: retval)
//
//            case "Decimeter/Second², dm/s²":
//                let decigal = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.dGal)
//                let retval = decigal.converted(to: UnitAcceleration.decimeterpers2)
//                return formatter.string(from: retval)
//
//            case "Earth Gravity, g":
//                let decigal = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.dGal)
//                let retval = decigal.converted(to: UnitAcceleration.gravity)
//                return formatter.string(from: retval)
//
//            case "Foot/Second², fps²":
//                let decigal = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.dGal)
//                let retval = decigal.converted(to: UnitAcceleration.fps2)
//                return formatter.string(from: retval)
//
//            case "Galileo, Gal":
//                let decigal = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.dGal)
//                let retval = decigal.converted(to: UnitAcceleration.Gal)
//                return formatter.string(from: retval)
//
//            case "Inch/Second², ips²":
//                let decigal = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.dGal)
//                let retval = decigal.converted(to: UnitAcceleration.ips2)
//                return formatter.string(from: retval)
//
//            case "Kilometer/Hour², km/h²":
//                let decigal = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.dGal)
//                let retval = decigal.converted(to: UnitAcceleration.kmh2)
//                return formatter.string(from: retval)
//
//            case "Kilometer/Second², km/s²":
//                let decigal = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.dGal)
//                let retval = decigal.converted(to: UnitAcceleration.kms2)
//                return formatter.string(from: retval)
//
//            case "Knot/Second, kn/s":
//                let decigal = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.dGal)
//                let retval = decigal.converted(to: UnitAcceleration.kns2)
//                return formatter.string(from: retval)
//
//            case "Microgal, μgal":
//                let decigal = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.dGal)
//                let retval = decigal.converted(to: UnitAcceleration.μGal)
//                return formatter.string(from: retval)
//
//            case "Meter/Second², m/s²":
//                let decigal = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.dGal)
//                let retval = decigal.converted(to: UnitAcceleration.metersPerSecondSquared)
//                return formatter.string(from: retval)
//
//            case "Mile/Hour Minute, mph/min":
//                let decigal = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.dGal)
//                let retval = decigal.converted(to: UnitAcceleration.mphmin)
//                return formatter.string(from: retval)
//
//            case "Mile/Hour Second, mph/s":
//                let decigal = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.dGal)
//                let retval = decigal.converted(to: UnitAcceleration.mphsec)
//                return formatter.string(from: retval)
//
//            case "Mile/Second², mps²":
//                let decigal = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.dGal)
//                let retval = decigal.converted(to: UnitAcceleration.mps2)
//                return formatter.string(from: retval)
//
//            case "Milligal, mGal":
//                let decigal = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.dGal)
//                let retval = decigal.converted(to: UnitAcceleration.mGal)
//                return formatter.string(from: retval)
//
//
//            default:
//
//                let decigal = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.cGal)
//                let retval = decigal.converted(to: UnitAcceleration.yds2)
//                return formatter.string(from: retval)
//            }
//        }
//
//        else if inputUnit1 == "Decimeter/Second², dm/s²" {
//            switch inputUnit2 {
//            case "Decigal, dGal":
//                let dms2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.decimeterpers2)
//                let retval = dms2.converted(to: UnitAcceleration.dGal)
//                return formatter.string(from: retval)
//
//            case "Centigal, cGal":
//                let dms2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.decimeterpers2)
//                let retval = dms2.converted(to: UnitAcceleration.cGal)
//                return formatter.string(from: retval)
//
//            case "Earth Gravity, g":
//                let dms2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.decimeterpers2)
//                let retval = dms2.converted(to: UnitAcceleration.gravity)
//                return formatter.string(from: retval)
//
//            case "Foot/Second², fps²":
//                let dms2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.decimeterpers2)
//                let retval = dms2.converted(to: UnitAcceleration.fps2)
//                return formatter.string(from: retval)
//
//            case "Galileo, Gal":
//                let dms2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.decimeterpers2)
//                let retval = dms2.converted(to: UnitAcceleration.Gal)
//                return formatter.string(from: retval)
//
//            case "Inch/Second², ips²":
//                let dms2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.decimeterpers2)
//                let retval = dms2.converted(to: UnitAcceleration.ips2)
//                return formatter.string(from: retval)
//
//            case "Kilometer/Hour², km/h²":
//                let dms2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.decimeterpers2)
//                let retval = dms2.converted(to: UnitAcceleration.kmh2)
//                return formatter.string(from: retval)
//
//            case "Kilometer/Second², km/s²":
//                let dms2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.decimeterpers2)
//                let retval = dms2.converted(to: UnitAcceleration.kms2)
//                return formatter.string(from: retval)
//
//            case "Knot/Second, kn/s":
//                let dms2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.decimeterpers2)
//                let retval = dms2.converted(to: UnitAcceleration.kns2)
//                return formatter.string(from: retval)
//
//            case "Microgal, μgal":
//                let dms2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.decimeterpers2)
//                let retval = dms2.converted(to: UnitAcceleration.μGal)
//                return formatter.string(from: retval)
//
//            case "Meter/Second², m/s²":
//                let dms2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.decimeterpers2)
//                let retval = dms2.converted(to: UnitAcceleration.metersPerSecondSquared)
//                return formatter.string(from: retval)
//
//            case "Mile/Hour Minute, mph/min":
//                let dms2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.decimeterpers2)
//                let retval = dms2.converted(to: UnitAcceleration.mphmin)
//                return formatter.string(from: retval)
//
//            case "Mile/Hour Second, mph/s":
//                let dms2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.decimeterpers2)
//                let retval = dms2.converted(to: UnitAcceleration.mphsec)
//                return formatter.string(from: retval)
//
//            case "Mile/Second², mps²":
//                let dms2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.decimeterpers2)
//                let retval = dms2.converted(to: UnitAcceleration.mps2)
//                return formatter.string(from: retval)
//
//            case "Milligal, mGal":
//                let dms2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.decimeterpers2)
//                let retval = dms2.converted(to: UnitAcceleration.mGal)
//                return formatter.string(from: retval)
//
//
//            default:
//
//                let dms2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.decimeterpers2)
//                let retval = dms2.converted(to: UnitAcceleration.yds2)
//                return formatter.string(from: retval)
//            }
//        }
//
//        else if inputUnit1 == "Earth Gravity, g" {
//            switch inputUnit2 {
//            case "Decigal, dGal":
//                let gravity = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.gravity)
//                let retval = gravity.converted(to: UnitAcceleration.dGal)
//                return formatter.string(from: retval)
//
//            case "Decimeter/Second², dm/s²":
//                let gravity = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.gravity)
//                let retval = gravity.converted(to: UnitAcceleration.decimeterpers2)
//                return formatter.string(from: retval)
//
//            case "Centigal, cGal":
//                let gravity = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.gravity)
//                let retval = gravity.converted(to: UnitAcceleration.cGal)
//                return formatter.string(from: retval)
//
//            case "Foot/Second², fps²":
//                let gravity = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.gravity)
//                let retval = gravity.converted(to: UnitAcceleration.fps2)
//                return formatter.string(from: retval)
//
//            case "Galileo, Gal":
//                let gravity = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.gravity)
//                let retval = gravity.converted(to: UnitAcceleration.Gal)
//                return formatter.string(from: retval)
//
//            case "Inch/Second², ips²":
//                let gravity = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.gravity)
//                let retval = gravity.converted(to: UnitAcceleration.ips2)
//                return formatter.string(from: retval)
//
//            case "Kilometer/Hour², km/h²":
//                let gravity = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.gravity)
//                let retval = gravity.converted(to: UnitAcceleration.kmh2)
//                return formatter.string(from: retval)
//
//            case "Kilometer/Second², km/s²":
//                let gravity = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.gravity)
//                let retval = gravity.converted(to: UnitAcceleration.kms2)
//                return formatter.string(from: retval)
//
//            case "Knot/Second, kn/s":
//                let gravity = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.gravity)
//                let retval = gravity.converted(to: UnitAcceleration.kns2)
//                return formatter.string(from: retval)
//
//            case "Microgal, μgal":
//                let gravity = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.gravity)
//                let retval = gravity.converted(to: UnitAcceleration.μGal)
//                return formatter.string(from: retval)
//
//            case "Meter/Second², m/s²":
//                let gravity = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.gravity)
//                let retval = gravity.converted(to: UnitAcceleration.metersPerSecondSquared)
//                return formatter.string(from: retval)
//
//            case "Mile/Hour Minute, mph/min":
//                let gravity = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.gravity)
//                let retval = gravity.converted(to: UnitAcceleration.mphmin)
//                return formatter.string(from: retval)
//
//            case "Mile/Hour Second, mph/s":
//                let gravity = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.gravity)
//                let retval = gravity.converted(to: UnitAcceleration.mphsec)
//                return formatter.string(from: retval)
//
//            case "Mile/Second², mps²":
//                let gravity = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.gravity)
//                let retval = gravity.converted(to: UnitAcceleration.mps2)
//                return formatter.string(from: retval)
//
//            case "Milligal, mGal":
//                let gravity = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.gravity)
//                let retval = gravity.converted(to: UnitAcceleration.mGal)
//                return formatter.string(from: retval)
//
//
//            default:
//
//                let gravity = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.gravity)
//                let retval = gravity.converted(to: UnitAcceleration.yds2)
//                return formatter.string(from: retval)
//            }
//        }
//
//        else if inputUnit1 == "Foot/Second², fps²" {
//            switch inputUnit2 {
//            case "Decigal, dGal":
//                let fps2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.fps2)
//                let retval = fps2.converted(to: UnitAcceleration.dGal)
//                return formatter.string(from: retval)
//
//            case "Decimeter/Second², dm/s²":
//                let fps2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.fps2)
//                let retval = fps2.converted(to: UnitAcceleration.decimeterpers2)
//                return formatter.string(from: retval)
//
//            case "Earth Gravity, g":
//                let fps2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.fps2)
//                let retval = fps2.converted(to: UnitAcceleration.gravity)
//                return formatter.string(from: retval)
//
//            case "Centigal, cGal":
//                let fps2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.fps2)
//                let retval = fps2.converted(to: UnitAcceleration.cGal)
//                return formatter.string(from: retval)
//
//            case "Galileo, Gal":
//                let fps2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.fps2)
//                let retval = fps2.converted(to: UnitAcceleration.Gal)
//                return formatter.string(from: retval)
//
//            case "Inch/Second², ips²":
//                let fps2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.fps2)
//                let retval = fps2.converted(to: UnitAcceleration.ips2)
//                return formatter.string(from: retval)
//
//            case "Kilometer/Hour², km/h²":
//                let fps2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.fps2)
//                let retval = fps2.converted(to: UnitAcceleration.kmh2)
//                return formatter.string(from: retval)
//
//            case "Kilometer/Second², km/s²":
//                let fps2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.fps2)
//                let retval = fps2.converted(to: UnitAcceleration.kms2)
//                return formatter.string(from: retval)
//
//            case "Knot/Second, kn/s":
//                let fps2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.fps2)
//                let retval = fps2.converted(to: UnitAcceleration.kns2)
//                return formatter.string(from: retval)
//
//            case "Microgal, μgal":
//                let fps2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.fps2)
//                let retval = fps2.converted(to: UnitAcceleration.μGal)
//                return formatter.string(from: retval)
//
//            case "Meter/Second², m/s²":
//                let fps2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.fps2)
//                let retval = fps2.converted(to: UnitAcceleration.metersPerSecondSquared)
//                return formatter.string(from: retval)
//
//            case "Mile/Hour Minute, mph/min":
//                let fps2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.fps2)
//                let retval = fps2.converted(to: UnitAcceleration.mphmin)
//                return formatter.string(from: retval)
//
//            case "Mile/Hour Second, mph/s":
//                let fps2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.fps2)
//                let retval = fps2.converted(to: UnitAcceleration.mphsec)
//                return formatter.string(from: retval)
//
//            case "Mile/Second², mps²":
//                let fps2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.fps2)
//                let retval = fps2.converted(to: UnitAcceleration.mps2)
//                return formatter.string(from: retval)
//
//            case "Milligal, mGal":
//                let fps2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.fps2)
//                let retval = fps2.converted(to: UnitAcceleration.mGal)
//                return formatter.string(from: retval)
//
//
//            default:
//
//                let fps2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.fps2)
//                let retval = fps2.converted(to: UnitAcceleration.yds2)
//                return formatter.string(from: retval)
//            }
//        }
//
//        else if inputUnit1 == "Galileo, Gal" {
//            switch inputUnit2 {
//            case "Decigal, dGal":
//                let gal = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.Gal)
//                let retval = gal.converted(to: UnitAcceleration.dGal)
//                return formatter.string(from: retval)
//
//            case "Decimeter/Second², dm/s²":
//                let gal = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.Gal)
//                let retval = gal.converted(to: UnitAcceleration.decimeterpers2)
//                return formatter.string(from: retval)
//
//            case "Earth Gravity, g":
//                let gal = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.Gal)
//                let retval = gal.converted(to: UnitAcceleration.gravity)
//                return formatter.string(from: retval)
//
//            case "Foot/Second², fps²":
//                let gal = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.Gal)
//                let retval = gal.converted(to: UnitAcceleration.fps2)
//                return formatter.string(from: retval)
//
//            case "Centigal, cGal":
//                let gal = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.Gal)
//                let retval = gal.converted(to: UnitAcceleration.cGal)
//                return formatter.string(from: retval)
//
//            case "Inch/Second², ips²":
//                let gal = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.Gal)
//                let retval = gal.converted(to: UnitAcceleration.ips2)
//                return formatter.string(from: retval)
//
//            case "Kilometer/Hour², km/h²":
//                let gal = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.Gal)
//                let retval = gal.converted(to: UnitAcceleration.kmh2)
//                return formatter.string(from: retval)
//
//            case "Kilometer/Second², km/s²":
//                let gal = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.Gal)
//                let retval = gal.converted(to: UnitAcceleration.kms2)
//                return formatter.string(from: retval)
//
//            case "Knot/Second, kn/s":
//                let gal = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.Gal)
//                let retval = gal.converted(to: UnitAcceleration.kns2)
//                return formatter.string(from: retval)
//
//            case "Microgal, μgal":
//                let gal = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.Gal)
//                let retval = gal.converted(to: UnitAcceleration.μGal)
//                return formatter.string(from: retval)
//
//            case "Meter/Second², m/s²":
//                let gal = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.Gal)
//                let retval = gal.converted(to: UnitAcceleration.metersPerSecondSquared)
//                return formatter.string(from: retval)
//
//            case "Mile/Hour Minute, mph/min":
//                let gal = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.Gal)
//                let retval = gal.converted(to: UnitAcceleration.mphmin)
//                return formatter.string(from: retval)
//
//            case "Mile/Hour Second, mph/s":
//                let gal = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.Gal)
//                let retval = gal.converted(to: UnitAcceleration.mphsec)
//                return formatter.string(from: retval)
//
//            case "Mile/Second², mps²":
//                let gal = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.Gal)
//                let retval = gal.converted(to: UnitAcceleration.mps2)
//                return formatter.string(from: retval)
//
//            case "Milligal, mGal":
//                let gal = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.Gal)
//                let retval = gal.converted(to: UnitAcceleration.mGal)
//                return formatter.string(from: retval)
//
//
//            default:
//
//                let gal = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.Gal)
//                let retval = gal.converted(to: UnitAcceleration.yds2)
//                return formatter.string(from: retval)
//            }
//        }
//
//        else if inputUnit1 == "Inch/Second², ips²" {
//            switch inputUnit2 {
//            case "Decigal, dGal":
//                let ips2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.ips2)
//                let retval = ips2.converted(to: UnitAcceleration.dGal)
//                return formatter.string(from: retval)
//
//            case "Decimeter/Second², dm/s²":
//                let ips2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.ips2)
//                let retval = ips2.converted(to: UnitAcceleration.decimeterpers2)
//                return formatter.string(from: retval)
//
//            case "Earth Gravity, g":
//                let ips2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.ips2)
//                let retval = ips2.converted(to: UnitAcceleration.gravity)
//                return formatter.string(from: retval)
//
//            case "Foot/Second², fps²":
//                let ips2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.ips2)
//                let retval = ips2.converted(to: UnitAcceleration.fps2)
//                return formatter.string(from: retval)
//
//            case "Galileo, Gal":
//                let ips2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.ips2)
//                let retval = ips2.converted(to: UnitAcceleration.Gal)
//                return formatter.string(from: retval)
//
//            case "Centigal, cGal":
//                let ips2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.ips2)
//                let retval = ips2.converted(to: UnitAcceleration.cGal)
//                return formatter.string(from: retval)
//
//            case "Kilometer/Hour², km/h²":
//                let ips2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.ips2)
//                let retval = ips2.converted(to: UnitAcceleration.kmh2)
//                return formatter.string(from: retval)
//
//            case "Kilometer/Second², km/s²":
//                let ips2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.ips2)
//                let retval = ips2.converted(to: UnitAcceleration.kms2)
//                return formatter.string(from: retval)
//
//            case "Knot/Second, kn/s":
//                let ips2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.ips2)
//                let retval = ips2.converted(to: UnitAcceleration.kns2)
//                return formatter.string(from: retval)
//
//            case "Microgal, μgal":
//                let ips2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.ips2)
//                let retval = ips2.converted(to: UnitAcceleration.μGal)
//                return formatter.string(from: retval)
//
//            case "Meter/Second², m/s²":
//                let ips2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.ips2)
//                let retval = ips2.converted(to: UnitAcceleration.metersPerSecondSquared)
//                return formatter.string(from: retval)
//
//            case "Mile/Hour Minute, mph/min":
//                let ips2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.ips2)
//                let retval = ips2.converted(to: UnitAcceleration.mphmin)
//                return formatter.string(from: retval)
//
//            case "Mile/Hour Second, mph/s":
//                let ips2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.ips2)
//                let retval = ips2.converted(to: UnitAcceleration.mphsec)
//                return formatter.string(from: retval)
//
//            case "Mile/Second², mps²":
//                let ips2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.ips2)
//                let retval = ips2.converted(to: UnitAcceleration.mps2)
//                return formatter.string(from: retval)
//
//            case "Milligal, mGal":
//                let ips2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.ips2)
//                let retval = ips2.converted(to: UnitAcceleration.mGal)
//                return formatter.string(from: retval)
//
//
//            default:
//
//                let ips2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.ips2)
//                let retval = ips2.converted(to: UnitAcceleration.yds2)
//                return formatter.string(from: retval)
//            }
//        }
//
//        else if inputUnit1 == "Kilometer/Hour², km/h²" {
//            switch inputUnit2 {
//            case "Decigal, dGal":
//                let kmh2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.kmh2)
//                let retval = kmh2.converted(to: UnitAcceleration.dGal)
//                return formatter.string(from: retval)
//
//            case "Decimeter/Second², dm/s²":
//                let kmh2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.kmh2)
//                let retval = kmh2.converted(to: UnitAcceleration.decimeterpers2)
//                return formatter.string(from: retval)
//
//            case "Earth Gravity, g":
//                let kmh2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.kmh2)
//                let retval = kmh2.converted(to: UnitAcceleration.gravity)
//                return formatter.string(from: retval)
//
//            case "Foot/Second², fps²":
//                let kmh2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.kmh2)
//                let retval = kmh2.converted(to: UnitAcceleration.fps2)
//                return formatter.string(from: retval)
//
//            case "Galileo, Gal":
//                let kmh2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.kmh2)
//                let retval = kmh2.converted(to: UnitAcceleration.Gal)
//                return formatter.string(from: retval)
//
//            case "Inch/Second², ips²":
//                let kmh2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.kmh2)
//                let retval = kmh2.converted(to: UnitAcceleration.ips2)
//                return formatter.string(from: retval)
//
//            case "Centigal, cGal":
//                let kmh2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.kmh2)
//                let retval = kmh2.converted(to: UnitAcceleration.cGal)
//                return formatter.string(from: retval)
//
//            case "Kilometer/Second², km/s²":
//                let kmh2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.kmh2)
//                let retval = kmh2.converted(to: UnitAcceleration.kms2)
//                return formatter.string(from: retval)
//
//            case "Knot/Second, kn/s":
//                let kmh2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.kmh2)
//                let retval = kmh2.converted(to: UnitAcceleration.kns2)
//                return formatter.string(from: retval)
//
//            case "Microgal, μgal":
//                let kmh2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.kmh2)
//                let retval = kmh2.converted(to: UnitAcceleration.μGal)
//                return formatter.string(from: retval)
//
//            case "Meter/Second², m/s²":
//                let kmh2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.kmh2)
//                let retval = kmh2.converted(to: UnitAcceleration.metersPerSecondSquared)
//                return formatter.string(from: retval)
//
//            case "Mile/Hour Minute, mph/min":
//                let kmh2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.kmh2)
//                let retval = kmh2.converted(to: UnitAcceleration.mphmin)
//                return formatter.string(from: retval)
//
//            case "Mile/Hour Second, mph/s":
//                let kmh2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.kmh2)
//                let retval = kmh2.converted(to: UnitAcceleration.mphsec)
//                return formatter.string(from: retval)
//
//            case "Mile/Second², mps²":
//                let kmh2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.kmh2)
//                let retval = kmh2.converted(to: UnitAcceleration.mps2)
//                return formatter.string(from: retval)
//
//            case "Milligal, mGal":
//                let kmh2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.kmh2)
//                let retval = kmh2.converted(to: UnitAcceleration.mGal)
//                return formatter.string(from: retval)
//
//
//            default:
//
//                let kmh2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.kmh2)
//                let retval = kmh2.converted(to: UnitAcceleration.yds2)
//                return formatter.string(from: retval)
//            }
//        }
//
//        else if inputUnit1 == "Kilometer/Second², km/s²" {
//            switch inputUnit2 {
//            case "Decigal, dGal":
//                let kms2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.kms2)
//                let retval = kms2.converted(to: UnitAcceleration.dGal)
//                return formatter.string(from: retval)
//
//            case "Decimeter/Second², dm/s²":
//                let kms2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.kms2)
//                let retval = kms2.converted(to: UnitAcceleration.decimeterpers2)
//                return formatter.string(from: retval)
//
//            case "Earth Gravity, g":
//                let kms2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.kms2)
//                let retval = kms2.converted(to: UnitAcceleration.gravity)
//                return formatter.string(from: retval)
//
//            case "Foot/Second², fps²":
//                let kms2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.kms2)
//                let retval = kms2.converted(to: UnitAcceleration.fps2)
//                return formatter.string(from: retval)
//
//            case "Galileo, Gal":
//                let kms2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.kms2)
//                let retval = kms2.converted(to: UnitAcceleration.Gal)
//                return formatter.string(from: retval)
//
//            case "Inch/Second², ips²":
//                let kms2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.kms2)
//                let retval = kms2.converted(to: UnitAcceleration.ips2)
//                return formatter.string(from: retval)
//
//            case "Kilometer/Hour², km/h²":
//                let kms2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.kms2)
//                let retval = kms2.converted(to: UnitAcceleration.kmh2)
//                return formatter.string(from: retval)
//
//            case "Centigal, cGal":
//                let kms2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.kms2)
//                let retval = kms2.converted(to: UnitAcceleration.cGal)
//                return formatter.string(from: retval)
//
//            case "Knot/Second, kn/s":
//                let kms2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.kms2)
//                let retval = kms2.converted(to: UnitAcceleration.kns2)
//                return formatter.string(from: retval)
//
//            case "Microgal, μgal":
//                let kms2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.kms2)
//                let retval = kms2.converted(to: UnitAcceleration.μGal)
//                return formatter.string(from: retval)
//
//            case "Meter/Second², m/s²":
//                let kms2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.kms2)
//                let retval = kms2.converted(to: UnitAcceleration.metersPerSecondSquared)
//                return formatter.string(from: retval)
//
//            case "Mile/Hour Minute, mph/min":
//                let kms2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.kms2)
//                let retval = kms2.converted(to: UnitAcceleration.mphmin)
//                return formatter.string(from: retval)
//
//            case "Mile/Hour Second, mph/s":
//                let kms2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.kms2)
//                let retval = kms2.converted(to: UnitAcceleration.mphsec)
//                return formatter.string(from: retval)
//
//            case "Mile/Second², mps²":
//                let kms2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.kms2)
//                let retval = kms2.converted(to: UnitAcceleration.mps2)
//                return formatter.string(from: retval)
//
//            case "Milligal, mGal":
//                let kms2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.kms2)
//                let retval = kms2.converted(to: UnitAcceleration.mGal)
//                return formatter.string(from: retval)
//
//
//            default:
//
//                let kms2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.kms2)
//                let retval = kms2.converted(to: UnitAcceleration.yds2)
//                return formatter.string(from: retval)
//            }
//        }
//
//        else if inputUnit1 == "Knot/Second, kn/s" {
//            switch inputUnit2 {
//            case "Decigal, dGal":
//                let kns2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.kns2)
//                let retval = kns2.converted(to: UnitAcceleration.dGal)
//                return formatter.string(from: retval)
//
//            case "Decimeter/Second², dm/s²":
//                let kns2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.kns2)
//                let retval = kns2.converted(to: UnitAcceleration.decimeterpers2)
//                return formatter.string(from: retval)
//
//            case "Earth Gravity, g":
//                let kns2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.kns2)
//                let retval = kns2.converted(to: UnitAcceleration.gravity)
//                return formatter.string(from: retval)
//
//            case "Foot/Second², fps²":
//                let kns2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.kns2)
//                let retval = kns2.converted(to: UnitAcceleration.fps2)
//                return formatter.string(from: retval)
//
//            case "Galileo, Gal":
//                let kns2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.kns2)
//                let retval = kns2.converted(to: UnitAcceleration.Gal)
//                return formatter.string(from: retval)
//
//            case "Inch/Second², ips²":
//                let kns2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.kns2)
//                let retval = kns2.converted(to: UnitAcceleration.ips2)
//                return formatter.string(from: retval)
//
//            case "Kilometer/Hour², km/h²":
//                let kns2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.kns2)
//                let retval = kns2.converted(to: UnitAcceleration.kmh2)
//                return formatter.string(from: retval)
//
//            case "Kilometer/Second², km/s²":
//                let kns2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.kns2)
//                let retval = kns2.converted(to: UnitAcceleration.kms2)
//                return formatter.string(from: retval)
//
//            case "Centigal, cGal":
//                let kns2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.kns2)
//                let retval = kns2.converted(to: UnitAcceleration.cGal)
//                return formatter.string(from: retval)
//
//            case "Microgal, μgal":
//                let kns2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.kns2)
//                let retval = kns2.converted(to: UnitAcceleration.μGal)
//                return formatter.string(from: retval)
//
//            case "Meter/Second², m/s²":
//                let kns2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.kns2)
//                let retval = kns2.converted(to: UnitAcceleration.metersPerSecondSquared)
//                return formatter.string(from: retval)
//
//            case "Mile/Hour Minute, mph/min":
//                let kns2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.kns2)
//                let retval = kns2.converted(to: UnitAcceleration.mphmin)
//                return formatter.string(from: retval)
//
//            case "Mile/Hour Second, mph/s":
//                let kns2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.kns2)
//                let retval = kns2.converted(to: UnitAcceleration.mphsec)
//                return formatter.string(from: retval)
//
//            case "Mile/Second², mps²":
//                let kns2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.kns2)
//                let retval = kns2.converted(to: UnitAcceleration.mps2)
//                return formatter.string(from: retval)
//
//            case "Milligal, mGal":
//                let kns2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.kns2)
//                let retval = kns2.converted(to: UnitAcceleration.mGal)
//                return formatter.string(from: retval)
//
//
//            default:
//
//                let kns2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.kns2)
//                let retval = kns2.converted(to: UnitAcceleration.yds2)
//                return formatter.string(from: retval)
//            }
//        }
//
//        else if inputUnit1 == "Microgal, μGal" {
//            switch inputUnit2 {
//            case "Decigal, dGal":
//                let μGal = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.μGal )
//                let retval = μGal.converted(to: UnitAcceleration.dGal)
//                return formatter.string(from: retval)
//
//            case "Decimeter/Second², dm/s²":
//                let μGal = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.μGal)
//                let retval = μGal.converted(to: UnitAcceleration.decimeterpers2)
//                return formatter.string(from: retval)
//
//            case "Earth Gravity, g":
//                let μGal = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.μGal)
//                let retval = μGal.converted(to: UnitAcceleration.gravity)
//                return formatter.string(from: retval)
//
//            case "Foot/Second², fps²":
//                let μGal = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.μGal)
//                let retval = μGal.converted(to: UnitAcceleration.fps2)
//                return formatter.string(from: retval)
//
//            case "Galileo, Gal":
//                let μGal = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.μGal)
//                let retval = μGal.converted(to: UnitAcceleration.Gal)
//                return formatter.string(from: retval)
//
//            case "Inch/Second², ips²":
//                let μGal = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.μGal)
//                let retval = μGal.converted(to: UnitAcceleration.ips2)
//                return formatter.string(from: retval)
//
//            case "Kilometer/Hour², km/h²":
//                let μGal = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.μGal)
//                let retval = μGal.converted(to: UnitAcceleration.kmh2)
//                return formatter.string(from: retval)
//
//            case "Kilometer/Second², km/s²":
//                let μGal = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.μGal)
//                let retval = μGal.converted(to: UnitAcceleration.kms2)
//                return formatter.string(from: retval)
//
//            case "Knot/Second, kn/s":
//                let μGal = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.μGal)
//                let retval = μGal.converted(to: UnitAcceleration.kns2)
//                return formatter.string(from: retval)
//
//            case "Centigal, cGal":
//                let μGal = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.μGal)
//                let retval = μGal.converted(to: UnitAcceleration.cGal)
//                return formatter.string(from: retval)
//
//            case "Meter/Second², m/s²":
//                let μGal = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.μGal)
//                let retval = μGal.converted(to: UnitAcceleration.metersPerSecondSquared)
//                return formatter.string(from: retval)
//
//            case "Mile/Hour Minute, mph/min":
//                let μGal = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.μGal)
//                let retval = μGal.converted(to: UnitAcceleration.mphmin)
//                return formatter.string(from: retval)
//
//            case "Mile/Hour Second, mph/s":
//                let μGal = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.μGal)
//                let retval = μGal.converted(to: UnitAcceleration.mphsec)
//                return formatter.string(from: retval)
//
//            case "Mile/Second², mps²":
//                let μGal = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.μGal)
//                let retval = μGal.converted(to: UnitAcceleration.mps2)
//                return formatter.string(from: retval)
//
//            case "Milligal, mGal":
//                let μGal = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.μGal)
//                let retval = μGal.converted(to: UnitAcceleration.mGal)
//                return formatter.string(from: retval)
//
//
//            default:
//
//                let μGal = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.μGal)
//                let retval = μGal.converted(to: UnitAcceleration.yds2)
//                return formatter.string(from: retval)
//            }
//        }
//
//        else if inputUnit1 == "Meter/Second², m/s²" {
//            switch inputUnit2 {
//            case "Decigal, dGal":
//                let mps2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.metersPerSecondSquared)
//                let retval = mps2.converted(to: UnitAcceleration.dGal)
//                return formatter.string(from: retval)
//
//            case "Decimeter/Second², dm/s²":
//                let mps2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.metersPerSecondSquared)
//                let retval = mps2.converted(to: UnitAcceleration.decimeterpers2)
//                return formatter.string(from: retval)
//
//            case "Earth Gravity, g":
//                let mps2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.metersPerSecondSquared)
//                let retval = mps2.converted(to: UnitAcceleration.gravity)
//                return formatter.string(from: retval)
//
//            case "Foot/Second², fps²":
//                let mps2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.metersPerSecondSquared)
//                let retval = mps2.converted(to: UnitAcceleration.fps2)
//                return formatter.string(from: retval)
//
//            case "Galileo, Gal":
//                let mps2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.metersPerSecondSquared)
//                let retval = mps2.converted(to: UnitAcceleration.Gal)
//                return formatter.string(from: retval)
//
//            case "Inch/Second², ips²":
//                let mps2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.metersPerSecondSquared)
//                let retval = mps2.converted(to: UnitAcceleration.ips2)
//                return formatter.string(from: retval)
//
//            case "Kilometer/Hour², km/h²":
//                let mps2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.metersPerSecondSquared)
//                let retval = mps2.converted(to: UnitAcceleration.kmh2)
//                return formatter.string(from: retval)
//
//            case "Kilometer/Second², km/s²":
//                let mps2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.metersPerSecondSquared)
//                let retval = mps2.converted(to: UnitAcceleration.kms2)
//                return formatter.string(from: retval)
//
//            case "Knot/Second, kn/s":
//                let mps2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.metersPerSecondSquared)
//                let retval = mps2.converted(to: UnitAcceleration.kns2)
//                return formatter.string(from: retval)
//
//            case "Microgal, μgal":
//                let mps2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.metersPerSecondSquared)
//                let retval = mps2.converted(to: UnitAcceleration.μGal)
//                return formatter.string(from: retval)
//
//            case "Centigal, cGal":
//                let mps2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.metersPerSecondSquared)
//                let retval = mps2.converted(to: UnitAcceleration.cGal)
//                return formatter.string(from: retval)
//
//            case "Mile/Hour Minute, mph/min":
//                let mps2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.metersPerSecondSquared)
//                let retval = mps2.converted(to: UnitAcceleration.mphmin)
//                return formatter.string(from: retval)
//
//            case "Mile/Hour Second, mph/s":
//                let mps2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.metersPerSecondSquared)
//                let retval = mps2.converted(to: UnitAcceleration.mphsec)
//                return formatter.string(from: retval)
//
//            case "Mile/Second², mps²":
//                let mps2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.metersPerSecondSquared)
//                let retval = mps2.converted(to: UnitAcceleration.mps2)
//                return formatter.string(from: retval)
//
//            case "Milligal, mGal":
//                let mps2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.metersPerSecondSquared)
//                let retval = mps2.converted(to: UnitAcceleration.mGal)
//                return formatter.string(from: retval)
//
//
//            default:
//
//                let mps2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.metersPerSecondSquared)
//                let retval = mps2.converted(to: UnitAcceleration.yds2)
//                return formatter.string(from: retval)
//            }
//        }
//
//        else if inputUnit1 == "Mile/Hour Minute, mph/min" {
//            switch inputUnit2 {
//            case "Decigal, dGal":
//                let mphmin = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.mphmin)
//                let retval = mphmin.converted(to: UnitAcceleration.dGal)
//                return formatter.string(from: retval)
//
//            case "Decimeter/Second², dm/s²":
//                let mphmin = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.mphmin)
//                let retval = mphmin.converted(to: UnitAcceleration.decimeterpers2)
//                return formatter.string(from: retval)
//
//            case "Earth Gravity, g":
//                let mphmin = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.mphmin)
//                let retval = mphmin.converted(to: UnitAcceleration.gravity)
//                return formatter.string(from: retval)
//
//            case "Foot/Second², fps²":
//                let mphmin = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.mphmin)
//                let retval = mphmin.converted(to: UnitAcceleration.fps2)
//                return formatter.string(from: retval)
//
//            case "Galileo, Gal":
//                let mphmin = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.mphmin)
//                let retval = mphmin.converted(to: UnitAcceleration.Gal)
//                return formatter.string(from: retval)
//
//            case "Inch/Second², ips²":
//                let mphmin = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.mphmin)
//                let retval = mphmin.converted(to: UnitAcceleration.ips2)
//                return formatter.string(from: retval)
//
//            case "Kilometer/Hour², km/h²":
//                let mphmin = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.mphmin)
//                let retval = mphmin.converted(to: UnitAcceleration.kmh2)
//                return formatter.string(from: retval)
//
//            case "Kilometer/Second², km/s²":
//                let mphmin = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.mphmin)
//                let retval = mphmin.converted(to: UnitAcceleration.kms2)
//                return formatter.string(from: retval)
//
//            case "Knot/Second, kn/s":
//                let mphmin = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.mphmin)
//                let retval = mphmin.converted(to: UnitAcceleration.kns2)
//                return formatter.string(from: retval)
//
//            case "Microgal, μgal":
//                let mphmin = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.mphmin)
//                let retval = mphmin.converted(to: UnitAcceleration.μGal)
//                return formatter.string(from: retval)
//
//            case "Meter/Second², m/s²":
//                let mphmin = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.mphmin)
//                let retval = mphmin.converted(to: UnitAcceleration.metersPerSecondSquared)
//                return formatter.string(from: retval)
//
//            case "Centigal, cGal":
//                let mphmin = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.mphmin)
//                let retval = mphmin.converted(to: UnitAcceleration.cGal)
//                return formatter.string(from: retval)
//
//            case "Mile/Hour Second, mph/s":
//                let mphmin = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.mphmin)
//                let retval = mphmin.converted(to: UnitAcceleration.mphsec)
//                return formatter.string(from: retval)
//
//            case "Mile/Second², mps²":
//                let mphmin = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.mphmin)
//                let retval = mphmin.converted(to: UnitAcceleration.mps2)
//                return formatter.string(from: retval)
//
//            case "Milligal, mGal":
//                let mphmin = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.mphmin)
//                let retval = mphmin.converted(to: UnitAcceleration.mGal)
//                return formatter.string(from: retval)
//
//
//            default:
//
//                let mphmin = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.mphmin)
//                let retval = mphmin.converted(to: UnitAcceleration.yds2)
//                return formatter.string(from: retval)
//            }
//        }
//
//        else if inputUnit1 == "Mile/Hour Second, mph/s" {
//            switch inputUnit2 {
//            case "Decigal, dGal":
//                let mphsec = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.mphsec)
//                let retval = mphsec.converted(to: UnitAcceleration.dGal)
//                return formatter.string(from: retval)
//
//            case "Decimeter/Second², dm/s²":
//                let mphsec = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.mphsec)
//                let retval = mphsec.converted(to: UnitAcceleration.decimeterpers2)
//                return formatter.string(from: retval)
//
//            case "Earth Gravity, g":
//                let mphsec = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.mphsec)
//                let retval = mphsec.converted(to: UnitAcceleration.gravity)
//                return formatter.string(from: retval)
//
//            case "Foot/Second², fps²":
//                let mphsec = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.mphsec)
//                let retval = mphsec.converted(to: UnitAcceleration.fps2)
//                return formatter.string(from: retval)
//
//            case "Galileo, Gal":
//                let mphsec = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.mphsec)
//                let retval = mphsec.converted(to: UnitAcceleration.Gal)
//                return formatter.string(from: retval)
//
//            case "Inch/Second², ips²":
//                let mphsec = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.mphsec)
//                let retval = mphsec.converted(to: UnitAcceleration.ips2)
//                return formatter.string(from: retval)
//
//            case "Kilometer/Hour², km/h²":
//                let mphsec = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.mphsec)
//                let retval = mphsec.converted(to: UnitAcceleration.kmh2)
//                return formatter.string(from: retval)
//
//            case "Kilometer/Second², km/s²":
//                let mphsec = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.mphsec)
//                let retval = mphsec.converted(to: UnitAcceleration.kms2)
//                return formatter.string(from: retval)
//
//            case "Knot/Second, kn/s":
//                let mphsec = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.mphsec)
//                let retval = mphsec.converted(to: UnitAcceleration.kns2)
//                return formatter.string(from: retval)
//
//            case "Microgal, μgal":
//                let mphsec = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.mphsec)
//                let retval = mphsec.converted(to: UnitAcceleration.μGal)
//                return formatter.string(from: retval)
//
//            case "Meter/Second², m/s²":
//                let mphsec = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.mphsec)
//                let retval = mphsec.converted(to: UnitAcceleration.metersPerSecondSquared)
//                return formatter.string(from: retval)
//
//            case "Mile/Hour Minute, mph/min":
//                let mphsec = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.mphsec)
//                let retval = mphsec.converted(to: UnitAcceleration.mphmin)
//                return formatter.string(from: retval)
//
//            case "Centigal, cGal":
//                let mphsec = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.mphsec)
//                let retval = mphsec.converted(to: UnitAcceleration.cGal)
//                return formatter.string(from: retval)
//
//            case "Mile/Second², mps²":
//                let mphsec = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.mphsec)
//                let retval = mphsec.converted(to: UnitAcceleration.mps2)
//                return formatter.string(from: retval)
//
//            case "Milligal, mGal":
//                let mphsec = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.mphsec)
//                let retval = mphsec.converted(to: UnitAcceleration.mGal)
//                return formatter.string(from: retval)
//
//
//            default:
//
//                let mphsec = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.mphsec)
//                let retval = mphsec.converted(to: UnitAcceleration.yds2)
//                return formatter.string(from: retval)
//            }
//        }
//
//        else if inputUnit1 == "Mile/Second², mps²" {
//            switch inputUnit2 {
//            case "Decigal, dGal":
//                let mps2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.mps2)
//                let retval = mps2.converted(to: UnitAcceleration.dGal)
//                return formatter.string(from: retval)
//
//            case "Decimeter/Second², dm/s²":
//                let mps2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.mps2)
//                let retval = mps2.converted(to: UnitAcceleration.decimeterpers2)
//                return formatter.string(from: retval)
//
//            case "Earth Gravity, g":
//                let mps2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.mps2)
//                let retval = mps2.converted(to: UnitAcceleration.gravity)
//                return formatter.string(from: retval)
//
//            case "Foot/Second², fps²":
//                let mps2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.mps2)
//                let retval = mps2.converted(to: UnitAcceleration.fps2)
//                return formatter.string(from: retval)
//
//            case "Galileo, Gal":
//                let mps2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.mps2)
//                let retval = mps2.converted(to: UnitAcceleration.Gal)
//                return formatter.string(from: retval)
//
//            case "Inch/Second², ips²":
//                let mps2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.mps2)
//                let retval = mps2.converted(to: UnitAcceleration.ips2)
//                return formatter.string(from: retval)
//
//            case "Kilometer/Hour², km/h²":
//                let mps2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.mps2)
//                let retval = mps2.converted(to: UnitAcceleration.kmh2)
//                return formatter.string(from: retval)
//
//            case "Kilometer/Second², km/s²":
//                let mps2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.mps2)
//                let retval = mps2.converted(to: UnitAcceleration.kms2)
//                return formatter.string(from: retval)
//
//            case "Knot/Second, kn/s":
//                let mps2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.mps2)
//                let retval = mps2.converted(to: UnitAcceleration.kns2)
//                return formatter.string(from: retval)
//
//            case "Microgal, μgal":
//                let mps2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.mps2)
//                let retval = mps2.converted(to: UnitAcceleration.μGal)
//                return formatter.string(from: retval)
//
//            case "Meter/Second², m/s²":
//                let mps2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.mps2)
//                let retval = mps2.converted(to: UnitAcceleration.metersPerSecondSquared)
//                return formatter.string(from: retval)
//
//            case "Mile/Hour Minute, mph/min":
//                let mps2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.mps2)
//                let retval = mps2.converted(to: UnitAcceleration.mphmin)
//                return formatter.string(from: retval)
//
//            case "Mile/Hour Second, mph/s":
//                let mps2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.mps2)
//                let retval = mps2.converted(to: UnitAcceleration.mphsec)
//                return formatter.string(from: retval)
//
//            case "Centigal, cGal":
//                let mps2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.mps2)
//                let retval = mps2.converted(to: UnitAcceleration.cGal)
//                return formatter.string(from: retval)
//
//            case "Milligal, mGal":
//                let mps2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.mps2)
//                let retval = mps2.converted(to: UnitAcceleration.mGal)
//                return formatter.string(from: retval)
//
//
//            default:
//
//                let mps2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.mps2)
//                let retval = mps2.converted(to: UnitAcceleration.yds2)
//                return formatter.string(from: retval)
//            }
//        }
//
//        else if inputUnit1 == "Milligal, mGal" {
//            switch inputUnit2 {
//            case "Decigal, dGal":
//                let mGal = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.mGal)
//                let retval = mGal.converted(to: UnitAcceleration.dGal)
//                return formatter.string(from: retval)
//
//            case "Decimeter/Second², dm/s²":
//                let mGal = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.mGal)
//                let retval = mGal.converted(to: UnitAcceleration.decimeterpers2)
//                return formatter.string(from: retval)
//
//            case "Earth Gravity, g":
//                let mGal = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.mGal)
//                let retval = mGal.converted(to: UnitAcceleration.gravity)
//                return formatter.string(from: retval)
//
//            case "Foot/Second², fps²":
//                let mGal = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.mGal)
//                let retval = mGal.converted(to: UnitAcceleration.fps2)
//                return formatter.string(from: retval)
//
//            case "Galileo, Gal":
//                let mGal = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.mGal)
//                let retval = mGal.converted(to: UnitAcceleration.Gal)
//                return formatter.string(from: retval)
//
//            case "Inch/Second², ips²":
//                let mGal = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.mGal)
//                let retval = mGal.converted(to: UnitAcceleration.ips2)
//                return formatter.string(from: retval)
//
//            case "Kilometer/Hour², km/h²":
//                let mGal = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.mGal)
//                let retval = mGal.converted(to: UnitAcceleration.kmh2)
//                return formatter.string(from: retval)
//
//            case "Kilometer/Second², km/s²":
//                let mGal = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.mGal)
//                let retval = mGal.converted(to: UnitAcceleration.kms2)
//                return formatter.string(from: retval)
//
//            case "Knot/Second, kn/s":
//                let mGal = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.mGal)
//                let retval = mGal.converted(to: UnitAcceleration.kns2)
//                return formatter.string(from: retval)
//
//            case "Microgal, μgal":
//                let mGal = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.mGal)
//                let retval = mGal.converted(to: UnitAcceleration.μGal)
//                return formatter.string(from: retval)
//
//            case "Meter/Second², m/s²":
//                let mGal = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.mGal)
//                let retval = mGal.converted(to: UnitAcceleration.metersPerSecondSquared)
//                return formatter.string(from: retval)
//
//            case "Mile/Hour Minute, mph/min":
//                let mGal = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.mGal)
//                let retval = mGal.converted(to: UnitAcceleration.mphmin)
//                return formatter.string(from: retval)
//
//            case "Mile/Hour Second, mph/s":
//                let mGal = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.mGal)
//                let retval = mGal.converted(to: UnitAcceleration.mphsec)
//                return formatter.string(from: retval)
//
//            case "Mile/Second², mps²":
//                let mGal = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.mGal)
//                let retval = mGal.converted(to: UnitAcceleration.mps2)
//                return formatter.string(from: retval)
//
//            case "Centigal, cGal":
//                let mGal = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.mGal)
//                let retval = mGal.converted(to: UnitAcceleration.cGal)
//                return formatter.string(from: retval)
//
//
//            default:
//
//                let mGal = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.mGal)
//                let retval = mGal.converted(to: UnitAcceleration.yds2)
//                return formatter.string(from: retval)
//            }
//        }
//
//        else if inputUnit1 == "Yard/Second², yd/s²" {
//            switch inputUnit2 {
//            case "Decigal, dGal":
//                let yds2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.yds2)
//                let retval = yds2.converted(to: UnitAcceleration.dGal)
//                return formatter.string(from: retval)
//
//            case "Decimeter/Second², dm/s²":
//                let yds2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.yds2)
//                let retval = yds2.converted(to: UnitAcceleration.decimeterpers2)
//                return formatter.string(from: retval)
//
//            case "Earth Gravity, g":
//                let yds2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.yds2)
//                let retval = yds2.converted(to: UnitAcceleration.gravity)
//                return formatter.string(from: retval)
//
//            case "Foot/Second², fps²":
//                let yds2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.yds2)
//                let retval = yds2.converted(to: UnitAcceleration.fps2)
//                return formatter.string(from: retval)
//
//            case "Galileo, Gal":
//                let yds2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.yds2)
//                let retval = yds2.converted(to: UnitAcceleration.Gal)
//                return formatter.string(from: retval)
//
//            case "Inch/Second², ips²":
//                let yds2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.yds2)
//                let retval = yds2.converted(to: UnitAcceleration.ips2)
//                return formatter.string(from: retval)
//
//            case "Kilometer/Hour², km/h²":
//                let yds2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.yds2)
//                let retval = yds2.converted(to: UnitAcceleration.kmh2)
//                return formatter.string(from: retval)
//
//            case "Kilometer/Second², km/s²":
//                let yds2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.yds2)
//                let retval = yds2.converted(to: UnitAcceleration.kms2)
//                return formatter.string(from: retval)
//
//            case "Knot/Second, kn/s":
//                let yds2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.yds2)
//                let retval = yds2.converted(to: UnitAcceleration.kns2)
//                return formatter.string(from: retval)
//
//            case "Microgal, μgal":
//                let yds2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.yds2)
//                let retval = yds2.converted(to: UnitAcceleration.μGal)
//                return formatter.string(from: retval)
//
//            case "Meter/Second², m/s²":
//                let yds2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.yds2)
//                let retval = yds2.converted(to: UnitAcceleration.metersPerSecondSquared)
//                return formatter.string(from: retval)
//
//            case "Mile/Hour Minute, mph/min":
//                let yds2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.yds2)
//                let retval = yds2.converted(to: UnitAcceleration.mphmin)
//                return formatter.string(from: retval)
//
//            case "Mile/Hour Second, mph/s":
//                let yds2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.yds2)
//                let retval = yds2.converted(to: UnitAcceleration.mphsec)
//                return formatter.string(from: retval)
//
//            case "Mile/Second², mps²":
//                let yds2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.yds2)
//                let retval = yds2.converted(to: UnitAcceleration.mps2)
//                return formatter.string(from: retval)
//
//            case "Milligal, mGal":
//                let yds2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.yds2)
//                let retval = yds2.converted(to: UnitAcceleration.mGal)
//                return formatter.string(from: retval)
//
//
//            default:
//
//                let yds2 = Measurement(value: inputval ?? 0.0 , unit: UnitAcceleration.yds2)
//                let retval = yds2.converted(to: UnitAcceleration.cGal)
//                return formatter.string(from: retval)
//            }
//        }
//
//        return String(0.0)
//    }
    
    //                ["Centigal, cGal", "Decigal, dGal", "Decimeter/Second², dm/s²", "Earth Gravity, g", "Foot/Second², fps²", "Galileo, Gal", "Inch/Second², ips²", "Kilometer/Hour², km/h²", "Kilometer/Second², km/s²", "Knot/Second, kn/s", "Microgal, μgal", "Meter/Second², m/s²", "Mile/Hour Minute, mph/min", "Mile/Hour Second, mph/s", "Mile/Second², mps²", "Milligal, mGal", "Yard/Second², yd/s²" ]
    
    
    private func type(_ unit: String) -> UnitAcceleration {
    if unit == "Centigal, cGal" {
        return UnitAcceleration.cGal
    }
    else if unit == "Decigal, dGal" {
        return UnitAcceleration.dGal
    }
    else if unit == "Decimeter/Second², dm/s²" {
        return UnitAcceleration.decimeterpers2
    }
    else if unit == "Earth Gravity, g" {
        return UnitAcceleration.gravity
    }
    else if unit == "Foot/Second², fps²" {
        return UnitAcceleration.fps2
    }
    else if unit == "Galileo, Gal" {
        return UnitAcceleration.Gal
    }
    else if unit == "Inch/Second², ips²" {
        return UnitAcceleration.ips2
    }
    else if unit == "Kilometer/Hour², km/h²" {
        return UnitAcceleration.kmh2
    }
    else if unit == "Kilometer/Second², km/s²" {
        return UnitAcceleration.kms2
    }
    else if unit == "Knot/Second, kn/s" {
        return UnitAcceleration.kns2
    }
    else if unit == "Microgal, μgal" {
        return UnitAcceleration.μGal
    }
    else if unit == "Meter/Second², m/s²" {
        return UnitAcceleration.metersPerSecondSquared
    }
    else if unit == "Mile/Hour Minute, mph/min" {
        return UnitAcceleration.mphmin
    }
    else if unit == "Mile/Hour Second, mph/s" {
        return UnitAcceleration.mphsec
    }
    else if unit == "Mile/Second², mps²" {
        return UnitAcceleration.mps2
    }
        
    else if unit == "Milligal, mGal" {
        return UnitAcceleration.mGal
    }
    else if unit == "Yard/Second², yd/s²" {
        return UnitAcceleration.yds2
    }
    
        return UnitAcceleration.gravity
    }
    
    private func calc(_ unit1val: String, _ unit1: String, _ unit2: String) -> String{
        let formatter = MeasurementFormatter()
        let stringval: String = unit1  +  unit2
        let storedval = (accelerationdict[stringval, default: "1"])
        let operand1 = (unit1val as NSString).doubleValue
        print ("operand 1 ", operand1)
        
        let operand2 = (storedval as NSString).doubleValue
        print ("operand 2 ", operand2)
        return String(operand1 * operand2)
        
    }
}

struct Acceleration_Previews: PreviewProvider {
    static var previews: some View {
        Acceleration()
            .environmentObject(ViewRouter())
            .environmentObject(GlobalEnvironment())
    }
}

extension UnitAcceleration {
    static let cGal = UnitAcceleration(symbol: "cGal", converter: UnitConverterLinear(coefficient: 0.0001))
    static let dGal = UnitAcceleration(symbol: "dGal", converter: UnitConverterLinear(coefficient: 0.001))
    static let decimeterpers2 = UnitAcceleration(symbol: "dm/s²", converter: UnitConverterLinear(coefficient: 0.1))
    static let fps2 = UnitAcceleration(symbol: "fps²", converter: UnitConverterLinear(coefficient: 0.305))
    static let Gal = UnitAcceleration(symbol: "Gal", converter: UnitConverterLinear(coefficient: 0.01))
    static let ips2 = UnitAcceleration(symbol: "ips²", converter: UnitConverterLinear(coefficient: 0.025))
    static let kmh2 = UnitAcceleration(symbol: "km/h²", converter: UnitConverterLinear(coefficient: 0.000077))
    static let kms2 = UnitAcceleration(symbol: "km/s²", converter: UnitConverterLinear(coefficient: 1000))
    static let kns2 = UnitAcceleration(symbol: "kn/s", converter: UnitConverterLinear(coefficient: 0.514))
    static let μGal = UnitAcceleration(symbol: "μgal", converter: UnitConverterLinear(coefficient: 0.00000001))
    static let mphmin = UnitAcceleration(symbol: "mph/min", converter: UnitConverterLinear(coefficient: 0.0075))
    static let mphsec = UnitAcceleration(symbol: "mph/s", converter: UnitConverterLinear(coefficient: 0.447))
    static let mps2 = UnitAcceleration(symbol: "mps²", converter: UnitConverterLinear(coefficient: 1609.344))
    static let mGal = UnitAcceleration(symbol: "mGal", converter: UnitConverterLinear(coefficient: 0.00001))
    static let yds2 = UnitAcceleration(symbol: "yd/s²", converter: UnitConverterLinear(coefficient: 0.914))
}
