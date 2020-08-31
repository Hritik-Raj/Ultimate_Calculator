//
//  Data.swift
//  Ultimate_Calculator
//
//  Created by Hritik Raj on 8/14/20.
//  Copyright © 2020 Hritik Raj. All rights reserved.
//

import SwiftUI

struct Data: View {
        @State var ShowUnit1 = false
        @State var ShowUnit2 = false
        @State var DisplayUnit1 = "Angle"
        @State var DisplayUnit2 = "Angle"
        @EnvironmentObject var viewRouter: ViewRouter
        @EnvironmentObject var env: GlobalEnvironment
        var datadict : [String : String] =
            
           ["Kibibyte, KiBMebibyte, MiB": "0 MiB", "Tebibyte, TiBBit, Bit": "8,796,093,022,208 bit", "Pebibyte, PiBGigabyte, GB": "1,125,899.907 GB", "Kilobyte, kBKilobyte, kB": "1 kB", "Gigabyte, GBGigabyte, GB": "1 GB", "Byte, bPetabyte, PB": "0 PB", "Megabyte, MBKilobyte, kB": "1,000 kB", "Kibibyte, KiBKilobyte, kB": "0.128 kB", "Bit, BitByte, b": "0.125 byte", "Gigabyte, GBPebibyte, PiB": "0 PiB", "Kilobyte, kBGigabyte, GB": "0 GB", "Kibibyte, KiBMegabyte, MB": "0 MB", "Kilobyte, kBMegabyte, MB": "0.001 MB", "Tebibyte, TiBKilobyte, kB": "1,099,511,627.776 kB", "Mebibyte, MiBPebibyte, PiB": "0 PiB", "Petabyte, PBGigabyte, GB": "1,000,000 GB", "Megabyte, MBPebibyte, PiB": "0 PiB", "Gigabyte, GBMebibyte, MiB": "953.674 MiB", "Kilobyte, kBByte, b": "1,000 byte", "Bit, BitGibibyte, GiB": "0 Gib", "Mebibyte, MiBPetabyte, PB": "0 PB", "Kibibyte, KiBTebibyte, TiB": "0 TiB", "Tebibyte, TiBGigabyte, GB": "1,099.512 GB", "Kilobyte, kBMebibyte, MiB": "0.001 MiB", "Gibibyte, GiBGibibyte, GiB": "1 Gib", "Tebibyte, TiBByte, b": "1,099,511,627,776 byte", "Byte, bKilobyte, kB": "0.001 kB", "Pebibyte, PiBKilobyte, kB": "1,125,899,906,842.624 kB", "Megabyte, MBMebibyte, MiB": "0.954 MiB", "Gigabyte, GBKibibyte, KiB": "7,812,500 Kib", "Petabyte, PBMegabyte, MB": "1,000,000,000 MB", "Tebibyte, TiBGibibyte, GiB": "8,192 Gib", "Pebibyte, PiBKibibyte, KiB": "8,796,093,022,208 Kib", "Bit, BitMegabyte, MB": "0 MB", "Bit, BitKibibyte, KiB": "0.001 Kib", "Kilobyte, kBGibibyte, GiB": "0 Gib", "Kibibyte, KiBGigabyte, GB": "0 GB", "Kibibyte, KiBKibibyte, KiB": "1 Kib", "Mebibyte, MiBBit, Bit": "8,388,608 bit", "Bit, BitPetabyte, PB": "0 PB", "Megabyte, MBKibibyte, KiB": "7,812.5 Kib", "Bit, BitGigabyte, GB": "0 GB", "Mebibyte, MiBKilobyte, kB": "1,048.576 kB", "Gibibyte, GiBPebibyte, PiB": "0 PiB", "Gigabyte, GBMegabyte, MB": "1,000 MB", "Kibibyte, KiBPebibyte, PiB": "0 PiB", "Petabyte, PBBit, Bit": "8,000,000,000,000,000 bit", "Mebibyte, MiBTebibyte, TiB": "0 TiB", "Byte, bGigabyte, GB": "0 GB", "Gibibyte, GiBPetabyte, PB": "0 PB", "Petabyte, PBKilobyte, kB": "1,000,000,000,000 kB", "Pebibyte, PiBBit, Bit": "9,007,199,254,740,992 bit", "Mebibyte, MiBGigabyte, GB": "0.001 GB", "Byte, bGibibyte, GiB": "0 Gib", "Gibibyte, GiBKilobyte, kB": "134,217.728 kB", "Megabyte, MBGibibyte, GiB": "0.007 Gib", "Bit, BitBit, Bit": "1 bit", "Tebibyte, TiBMebibyte, MiB": "1,048,576 MiB", "Petabyte, PBPebibyte, PiB": "0.888 PiB", "Petabyte, PBKibibyte, KiB": "7,812,500,000,000 Kib", "Megabyte, MBMegabyte, MB": "1 MB", "Megabyte, MBGigabyte, GB": "0.001 GB", "Petabyte, PBGibibyte, GiB": "7,450,580.597 Gib", "Pebibyte, PiBGibibyte, GiB": "8,388,608 Gib", "Gibibyte, GiBGigabyte, GB": "0.134 GB", "Pebibyte, PiBPetabyte, PB": "1.126 PB", "Gigabyte, GBByte, b": "1,000,000,000 byte", "Byte, bTebibyte, TiB": "0 TiB", "Gigabyte, GBTebibyte, TiB": "0.001 TiB", "Bit, BitMebibyte, MiB": "0 MiB", "Gibibyte, GiBTebibyte, TiB": "0 TiB", "Pebibyte, PiBMegabyte, MB": "1,125,899,906.843 MB", "Gibibyte, GiBBit, Bit": "1,073,741,824 bit", "Kilobyte, kBTebibyte, TiB": "0 TiB", "Mebibyte, MiBKibibyte, KiB": "8,192 Kib", "Tebibyte, TiBKibibyte, KiB": "8,589,934,592 Kib", "Megabyte, MBTebibyte, TiB": "0 TiB", "Byte, bBit, Bit": "8 bit", "Tebibyte, TiBPebibyte, PiB": "0.001 PiB", "Petabyte, PBPetabyte, PB": "1 PB", "Gibibyte, GiBMegabyte, MB": "134.218 MB", "Petabyte, PBTebibyte, TiB": "909.495 TiB", "Byte, bPebibyte, PiB": "0 PiB", "Bit, BitKilobyte, kB": "0 kB", "Byte, bMebibyte, MiB": "0 MiB", "Kibibyte, KiBGibibyte, GiB": "0 Gib", "Kibibyte, KiBPetabyte, PB": "0 PB", "Megabyte, MBByte, b": "1,000,000 byte", "Bit, BitTebibyte, TiB": "0 TiB", "Mebibyte, MiBByte, b": "1,048,576 byte", "Megabyte, MBPetabyte, PB": "0 PB", "Pebibyte, PiBMebibyte, MiB": "1,073,741,824 MiB", "Kilobyte, kBPebibyte, PiB": "0 PiB", "Megabyte, MBBit, Bit": "8,000,000 bit", "Petabyte, PBMebibyte, MiB": "953,674,316.406 MiB", "Gibibyte, GiBKibibyte, KiB": "1,048,576 Kib", "Gigabyte, GBBit, Bit": "8,000,000,000 bit", "Gibibyte, GiBByte, b": "134,217,728 byte", "Petabyte, PBByte, b": "1,000,000,000,000,000 byte", "Pebibyte, PiBByte, b": "1,125,899,906,842,624 byte", "Tebibyte, TiBTebibyte, TiB": "1 TiB", "Gibibyte, GiBMebibyte, MiB": "128 MiB", "Pebibyte, PiBPebibyte, PiB": "1 PiB", "Gigabyte, GBPetabyte, PB": "0 PB", "Kibibyte, KiBByte, b": "128 byte", "Kilobyte, kBKibibyte, KiB": "7.812 Kib", "Kilobyte, kBPetabyte, PB": "0 PB", "Gigabyte, GBKilobyte, kB": "1,000,000 kB", "Bit, BitPebibyte, PiB": "0 PiB", "Kibibyte, KiBBit, Bit": "1,024 bit", "Tebibyte, TiBPetabyte, PB": "0.001 PB", "Tebibyte, TiBMegabyte, MB": "1,099,511.628 MB", "Mebibyte, MiBMegabyte, MB": "1.049 MB", "Kilobyte, kBBit, Bit": "8,000 bit", "Byte, bMegabyte, MB": "0 MB", "Byte, bByte, b": "1 byte", "Byte, bKibibyte, KiB": "0.008 Kib", "Gigabyte, GBGibibyte, GiB": "7.451 Gib", "Mebibyte, MiBMebibyte, MiB": "1 MiB", "Mebibyte, MiBGibibyte, GiB": "0.008 Gib", "Pebibyte, PiBTebibyte, TiB": "1,024 TiB"]


    
//        let keys1 =
//               ["Bit, Bit", "Byte, b", "Gibibyte, GiB", "Gigabyte, GB", "Kibibyte, KiB",
//                "Kilobyte, kB", "Mebibyte, MiB", "Megabyte, MB", "Pebibyte, PiB", "Petabyte, PB", "Tebibyte, TiB"]
//
//        let keys2 =
//               ["Bit, Bit", "Byte, b", "Gibibyte, GiB", "Gigabyte, GB", "Kibibyte, KiB",
//                "Kilobyte, kB", "Mebibyte, MiB", "Megabyte, MB", "Pebibyte, PiB", "Petabyte, PB", "Tebibyte, TiB"]
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
//                    datadict[itemc] = storeval
//                }
//            }
//
//            print ("Final Dict :", datadict)
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
                                    Text(self.DisplayUnit1 + "  "  + env.displayconvertdat)
                                    }
                                .sheet(isPresented: $ShowUnit1) {
                                    ModalData(isPresented: self.$ShowUnit1, isPresented1: self.$ShowUnit1, isPresented2: self.$ShowUnit2, currentUnit1: self.$DisplayUnit1, currentUnit2: self.$DisplayUnit2)
                                }
                                    .font(.system(size: 40))
                                    .frame(width: (UIScreen.main.bounds.width - 2 * 12), height: UIScreen.main.bounds.height / 10)
                                    .foregroundColor(.white)
                                    .background(Color.gray)
                                    .cornerRadius(UIScreen.main.bounds.width - 2 * 12)
                        
                                Button(action: {
                                    self.ShowUnit2.toggle()
                                }) {
                                                                     Text(self.DisplayUnit2 + "  " + calc(env.displayconvertacc, self.DisplayUnit1, self.DisplayUnit2))
//                                    Text(self.DisplayUnit2 + "  ")
                                    }
                                    .sheet(isPresented: $ShowUnit2) {
                                        ModalData(isPresented: self.$ShowUnit1, isPresented1: self.$ShowUnit1, isPresented2: self.$ShowUnit2, currentUnit1: self.$DisplayUnit1, currentUnit2: self.$DisplayUnit2)
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
    
//    let dataarray =
//           ["Bit, Bit", "Byte, b", "Gibibyte, GiB", "Gigabyte, GB", "Kibibyte, KiB",
//            "Kilobyte, kB", "Mebibyte, MiB", "Megabyte, MB", "Pebibyte, PiB", "Petabyte, PB", "Tebibyte, TiB"]
    
    private func calc(_ unit1val: String, _ unit1: String, _ unit2: String) -> String{
        let formatter = MeasurementFormatter()
        let stringval: String = unit1  +  unit2
        let storedval = (datadict[stringval, default: "1"])
        let operand1 = (unit1val as NSString).doubleValue
        let operand2 = (storedval as NSString).doubleValue
        return String(operand1 * operand2)
        
    }
    
    private func type(_ unit: String) -> UnitInformationStorage {
    if unit == "Bit, Bit" {
        return UnitInformationStorage.bits
    }
    else if unit == "Byte, b" {
        return UnitInformationStorage.bytes
    }
    else if unit == "Gibibyte, GiB" {
        return UnitInformationStorage.gibibits
    }
    else if unit == "Gigabyte, GB" {
        return UnitInformationStorage.gigabytes
    }
    else if unit == "Kibibyte, KiB" {
        return UnitInformationStorage.kibibits
    }
    else if unit == "Kilobyte, kB" {
        return UnitInformationStorage.kilobytes
    }
    else if unit == "Mebibyte, MiB" {
        return UnitInformationStorage.mebibytes
    }
    else if unit == "Megabyte, MB" {
        return UnitInformationStorage.megabytes
    }
    else if unit == "Pebibyte, PiB" {
        return UnitInformationStorage.pebibytes
    }
    else if unit == "Petabyte, PB" {
        return UnitInformationStorage.petabytes
    }
    else if unit == "Tebibyte, TiB" {
        return UnitInformationStorage.tebibytes
    }
        return UnitInformationStorage.megabytes
    }

}

struct Data_Previews: PreviewProvider {
    static var previews: some View {
        Data()
        .environmentObject(ViewRouter())
        .environmentObject(GlobalEnvironment())
    }
}
