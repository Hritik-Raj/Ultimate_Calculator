//
//  Network_Speed.swift
//  Ultimate_Calculator
//
//  Created by Hritik Raj on 8/14/20.
//  Copyright © 2020 Hritik Raj. All rights reserved.
//

import SwiftUI

struct Network_Speed: View {
        @State var ShowUnit1 = false
        @State var ShowUnit2 = false
        @State var DisplayUnit1 = "Angle"
        @State var DisplayUnit2 = "Angle"
        @EnvironmentObject var viewRouter: ViewRouter
        @EnvironmentObject var env: GlobalEnvironment
    
    var networkdict : [String : String] = ["Bit/Second, bpsGigabyte/Second, GBps": "0 ", "Terabit/Second, TbpsKilobit/Second, Kbps": "1,000,000,000 ", "Terabyte/Second, TBpsMegabit/Second, Mbps": "8,000,000 ", "Megabyte/Second, MBpsMegabit/Second, Mbps": "8 ", "Gigabit/Second, GbpsMegabit/Second, Mbps": "1,000 ", "Kilobyte/Second, KBpsTerabyte/Second, TBps": "0 ", "Gigabyte/Second, GBpsBit/Second, bps": "1,000,000,000 ", "Bit/Second, bpsTerabyte/Second, TBps": "0 ", "Gigabit/Second, GbpsKilobit/Second, Kbps": "1,000,000 ", "Terabit/Second, TbpsKilobyte/Second, KBps": "125,000,000 ", "Byte/Second, BpsTerabyte/Second, TBps": "0 ", "Gigabyte/Second, GBpsKilobyte/Second, KBps": "1,000,000 ", "Kilobit/Second, KbpsMegabyte/Second, MBps": "0 ", "Kilobit/Second, KbpsByte/Second, Bps": "125 ", "Gigabyte/Second, GBpsMegabyte/Second, MBps": "1,000 ", "Megabyte/Second, MBpsKilobit/Second, Kbps": "8,000 ", "Terabyte/Second, TBpsKilobit/Second, Kbps": "8,000,000,000 ", "Kilobyte/Second, KBpsMegabyte/Second, MBps": "0.001 ", "Megabyte/Second, MBpsByte/Second, Bps": "1,000,000 ", "Bit/Second, bpsMegabyte/Second, MBps": "0 ", "Megabyte/Second, MBpsTerabyte/Second, TBps": "0 ", "Kilobyte/Second, KBpsKilobit/Second, Kbps": "8 ", "Kilobyte/Second, KBpsByte/Second, Bps": "1,000 ", "Byte/Second, BpsGigabyte/Second, GBps": "0 ", "Megabyte/Second, MBpsMegabyte/Second, MBps": "1 ", "Terabit/Second, TbpsGigabit/Second, Gbps": "1,000 ", "Gigabit/Second, GbpsBit/Second, bps": "125,000,000 ", "Gigabyte/Second, GBpsMegabit/Second, Mbps": "8,000 ", "Gigabit/Second, GbpsTerabyte/Second, TBps": "0 ", "Terabyte/Second, TBpsTerabit/Second, Tbps": "8 ", "Megabyte/Second, MBpsKilobyte/Second, KBps": "1,000 ", "Byte/Second, BpsBit/Second, bps": "1 ", "Bit/Second, bpsTerabit/Second, Tbps": "0 ", "Gigabyte/Second, GBpsTerabit/Second, Tbps": "0.008 ", "Terabyte/Second, TBpsGigabit/Second, Gbps": "8,000 ", "Bit/Second, bpsBit/Second, bps": "1 ", "Kilobit/Second, KbpsGigabit/Second, Gbps": "0 ", "Terabit/Second, TbpsGigabyte/Second, GBps": "125 ", "Gigabyte/Second, GBpsGigabyte/Second, GBps": "1 ", "Bit/Second, bpsKilobit/Second, Kbps": "0.008 ", "Megabit/Second, MbpsBit/Second, bps": "125,000 ", "Byte/Second, BpsTerabit/Second, Tbps": "0 ", "Megabit/Second, MbpsKilobit/Second, Kbps": "1,000 ", "Kilobyte/Second, KBpsKilobyte/Second, KBps": "1 ", "Gigabit/Second, GbpsByte/Second, Bps": "125,000,000 ", "Terabyte/Second, TBpsMegabyte/Second, MBps": "1,000,000 ", "Gigabit/Second, GbpsGigabit/Second, Gbps": "1 ", "Byte/Second, BpsKilobit/Second, Kbps": "0.008 ", "Byte/Second, BpsKilobyte/Second, KBps": "0.001 ", "Byte/Second, BpsByte/Second, Bps": "1 ", "Bit/Second, bpsKilobyte/Second, KBps": "0.001 ", "Kilobit/Second, KbpsGigabyte/Second, GBps": "0 ", "Terabyte/Second, TBpsByte/Second, Bps": "1,000,000,000,000 ", "Terabyte/Second, TBpsGigabyte/Second, GBps": "1,000 ", "Kilobyte/Second, KBpsMegabit/Second, Mbps": "0.008 ", "Terabit/Second, TbpsMegabit/Second, Mbps": "1,000,000 ", "Kilobit/Second, KbpsKilobit/Second, Kbps": "1 ", "Kilobyte/Second, KBpsGigabit/Second, Gbps": "0 ", "Megabit/Second, MbpsTerabit/Second, Tbps": "0 ", "Kilobit/Second, KbpsTerabit/Second, Tbps": "0 ", "Megabyte/Second, MBpsTerabit/Second, Tbps": "0 ", "Byte/Second, BpsMegabyte/Second, MBps": "0 ", "Terabit/Second, TbpsTerabit/Second, Tbps": "1 ", "Terabyte/Second, TBpsKilobyte/Second, KBps": "1,000,000,000 ", "Gigabit/Second, GbpsMegabyte/Second, MBps": "125 ", "Megabit/Second, MbpsKilobyte/Second, KBps": "125 ", "Terabit/Second, TbpsByte/Second, Bps": "125,000,000,000 ", "Bit/Second, bpsByte/Second, Bps": "1 ", "Gigabyte/Second, GBpsByte/Second, Bps": "1,000,000,000 ", "Gigabit/Second, GbpsGigabyte/Second, GBps": "0.125 ", "Kilobit/Second, KbpsTerabyte/Second, TBps": "0 ", "Gigabyte/Second, GBpsGigabit/Second, Gbps": "8 ", "Kilobit/Second, KbpsMegabit/Second, Mbps": "0.001 ", "Megabit/Second, MbpsGigabyte/Second, GBps": "0 ", "Gigabyte/Second, GBpsTerabyte/Second, TBps": "0.001 ", "Byte/Second, BpsMegabit/Second, Mbps": "0 ", "Terabit/Second, TbpsTerabyte/Second, TBps": "0.125 ", "Kilobyte/Second, KBpsTerabit/Second, Tbps": "0 ", "Kilobyte/Second, KBpsGigabyte/Second, GBps": "0 ", "Bit/Second, bpsMegabit/Second, Mbps": "0 ", "Megabit/Second, MbpsMegabit/Second, Mbps": "1 ", "Megabit/Second, MbpsByte/Second, Bps": "125,000 ", "Gigabyte/Second, GBpsKilobit/Second, Kbps": "8,000,000 ", "Megabit/Second, MbpsMegabyte/Second, MBps": "0.125 ", "Terabyte/Second, TBpsTerabyte/Second, TBps": "1 ", "Byte/Second, BpsGigabit/Second, Gbps": "0 ", "Megabyte/Second, MBpsBit/Second, bps": "1,000,000 ", "Kilobit/Second, KbpsBit/Second, bps": "125 ", "Kilobyte/Second, KBpsBit/Second, bps": "1,000 ", "Terabit/Second, TbpsBit/Second, bps": "125,000,000,000 ", "Megabyte/Second, MBpsGigabit/Second, Gbps": "0.008 ", "Kilobit/Second, KbpsKilobyte/Second, KBps": "0.125 ", "Bit/Second, bpsGigabit/Second, Gbps": "0 ", "Terabyte/Second, TBpsBit/Second, bps": "1,000,000,000,000 ", "Gigabit/Second, GbpsKilobyte/Second, KBps": "125,000 ", "Megabit/Second, MbpsGigabit/Second, Gbps": "0.001 ", "Megabit/Second, MbpsTerabyte/Second, TBps": "0 ", "Megabyte/Second, MBpsGigabyte/Second, GBps": "0.001 ", "Terabit/Second, TbpsMegabyte/Second, MBps": "125,000 ", "Gigabit/Second, GbpsTerabit/Second, Tbps": "0.001 "]

