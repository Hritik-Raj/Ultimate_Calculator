//
//  ModalPressure.swift
//  Ultimate_Calculator
//
//  Created by Hritik Raj on 8/15/20.
//  Copyright © 2020 Hritik Raj. All rights reserved.
//

import SwiftUI

struct ModalPressure: View {
        @Binding var isPresented: Bool
        @Binding var isPresented1: Bool
        @Binding var isPresented2: Bool
        @Binding var currentUnit1: String
        @Binding var currentUnit2: String
        let pressurearray =
        ["Atmospheres, atm", "Bars, b", "Centimeters of Mercury, cmHg", "Centimeters of Water, cmH2O", "Hectobar, hbar", "Hectopascal, hPa", "Inches of Mercury, inHg", "Inches of Water, inH2O", "Kilograms/Square Centimeter, kg/cm²", "Kilograms/Square Meter, kg/m²", "Kilonewton/Square Centimeter, kN/cm²", "Kilopascal, kPa", "Meganewton/Meter², MN/m²", "Megapascal, Mpa", "Millibar, mBar", "Millimeters of Mercury, mmHg", "Newton/Millimeter², N/mm²", "Pascals, Pa", "Pounds/Square Foot, psf", "Pounds/Square Inch, psi", "Torr, Torr"]

        @State private var searchTerm : String = ""

        var body: some View {
            NavigationView{
                List {
                    SearchBarView(text: $searchTerm)

                    ForEach(self.pressurearray.filter{
                        self.searchTerm.isEmpty ? true : $0.localizedStandardContains(self.searchTerm)
                    }, id: \.self) { pressurearray in
                        Button(action: {
                            if self.isPresented1 == true {
                                self.isPresented1 = false
                                self.currentUnit1 = pressurearray
                            }
                            
                            else if self.isPresented2 == true {
                              self.isPresented2 = false
                              self.currentUnit2 = pressurearray
                              }
                        }) {
                            Text(pressurearray)
                        }
                    }
                }

                .navigationBarTitle(Text("Pressure"))
            }
        }
    }

//struct ModalPressure_Previews: PreviewProvider {
//    static var previews: some View {
//        ModalPressure()
//    }
//}
