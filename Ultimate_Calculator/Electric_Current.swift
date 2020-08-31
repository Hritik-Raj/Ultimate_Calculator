//
//  Electric_Current.swift
//  Ultimate_Calculator
//
//  Created by Hritik Raj on 8/14/20.
//  Copyright © 2020 Hritik Raj. All rights reserved.
//

import SwiftUI

struct Electric_Current: View {
        @State var ShowUnit1 = false
        @State var ShowUnit2 = false
        @State var DisplayUnit1 = "Angle"
        @State var DisplayUnit2 = "Angle"
        @EnvironmentObject var viewRouter: ViewRouter
        @EnvironmentObject var env: GlobalEnvironment
    
        var electricdict : [String : String] = ["Nanoampere, nAMicroampere, μA": "0.001 µA", "Volt/Ohm, V/ΩAmpere, A": "1 A", "Coulomb/Second, C/sCentiampere, cA": "100 cA", "Biot, BiMicroampere, μA": "10,000,000 µA", "Franklin/Second, fk/sVolt/Ohm, V/Ω": "0 cA", "Biot, BiMilliampere, mA": "10,000 mA", "Gilberts, GiGilberts, Gi": "1 cA", "Biot, BiCoulomb/Second, C/s": "10 cA", "Gilberts, GiAmpere, A": "0.796 A", "Deciampere, dANanoampere, nA": "100,000,000 cA", "Microampere, μAGilberts, Gi": "0 cA", "Gigaampere, GACoulomb/Second, C/s": "1,000,000,000 cA", "Nanoampere, nABiot, Bi": "0 biot", "Nanoampere, nAMegaampere, MA": "0 MA", "Microampere, μACoulomb/Second, C/s": "0 cA", "Centiampere, cACoulomb/Second, C/s": "0.01 cA", "Centiampere, cANanoampere, nA": "10,000,000 cA", "Gilberts, GiBiot, Bi": "0.08 biot", "Nanoampere, nAGilberts, Gi": "0 cA", "Coulomb/Second, C/sBiot, Bi": "0.1 biot", "Volt/Ohm, V/ΩFranklin/Second, fk/s": "3,030,303,030.303 cA", "Biot, BiCentiampere, cA": "1,000 cA", "Gigaampere, GAAmpere, A": "1,000,000,000 A", "Deciampere, dACoulomb/Second, C/s": "0.1 cA", "Ampere, AVolt/Ohm, V/Ω": "1 cA", "Coulomb/Second, C/sGilberts, Gi": "1.256 cA", "Deciampere, dAGilberts, Gi": "0.126 cA", "Megaampere, MABiot, Bi": "100,000 biot", "Microampere, μADeciampere, dA": "0 cA", "Gilberts, GiMicroampere, μA": "796,000 µA", "Gilberts, GiCentiampere, cA": "79.6 cA", "Gilberts, GiFranklin/Second, fk/s": "2,412,121,212.121 cA", "Ampere, AFranklin/Second, fk/s": "3,030,303,030.303 cA", "Milliampere, mAMicroampere, μA": "1,000 µA", "Megaampere, MANanoampere, nA": "1,000,000,000,000,000 cA", "Milliampere, mADeciampere, dA": "0.01 cA", "Coulomb/Second, C/sMilliampere, mA": "1,000 mA", "Deciampere, dACentiampere, cA": "10 cA", "Gilberts, GiNanoampere, nA": "796,000,000 cA", "Megaampere, MAMilliampere, mA": "1,000,000,000 mA", "Gigaampere, GANanoampere, nA": "1,000,000,000,000,000,000 cA", "Gigaampere, GABiot, Bi": "100,000,000 biot", "Biot, BiVolt/Ohm, V/Ω": "10 cA", "Franklin/Second, fk/sCentiampere, cA": "0 cA", "Volt/Ohm, V/ΩCentiampere, cA": "100 cA", "Ampere, ANanoampere, nA": "1,000,000,000 cA", "Volt/Ohm, V/ΩMicroampere, μA": "1,000,000 µA", "Deciampere, dAMilliampere, mA": "100 mA", "Centiampere, cAFranklin/Second, fk/s": "30,303,030.303 cA", "Ampere, ABiot, Bi": "0.1 biot", "Milliampere, mAVolt/Ohm, V/Ω": "0.001 cA", "Nanoampere, nAVolt/Ohm, V/Ω": "0 cA", "Centiampere, cAMicroampere, μA": "10,000 µA", "Franklin/Second, fk/sCoulomb/Second, C/s": "0 cA", "Gilberts, GiCoulomb/Second, C/s": "0.796 cA", "Centiampere, cAMilliampere, mA": "10 mA", "Microampere, μAGigaampere, GA": "0 cA", "Megaampere, MACoulomb/Second, C/s": "1,000,000 cA", "Franklin/Second, fk/sGigaampere, GA": "0 cA", "Gigaampere, GACentiampere, cA": "100,000,000,000 cA", "Gilberts, GiMegaampere, MA": "0 MA", "Microampere, μAFranklin/Second, fk/s": "3,030.303 cA", "Milliampere, mAMegaampere, MA": "0 MA", "Volt/Ohm, V/ΩMilliampere, mA": "1,000 mA", "Centiampere, cAGilberts, Gi": "0.013 cA", "Coulomb/Second, C/sMicroampere, μA": "1,000,000 µA", "Ampere, ACentiampere, cA": "100 cA", "Milliampere, mACentiampere, cA": "0.1 cA", "Nanoampere, nAAmpere, A": "0 A", "Volt/Ohm, V/ΩMegaampere, MA": "0 MA", "Gilberts, GiVolt/Ohm, V/Ω": "0.796 cA", "Franklin/Second, fk/sGilberts, Gi": "0 cA", "Megaampere, MAMegaampere, MA": "1 MA", "Nanoampere, nAGigaampere, GA": "0 cA", "Gigaampere, GAFranklin/Second, fk/s": "3,030,303,030,303,030,300 cA", "Ampere, AGigaampere, GA": "0 cA", "Milliampere, mAGigaampere, GA": "0 cA", "Volt/Ohm, V/ΩGilberts, Gi": "1.256 cA", "Gilberts, GiMilliampere, mA": "796 mA", "Microampere, μAMegaampere, MA": "0 MA", "Milliampere, mAAmpere, A": "0.001 A", "Biot, BiGilberts, Gi": "12.563 cA", "Deciampere, dABiot, Bi": "0.01 biot", "Volt/Ohm, V/ΩCoulomb/Second, C/s": "1 cA", "Coulomb/Second, C/sVolt/Ohm, V/Ω": "1 cA", "Biot, BiAmpere, A": "10 A", "Franklin/Second, fk/sNanoampere, nA": "0.33 cA", "Coulomb/Second, C/sAmpere, A": "1 A", "Megaampere, MAVolt/Ohm, V/Ω": "1,000,000 cA", "Franklin/Second, fk/sMicroampere, μA": "0 µA", "Milliampere, mAGilberts, Gi": "0.001 cA", "Biot, BiBiot, Bi": "1 biot", "Ampere, ACoulomb/Second, C/s": "1 cA", "Franklin/Second, fk/sBiot, Bi": "0 biot", "Coulomb/Second, C/sDeciampere, dA": "10 cA", "Ampere, AMicroampere, μA": "1,000,000 µA", "Megaampere, MADeciampere, dA": "10,000,000 cA", "Franklin/Second, fk/sMilliampere, mA": "0 mA", "Coulomb/Second, C/sGigaampere, GA": "0 cA", "Megaampere, MACentiampere, cA": "100,000,000 cA", "Ampere, AMegaampere, MA": "0 MA", "Megaampere, MAGigaampere, GA": "0.001 cA", "Microampere, μANanoampere, nA": "1,000 cA", "Centiampere, cAMegaampere, MA": "0 MA", "Deciampere, dADeciampere, dA": "1 cA", "Volt/Ohm, V/ΩBiot, Bi": "0.1 biot", "Coulomb/Second, C/sFranklin/Second, fk/s": "3,030,303,030.303 cA", "Franklin/Second, fk/sFranklin/Second, fk/s": "1 cA", "Franklin/Second, fk/sDeciampere, dA": "0 cA", "Deciampere, dAGigaampere, GA": "0 cA", "Ampere, AAmpere, A": "1 A", "Centiampere, cACentiampere, cA": "1 cA", "Microampere, μAAmpere, A": "0 A", "Gigaampere, GAVolt/Ohm, V/Ω": "1,000,000,000 cA", "Nanoampere, nAMilliampere, mA": "0 mA", "Deciampere, dAMicroampere, μA": "100,000 µA", "Centiampere, cAGigaampere, GA": "0 cA", "Milliampere, mANanoampere, nA": "1,000,000 cA", "Biot, BiDeciampere, dA": "100 cA", "Franklin/Second, fk/sMegaampere, MA": "0 MA", "Nanoampere, nADeciampere, dA": "0 cA", "Gigaampere, GAGigaampere, GA": "1 cA", "Megaampere, MAFranklin/Second, fk/s": "3,030,303,030,303,030.5 cA", "Volt/Ohm, V/ΩGigaampere, GA": "0 cA", "Centiampere, cAVolt/Ohm, V/Ω": "0.01 cA", "Megaampere, MAGilberts, Gi": "1,256,281.407 cA", "Microampere, μAMilliampere, mA": "0.001 mA", "Gilberts, GiDeciampere, dA": "7.96 cA", "Nanoampere, nACentiampere, cA": "0 cA", "Microampere, μABiot, Bi": "0 biot", "Centiampere, cAAmpere, A": "0.01 A", "Franklin/Second, fk/sAmpere, A": "0 A", "Centiampere, cADeciampere, dA": "0.1 cA", "Ampere, ADeciampere, dA": "10 cA", "Gigaampere, GAGilberts, Gi": "1,256,281,407.035 cA", "Megaampere, MAAmpere, A": "1,000,000 A", "Deciampere, dAAmpere, A": "0.1 A", "Ampere, AGilberts, Gi": "1.256 cA", "Volt/Ohm, V/ΩVolt/Ohm, V/Ω": "1 cA", "Megaampere, MAMicroampere, μA": "1,000,000,000,000 µA", "Deciampere, dAMegaampere, MA": "0 MA", "Gigaampere, GAMicroampere, μA": "1,000,000,000,000,000 µA", "Ampere, AMilliampere, mA": "1,000 mA", "Microampere, μAMicroampere, μA": "1 µA", "Centiampere, cABiot, Bi": "0.001 biot", "Milliampere, mABiot, Bi": "0 biot", "Deciampere, dAVolt/Ohm, V/Ω": "0.1 cA", "Coulomb/Second, C/sCoulomb/Second, C/s": "1 cA", "Biot, BiMegaampere, MA": "0 MA", "Milliampere, mACoulomb/Second, C/s": "0.001 cA", "Microampere, μACentiampere, cA": "0 cA", "Microampere, μAVolt/Ohm, V/Ω": "0 cA", "Nanoampere, nACoulomb/Second, C/s": "0 cA", "Biot, BiNanoampere, nA": "10,000,000,000 cA", "Volt/Ohm, V/ΩDeciampere, dA": "10 cA", "Gigaampere, GADeciampere, dA": "10,000,000,000 cA", "Nanoampere, nANanoampere, nA": "1 cA", "Biot, BiGigaampere, GA": "0 cA", "Coulomb/Second, C/sNanoampere, nA": "1,000,000,000 cA", "Nanoampere, nAFranklin/Second, fk/s": "3.03 cA", "Volt/Ohm, V/ΩNanoampere, nA": "1,000,000,000 cA", "Gigaampere, GAMegaampere, MA": "1,000 MA", "Gilberts, GiGigaampere, GA": "0 cA", "Gigaampere, GAMilliampere, mA": "1,000,000,000,000 mA", "Milliampere, mAFranklin/Second, fk/s": "3,030,303.03 cA", "Deciampere, dAFranklin/Second, fk/s": "303,030,303.03 cA", "Biot, BiFranklin/Second, fk/s": "30,303,030,303.03 cA", "Coulomb/Second, C/sMegaampere, MA": "0 MA", "Milliampere, mAMilliampere, mA": "1 mA"]

        
//        let keys1 =
//                   ["Ampere, A", "Biot, Bi", "Centiampere, cA", "Coulomb/Second, C/s", "Deciampere, dA", "Franklin/Second, fk/s", "Gigaampere, GA", "Gilberts, Gi", "Megaampere, MA", "Microampere, μA", "Milliampere, mA", "Nanoampere, nA", "Volt/Ohm, V/Ω"]
//        let keys2 =
//               ["Ampere, A", "Biot, Bi", "Centiampere, cA", "Coulomb/Second, C/s", "Deciampere, dA", "Franklin/Second, fk/s", "Gigaampere, GA", "Gilberts, Gi", "Megaampere, MA", "Microampere, μA", "Milliampere, mA", "Nanoampere, nA", "Volt/Ohm, V/Ω"]
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
//                    electricdict[itemc] = storeval
//                }
//            }
//
//            print ("Final Dict :", electricdict)
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
                                    Text(self.DisplayUnit1 + "  "  + env.displayconvertelec)
                                    }
                                .sheet(isPresented: $ShowUnit1) {
                                    ModalElectric(isPresented: self.$ShowUnit1, isPresented1: self.$ShowUnit1, isPresented2: self.$ShowUnit2, currentUnit1: self.$DisplayUnit1, currentUnit2: self.$DisplayUnit2)
                                }
                                    .font(.system(size: 40))
                                    .frame(width: (UIScreen.main.bounds.width - 2 * 12), height: UIScreen.main.bounds.height / 10)
                                    .foregroundColor(.white)
                                    .background(Color.gray)
                                    .cornerRadius(UIScreen.main.bounds.width - 2 * 12)
                        
                                Button(action: {
                                    self.ShowUnit2.toggle()
                                }) {
                                                                        Text(self.DisplayUnit2 + "  " + calc(env.displayconvertelec, self.DisplayUnit1, self.DisplayUnit2))
//                                    Text(self.DisplayUnit2 + "  ")
                                    }
                                    .sheet(isPresented: $ShowUnit2) {
                                        ModalElectric(isPresented: self.$ShowUnit1, isPresented1: self.$ShowUnit1, isPresented2: self.$ShowUnit2, currentUnit1: self.$DisplayUnit1, currentUnit2: self.$DisplayUnit2)
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
    
//    let electricarray =
//               ["Ampere, A", "Biot, Bi", "Centiampere, cA", "Coulomb/Second, C/s", "Deciampere, dA", "Franklin/Second, fk/s", "Gigaampere, GA", "Gilberts, Gi", "Megaampere, MA", "Microampere, μA", "Milliampere, mA", "Nanoampere, nA", "Volt/Ohm, V/Ω"]
    
    private func calc(_ unit1val: String, _ unit1: String, _ unit2: String) -> String{
        let formatter = MeasurementFormatter()
        let stringval: String = unit1  +  unit2
        let storedval = (electricdict[stringval, default: "1"])
        let operand1 = (unit1val as NSString).doubleValue
        let operand2 = (storedval as NSString).doubleValue
        return String(operand1 * operand2)
        
    }
    
    private func type(_ unit: String) -> UnitElectricCurrent {
    if unit == "Ampere, A" {
        return UnitElectricCurrent.amperes
    }
    else if unit == "Biot, Bi" {
        return UnitElectricCurrent.biot
    }
    else if unit == "Centiampere, cA" {
        return UnitElectricCurrent.centiA
    }
    else if unit == "Coulomb/Second, C/s" {
        return UnitElectricCurrent.coulombpersec
    }
    else if unit == "Deciampere, dA" {
        return UnitElectricCurrent.deciA
    }
    else if unit == "Franklin/Second, fk/s" {
        return UnitElectricCurrent.frankpersec
    }
    else if unit == "Gigaampere, GA" {
        return UnitElectricCurrent.GigaA
    }
    else if unit == "Gilberts, Gi" {
        return UnitElectricCurrent.gilbert
    }
    else if unit == "Megaampere, MA" {
        return UnitElectricCurrent.megaamperes
    }
    else if unit == "Microampere, μA" {
        return UnitElectricCurrent.microamperes
    }
    else if unit == "Milliampere, mA" {
        return UnitElectricCurrent.milliamperes
    }
    else if unit == "Nanoampere, nA" {
        return UnitElectricCurrent.nanoA
    }
    else if unit == "Volt/Ohm, V/Ω" {
        return UnitElectricCurrent.voltperohm
    }
    
    
        return UnitElectricCurrent.amperes
    }

}