    var jointdict : [String : UnitNetwork] = [:]
    
//    let keys1 =
//    ["Bit/Second, bps", "Byte/Second, Bps", "Gigabit/Second, Gbps",
//     "Gigabyte/Second, GBps", "Kilobit/Second, Kbps", "Kilobyte/Second, KBps", "Megabit/Second, Mbps",
//     "Megabyte/Second, MBps", "Terabit/Second, Tbps", "Terabyte/Second, TBps"]
//    
//    let keys2 =
//    ["Bit/Second, bps", "Byte/Second, Bps", "Gigabit/Second, Gbps",
//     "Gigabyte/Second, GBps", "Kilobit/Second, Kbps", "Kilobyte/Second, KBps", "Megabit/Second, Mbps",
//     "Megabyte/Second, MBps", "Terabit/Second, Tbps", "Terabyte/Second, TBps"]
//    
//        init () {
//    
//                                        for i in 1..<networkarray.count {
//                                            jointdict[networkarray[i]] = array2[i]
//                                        }
//    
//    
//                                        let formatter = MeasurementFormatter()
//                                        formatter.unitOptions = .providedUnit
//                                        for itema in keys1 {
//                                            for itemb in keys2 {
//                                                let itemc = itema + itemb
//                                                let val1 = Measurement(value: 1.0 , unit: jointdict[itema] ?? UnitNetwork.bytepersec)
//                                                let val2 = val1.converted(to: jointdict[itemb] ?? UnitNetwork.bytepersec)
//                                                let storeval =  formatter.string(from: val2)
//                                                networkdict[itemc] = storeval
//                                            }
//                                        }
//    
//                                        print ("Final Dict :", networkdict)
//                                    }
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
                                    Text(self.DisplayUnit1 + "  "  + env.displayconvertnetw)
                                    }
                                .sheet(isPresented: $ShowUnit1) {
                                    ModalNetwork(isPresented: self.$ShowUnit1, isPresented1: self.$ShowUnit1, isPresented2: self.$ShowUnit2, currentUnit1: self.$DisplayUnit1, currentUnit2: self.$DisplayUnit2)
                                }
                                    .font(.system(size: 40))
                                    .frame(width: (UIScreen.main.bounds.width - 2 * 12), height: UIScreen.main.bounds.height / 10)
                                    .foregroundColor(.white)
                                    .background(Color.gray)
                                    .cornerRadius(UIScreen.main.bounds.width - 2 * 12)
                        
                                Button(action: {
                                    self.ShowUnit2.toggle()
                                }) {
                                                                        Text(self.DisplayUnit2 + "  " + calc(env.displayconvertnetw, self.DisplayUnit1, self.DisplayUnit2))
//                                    Text(self.DisplayUnit2 + "  ")
                                    }
                                    .sheet(isPresented: $ShowUnit2) {
                                        ModalNetwork(isPresented: self.$ShowUnit1, isPresented1: self.$ShowUnit1, isPresented2: self.$ShowUnit2, currentUnit1: self.$DisplayUnit1, currentUnit2: self.$DisplayUnit2)
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
    
    let networkarray =
    ["Bit/Second, bps", "Byte/Second, Bps", "Gigabit/Second, Gbps",
     "Gigabyte/Second, GBps", "Kilobit/Second, Kbps", "Kilobyte/Second, KBps", "Megabit/Second, Mbps",
     "Megabyte/Second, MBps", "Terabit/Second, Tbps", "Terabyte/Second, TBps"]
    
    let array2 = [UnitNetwork.bitpersec, UnitNetwork.bytepersec, UnitNetwork.gigabitpersec, UnitNetwork.gigabytepersec, UnitNetwork.kilobitpersec, UnitNetwork.kilobytepersec, UnitNetwork.megabitpersec, UnitNetwork.megabytepersec, UnitNetwork.terabitpersec, UnitNetwork.terabytepersec]
    
    private func calc(_ unit1val: String, _ unit1: String, _ unit2: String) -> String{
        let formatter = MeasurementFormatter()
        let stringval: String = unit1  +  unit2
        let storedval = (networkdict[stringval, default: "1"])
        let operand1 = (unit1val as NSString).doubleValue
        let operand2 = (storedval as NSString).doubleValue
        return String(operand1 * operand2)
        
    }
}

