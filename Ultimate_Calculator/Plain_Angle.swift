//
//  Plain_Angle.swift
//  Ultimate_Calculator
//
//  Created by Hritik Raj on 8/14/20.
//  Copyright © 2020 Hritik Raj. All rights reserved.
//

import SwiftUI

struct Plain_Angle: View {
        @State var ShowUnit1 = false
        @State var ShowUnit2 = false
        @State var DisplayUnit1 = "Angle"
        @State var DisplayUnit2 = "Angle"
        @EnvironmentObject var viewRouter: ViewRouter
        @EnvironmentObject var env: GlobalEnvironment
    
    var plaindict : [String : String] = ["1/2 circle, 180°1/6 circle, 60°": "0.006 180°", "1/16 circle, 22.5°Gradian, grad": "200 grad", "Minute of Arc, arcmin1/6 circle, 60°": "0 180°", "Radian, radMinute of Arc, arcmin": "3,437.678 arcmins", "Angular Mil (NATO), mil1/16 circle, 22.5°": "1 180°", "1/8 circle, 45°Second of Arc, arcsec": "647,994.816 arcsecs", "Degree of Arc, degDegree of Arc, deg": "1 deg", "Second of Arc, arcsecGradian, grad": "0 grad", "Minute of Arc, arcminAngular Mil (NATO), mil": "0 180°", "Angular Mil (NATO), milRevolution, r": "0.5 rev", "1/10 circle, 36°Revolution, r": "0.5 rev", "Gradian, grad1/10 circle, 36°": "0.005 180°", "Minute of Arc, arcminGradian, grad": "0.019 grad", "Degree of Arc, deg1/4 circle, 90°": "0.006 180°", "1/16 circle, 22.5°1/6 circle, 60°": "1 180°", "Revolution, r1/2 circle, 180°": "360 deg", "1/16 circle, 22.5°1/4 circle, 90°": "1 180°", "1/4 circle, 90°Angular Mil (NATO), mil": "1 180°", "1/16 circle, 22.5°Radian, rad": "3.142 rad", "1/16 circle, 22.5°1/8 circle, 45°": "1 180°", "Revolution, r1/4 circle, 90°": "2 180°", "1/8 circle, 45°Revolution, r": "0.5 rev", "1/2 circle, 180°Minute of Arc, arcmin": "59.999 arcmins", "Degree of Arc, degSecond of Arc, arcsec": "3,599.971 arcsecs", "Gradian, gradGradian, grad": "1 grad", "Gradian, grad1/2 circle, 180°": "0.9 deg", "Angular Mil (NATO), milAngular Mil (NATO), mil": "1 180°", "Second of Arc, arcsec1/8 circle, 45°": "0 180°", "1/10 circle, 36°Radian, rad": "3.142 rad", "1/4 circle, 90°1/10 circle, 36°": "1 180°", "1/4 circle, 90°Gradian, grad": "200 grad", "Degree of Arc, degRevolution, r": "0.003 rev", "Angular Mil (NATO), mil1/8 circle, 45°": "1 180°", "1/10 circle, 36°Angular Mil (NATO), mil": "1 180°", "1/6 circle, 60°1/4 circle, 90°": "1 180°", "Degree of Arc, degGradian, grad": "1.111 grad", "Degree of Arc, degAngular Mil (NATO), mil": "0.006 180°", "Degree of Arc, degRadian, rad": "0.017 rad", "Radian, radGradian, grad": "63.662 grad", "Revolution, r1/6 circle, 60°": "2 180°", "Revolution, rAngular Mil (NATO), mil": "2 180°", "1/4 circle, 90°Minute of Arc, arcmin": "10,799.784 arcmins", "1/4 circle, 90°Second of Arc, arcsec": "647,994.816 arcsecs", "1/16 circle, 22.5°Minute of Arc, arcmin": "10,799.784 arcmins", "Revolution, rMinute of Arc, arcmin": "21,599.568 arcmins", "Degree of Arc, deg1/10 circle, 36°": "0.006 180°", "Minute of Arc, arcmin1/8 circle, 45°": "0 180°", "1/2 circle, 180°1/16 circle, 22.5°": "0.006 180°", "Radian, radSecond of Arc, arcsec": "206,263.156 arcsecs", "1/10 circle, 36°Second of Arc, arcsec": "647,994.816 arcsecs", "1/2 circle, 180°Radian, rad": "0.017 rad", "Minute of Arc, arcminMinute of Arc, arcmin": "1 arcmin", "Minute of Arc, arcminSecond of Arc, arcsec": "60.001 arcsecs", "1/4 circle, 90°1/2 circle, 180°": "180 deg", "Radian, rad1/16 circle, 22.5°": "0.318 180°", "1/10 circle, 36°1/10 circle, 36°": "1 180°", "1/4 circle, 90°1/8 circle, 45°": "1 180°", "Angular Mil (NATO), milGradian, grad": "200 grad", "Radian, rad1/2 circle, 180°": "57.296 deg", "1/10 circle, 36°1/8 circle, 45°": "1 180°", "1/2 circle, 180°1/8 circle, 45°": "0.006 180°", "1/8 circle, 45°1/4 circle, 90°": "1 180°", "1/6 circle, 60°1/6 circle, 60°": "1 180°", "Gradian, grad1/8 circle, 45°": "0.005 180°", "Revolution, rRevolution, r": "1 rev", "Gradian, gradSecond of Arc, arcsec": "3,239.974 arcsecs", "Revolution, rGradian, grad": "400 grad", "1/6 circle, 60°Second of Arc, arcsec": "647,994.816 arcsecs", "1/8 circle, 45°1/16 circle, 22.5°": "1 180°", "Angular Mil (NATO), mil1/2 circle, 180°": "180 deg", "Second of Arc, arcsecDegree of Arc, deg": "0 deg", "1/2 circle, 180°Angular Mil (NATO), mil": "0.006 180°", "Gradian, grad1/4 circle, 90°": "0.005 180°", "Gradian, gradRevolution, r": "0.002 rev", "Gradian, grad1/16 circle, 22.5°": "0.005 180°", "Gradian, gradMinute of Arc, arcmin": "53.999 arcmins", "Minute of Arc, arcminRadian, rad": "0 rad", "1/6 circle, 60°1/10 circle, 36°": "1 180°", "1/8 circle, 45°1/10 circle, 36°": "1 180°", "1/10 circle, 36°1/4 circle, 90°": "1 180°", "1/6 circle, 60°Angular Mil (NATO), mil": "1 180°", "1/2 circle, 180°Second of Arc, arcsec": "3,599.971 arcsecs", "1/6 circle, 60°Degree of Arc, deg": "180 deg", "Angular Mil (NATO), milSecond of Arc, arcsec": "647,994.816 arcsecs", "1/16 circle, 22.5°1/10 circle, 36°": "1 180°", "Degree of Arc, degMinute of Arc, arcmin": "59.999 arcmins", "Radian, rad1/4 circle, 90°": "0.318 180°", "Radian, rad1/8 circle, 45°": "0.318 180°", "Second of Arc, arcsecRadian, rad": "0 rad", "Second of Arc, arcsec1/6 circle, 60°": "0 180°", "Second of Arc, arcsec1/4 circle, 90°": "0 180°", "Minute of Arc, arcmin1/16 circle, 22.5°": "0 180°", "1/2 circle, 180°1/4 circle, 90°": "0.006 180°", "Gradian, gradRadian, rad": "0.016 rad", "1/8 circle, 45°Gradian, grad": "200 grad", "Angular Mil (NATO), milDegree of Arc, deg": "180 deg", "1/8 circle, 45°Minute of Arc, arcmin": "10,799.784 arcmins", "1/6 circle, 60°Radian, rad": "3.142 rad", "Radian, radDegree of Arc, deg": "57.296 deg", "Minute of Arc, arcmin1/10 circle, 36°": "0 180°", "Angular Mil (NATO), milMinute of Arc, arcmin": "10,799.784 arcmins", "1/4 circle, 90°Degree of Arc, deg": "180 deg", "1/16 circle, 22.5°1/16 circle, 22.5°": "1 180°", "1/6 circle, 60°Gradian, grad": "200 grad", "1/8 circle, 45°1/2 circle, 180°": "180 deg", "Angular Mil (NATO), mil1/4 circle, 90°": "1 180°", "Angular Mil (NATO), mil1/10 circle, 36°": "1 180°", "1/8 circle, 45°1/8 circle, 45°": "1 180°", "1/2 circle, 180°Revolution, r": "0.003 rev", "1/10 circle, 36°Gradian, grad": "200 grad", "1/2 circle, 180°1/2 circle, 180°": "1 deg", "1/10 circle, 36°1/6 circle, 60°": "1 180°", "Radian, radRadian, rad": "1 rad", "Radian, radRevolution, r": "0.159 rev", "Revolution, rDegree of Arc, deg": "360 deg", "Second of Arc, arcsecRevolution, r": "0 rev", "1/4 circle, 90°1/4 circle, 90°": "1 180°", "Radian, rad1/10 circle, 36°": "0.318 180°", "Revolution, r1/16 circle, 22.5°": "2 180°", "1/2 circle, 180°Gradian, grad": "1.111 grad", "1/10 circle, 36°1/16 circle, 22.5°": "1 180°", "Degree of Arc, deg1/16 circle, 22.5°": "0.006 180°", "Second of Arc, arcsec1/2 circle, 180°": "0 deg", "1/8 circle, 45°Degree of Arc, deg": "180 deg", "Degree of Arc, deg1/2 circle, 180°": "1 deg", "Gradian, grad1/6 circle, 60°": "0.005 180°", "Gradian, gradDegree of Arc, deg": "0.9 deg", "1/6 circle, 60°1/16 circle, 22.5°": "1 180°", "Minute of Arc, arcmin1/4 circle, 90°": "0 180°", "Revolution, rRadian, rad": "6.283 rad", "Angular Mil (NATO), mil1/6 circle, 60°": "1 180°", "1/4 circle, 90°Radian, rad": "3.142 rad", "1/6 circle, 60°Revolution, r": "0.5 rev", "1/6 circle, 60°Minute of Arc, arcmin": "10,799.784 arcmins", "Gradian, gradAngular Mil (NATO), mil": "0.005 180°", "Second of Arc, arcsec1/10 circle, 36°": "0 180°", "1/2 circle, 180°Degree of Arc, deg": "1 deg", "1/4 circle, 90°1/16 circle, 22.5°": "1 180°", "Degree of Arc, deg1/8 circle, 45°": "0.006 180°", "Minute of Arc, arcminDegree of Arc, deg": "0.017 deg", "Angular Mil (NATO), milRadian, rad": "3.142 rad", "Minute of Arc, arcminRevolution, r": "0 rev", "Revolution, rSecond of Arc, arcsec": "1,295,989.632 arcsecs", "1/10 circle, 36°1/2 circle, 180°": "180 deg", "Second of Arc, arcsecAngular Mil (NATO), mil": "0 180°", "1/10 circle, 36°Degree of Arc, deg": "180 deg", "Revolution, r1/10 circle, 36°": "2 180°", "Radian, radAngular Mil (NATO), mil": "0.318 180°", "1/16 circle, 22.5°1/2 circle, 180°": "180 deg", "Radian, rad1/6 circle, 60°": "0.318 180°", "1/16 circle, 22.5°Second of Arc, arcsec": "647,994.816 arcsecs", "Revolution, r1/8 circle, 45°": "2 180°", "Second of Arc, arcsec1/16 circle, 22.5°": "0 180°", "1/16 circle, 22.5°Angular Mil (NATO), mil": "1 180°", "Second of Arc, arcsecMinute of Arc, arcmin": "0.017 arcmins", "Second of Arc, arcsecSecond of Arc, arcsec": "1 arcsec", "1/16 circle, 22.5°Degree of Arc, deg": "180 deg", "1/4 circle, 90°Revolution, r": "0.5 rev", "Minute of Arc, arcmin1/2 circle, 180°": "0.017 deg", "1/16 circle, 22.5°Revolution, r": "0.5 rev", "1/6 circle, 60°1/2 circle, 180°": "180 deg", "1/8 circle, 45°Radian, rad": "3.142 rad", "1/10 circle, 36°Minute of Arc, arcmin": "10,799.784 arcmins", "1/2 circle, 180°1/10 circle, 36°": "0.006 180°", "1/8 circle, 45°1/6 circle, 60°": "1 180°", "1/8 circle, 45°Angular Mil (NATO), mil": "1 180°", "Degree of Arc, deg1/6 circle, 60°": "0.006 180°", "1/4 circle, 90°1/6 circle, 60°": "1 180°", "1/6 circle, 60°1/8 circle, 45°": "1 180°"]

    
//            var jointdict : [String : UnitAngle] = [:]
//        
//                        let keys1 =      ["1/2 circle, 180°", "1/4 circle, 90°", "1/6 circle, 60°", "1/8 circle, 45°", "1/10 circle, 36°", "1/16 circle, 22.5°", "Angular Mil (NATO), mil", "Degree of Arc, deg", "Gradian, grad", "Minute of Arc, arcmin", "Radian, rad", "Revolution, r", "Second of Arc, arcsec"]
//                            let keys2 =      ["1/2 circle, 180°", "1/4 circle, 90°", "1/6 circle, 60°", "1/8 circle, 45°", "1/10 circle, 36°", "1/16 circle, 22.5°", "Angular Mil (NATO), mil", "Degree of Arc, deg", "Gradian, grad", "Minute of Arc, arcmin", "Radian, rad", "Revolution, r", "Second of Arc, arcsec"]
//        
//                                                           init () {
//        
//                                                                for i in 1..<plainarray.count {
//                                                                    jointdict[plainarray[i]] = array2[i]
//                                                                }
//        
//        
//                                                                let formatter = MeasurementFormatter()
//                                                                formatter.unitOptions = .providedUnit
//                                                                for itema in keys1 {
//                                                                    for itemb in keys2 {
//                                                                        let itemc = itema + itemb
//                                                                        let val1 = Measurement(value: 1.0 , unit: jointdict[itema] ?? UnitAngle.degrees)
//                                                                        let val2 = val1.converted(to: jointdict[itemb] ?? UnitAngle.degrees)
//                                                                        let storeval =  formatter.string(from: val2)
//                                                                        plaindict[itemc] = storeval
//                                                                    }
//                                                                }
//        
//                                                                print ("Final Dict ", plaindict)
//                                                            }
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
                                    Text(self.DisplayUnit1 + "  "  + env.displayconvertplain)
                                    }
                                .sheet(isPresented: $ShowUnit1) {
                                    ModalPlain(isPresented: self.$ShowUnit1, isPresented1: self.$ShowUnit1, isPresented2: self.$ShowUnit2, currentUnit1: self.$DisplayUnit1, currentUnit2: self.$DisplayUnit2)
                                }
                                    .font(.system(size: 40))
                                    .frame(width: (UIScreen.main.bounds.width - 2 * 12), height: UIScreen.main.bounds.height / 10)
                                    .foregroundColor(.white)
                                    .background(Color.gray)
                                    .cornerRadius(UIScreen.main.bounds.width - 2 * 12)
                        
                                Button(action: {
                                    self.ShowUnit2.toggle()
                                }) {
                                                                        Text(self.DisplayUnit2 + "  " + calc(env.displayconvertplain, self.DisplayUnit1, self.DisplayUnit2))
//                                    Text(self.DisplayUnit2 + "  ")
                                    }
                                    .sheet(isPresented: $ShowUnit2) {
                                        ModalPlain(isPresented: self.$ShowUnit1, isPresented1: self.$ShowUnit1, isPresented2: self.$ShowUnit2, currentUnit1: self.$DisplayUnit1, currentUnit2: self.$DisplayUnit2)
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
           let storedval = (plaindict[stringval, default: "1"])
           let operand1 = (unit1val as NSString).doubleValue
           let operand2 = (storedval as NSString).doubleValue
           return String(operand1 * operand2)
           
       }
    
    
    let plainarray =
    ["1/2 circle, 180°", "1/4 circle, 90°", "1/6 circle, 60°", "1/8 circle, 45°", "1/10 circle, 36°", "1/16 circle, 22.5°", "Angular Mil (NATO), mil", "Degree of Arc, deg", "Gradian, grad", "Minute of Arc, arcmin", "Radian, rad", "Revolution, r", "Second of Arc, arcsec"]
    
    let array2 = [UnitAngle.halfcircle, UnitAngle.quartercircle, UnitAngle.onebysixcircle, UnitAngle.onebyeight, UnitAngle.onebyten, UnitAngle.onebysixteen, UnitAngle.angularmil, UnitAngle.degrees, UnitAngle.gradians, UnitAngle.arcMinutes, UnitAngle.radians, UnitAngle.revolutions, UnitAngle.arcSeconds]
}

struct Plain_Angle_Previews: PreviewProvider {
    static var previews: some View {
        Plain_Angle()
        .environmentObject(ViewRouter())
        .environmentObject(GlobalEnvironment())
    }
}

extension UnitAngle {
    static let halfcircle = UnitAngle(symbol: "180°", converter: UnitConverterLinear(coefficient: 180))
    static let quartercircle = UnitAngle(symbol: "180°", converter: UnitConverterLinear(coefficient: 180))
    static let onebysixcircle = UnitAngle(symbol: "180°", converter: UnitConverterLinear(coefficient: 180))
    static let onebyeight = UnitAngle(symbol: "180°", converter: UnitConverterLinear(coefficient: 180))
    static let onebyten = UnitAngle(symbol: "180°", converter: UnitConverterLinear(coefficient: 180))
    static let onebysixteen = UnitAngle(symbol: "180°", converter: UnitConverterLinear(coefficient: 180))
    static let angularmil = UnitAngle(symbol: "180°", converter: UnitConverterLinear(coefficient: 180))
    
    
}