struct Electric_Current_Previews: PreviewProvider {
    static var previews: some View {
        Electric_Current()
        .environmentObject(ViewRouter())
        .environmentObject(GlobalEnvironment())
    }
}



extension UnitElectricCurrent {
    
//     ["Ampere, A", "Biot, Bi", "Centiampere, cA", "Coulomb/Second, C/s", "Deciampere, dA", "Franklin/Second, fk/s", "Gigaampere, GA", "Gilberts, Gi", "Megaampere, MA", "Microampere, μA", "Milliampere, mA", "Nanoampere, nA", "Volt/Ohm, V/Ω"]
    static let  biot = UnitElectricCurrent(symbol: "biot", converter: UnitConverterLinear(coefficient: 10))
    static let centiA = UnitElectricCurrent(symbol: "cA", converter: UnitConverterLinear(coefficient: 0.01))
    static let coulombpersec = UnitElectricCurrent(symbol: "cA", converter: UnitConverterLinear(coefficient: 1))
    static let deciA = UnitElectricCurrent(symbol: "cA", converter: UnitConverterLinear(coefficient: 0.1))
    static let frankpersec = UnitElectricCurrent(symbol: "cA", converter: UnitConverterLinear(coefficient: 0.00000000033))
    static let GigaA = UnitElectricCurrent(symbol: "cA", converter: UnitConverterLinear(coefficient: 1000000000))
    static let gilbert = UnitElectricCurrent(symbol: "cA", converter: UnitConverterLinear(coefficient: 0.796))
    static let nanoA = UnitElectricCurrent(symbol: "cA", converter: UnitConverterLinear(coefficient: 0.000000001))
    static let voltperohm = UnitElectricCurrent(symbol: "cA", converter: UnitConverterLinear(coefficient: 1))
}