struct Network_Speed_Previews: PreviewProvider {
    static var previews: some View {
        Network_Speed()
        .environmentObject(ViewRouter())
        .environmentObject(GlobalEnvironment())
    }
}


public final class UnitNetwork: Dimension {
    
    
    static let bitpersec = UnitNetwork(symbol: "", converter: UnitConverterLinear(coefficient: 0.125))
    static let bytepersec = UnitNetwork(symbol: "", converter: UnitConverterLinear(coefficient: 1))
    static let gigabitpersec = UnitNetwork(symbol: "", converter: UnitConverterLinear(coefficient: 125000000))
    static let gigabytepersec = UnitNetwork(symbol: "", converter: UnitConverterLinear(coefficient: 1000000000))
    static let kilobitpersec = UnitNetwork(symbol: "", converter: UnitConverterLinear(coefficient: 125))
    static let kilobytepersec = UnitNetwork(symbol: "", converter: UnitConverterLinear(coefficient: 1000))
    static let megabitpersec = UnitNetwork(symbol: "", converter: UnitConverterLinear(coefficient: 125000))
    static let megabytepersec = UnitNetwork(symbol: "", converter: UnitConverterLinear(coefficient: 1000000))
    static let terabitpersec =  UnitNetwork(symbol: "", converter: UnitConverterLinear(coefficient: 125000000000))
    static let terabytepersec =  UnitNetwork(symbol: "", converter: UnitConverterLinear(coefficient: 1000000000000))

    public override class func baseUnit() -> UnitNetwork {
        return bytepersec
    }
}
