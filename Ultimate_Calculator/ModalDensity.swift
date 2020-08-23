//
//  ModalDensity.swift
//  Ultimate_Calculator
//
//  Created by Hritik Raj on 8/15/20.
//  Copyright © 2020 Hritik Raj. All rights reserved.
//

import SwiftUI

struct ModalDensity: View {
        @Binding var isPresented: Bool
        @Binding var isPresented1: Bool
        @Binding var isPresented2: Bool
        @Binding var currentUnit1: String
        @Binding var currentUnit2: String
        let densityarray =
        ["Gram/Liter, g/L", "Grams/Centimeter³, g/cm³", "Grams/Meter³, g/m³", "Grams/Millimeter³, g/mm³", "Imperial Pound/Gallon, lb/UK gal", "Kilogram/Liter, kg/L", "Kilogram/Meter³, kg/m³", "Milligrams/Centimeter³, mg/cm³", "Milligrams/Liter, mg/l", "Milligrams/Meter³, mg/m³", "Milligrams/Millimeter³, mg/m³", "Ounce/Foot³, oz/ft³", "Ounce/Gallon (UK), oz/UK gal", "Ounce/Gallon (US), oz/US gal", "Ounce/Inch³, oz/in³", "Pound/Foot³, lb/ft³", "Pound/Inch³, lb/in³", "US Pound/Gallon, lb/US gal"]

        @State private var searchTerm : String = ""

        var body: some View {
            NavigationView{
                List {
                    SearchBarView(text: $searchTerm)

                    ForEach(self.densityarray.filter{
                        self.searchTerm.isEmpty ? true : $0.localizedStandardContains(self.searchTerm)
                    }, id: \.self) { densityarray in
                        Button(action: {
                            if self.isPresented1 == true {
                                self.isPresented1 = false
                                self.currentUnit1 = densityarray
                            }
                            
                            else if self.isPresented2 == true {
                              self.isPresented2 = false
                              self.currentUnit2 = densityarray
                              }
                        }) {
                            Text(densityarray)
                        }
                    }
                }

                .navigationBarTitle(Text("Speed"))
            }
        }
    }

//struct ModalDensity_Previews: PreviewProvider {
//    static var previews: some View {
//        ModalDensity()
//    }
//}
