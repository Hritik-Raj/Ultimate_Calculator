//
//  ModalVolume.swift
//  Ultimate_Calculator
//
//  Created by Hritik Raj on 8/15/20.
//  Copyright © 2020 Hritik Raj. All rights reserved.
//

import SwiftUI

struct ModalVolume: View {
     @Binding var isPresented: Bool
     @Binding var isPresented1: Bool
     @Binding var isPresented2: Bool
     @Binding var currentUnit1: String
     @Binding var currentUnit2: String
        let volumearray =
        ["Barrels (UK), UK bbl", "Barrels (US dry), dry US bbl", "Barrels (US liquid), liquid US bbl", "Barrels (US petroleum), oil bbl", "Cubic Centimeters, cm³", "Cubic Feet, ft³", "Cubic Inches, in³", "Cubic Meter, m³", "Cubic Millimeter, mm³", "Cubic Yards, yd³", "Cup, Cup", "Cup (Canada), Cup, Canada", "Cup (UK), Cup UK", "Cup (US), Cup US", "Deciliter, dl", "Dram (US), dr", "Fluid Ounce (US), fl oz", "Gallon (US), gal US", "Gallons (US dry), dry US gal", "Liter, L", "Microliters, μL", "Milliliters, mL", "Pint (US), US pt", "Pint (UK), UK pt", "Pint (US liquid), liquid US pt", "Quarts (US), qt", "Quarts (UK), UK qt", "Quarts (US dry), dry US qt", "Tablespoon, tbsp", "Tablespoons (UK), UK tbsp", "Tablespoons (US), US tbsp", "Teaspoon, tspn", "Teaspoons (US), US tspn", "Teaspoons (UK), UK tspn"]

        @State private var searchTerm : String = ""

        var body: some View {
            NavigationView{
                List {
                    SearchBarView(text: $searchTerm)

                    ForEach(self.volumearray.filter{
                        self.searchTerm.isEmpty ? true : $0.localizedStandardContains(self.searchTerm)
                    }, id: \.self) { volumearray in
                            Button(action: {
                              if self.isPresented1 == true {
                                  self.isPresented1 = false
                                  self.currentUnit1 = volumearray
                              }
                              
                              else if self.isPresented2 == true {
                                self.isPresented2 = false
                                self.currentUnit2 = volumearray
                                }
                          }) {
                            Text(volumearray)
                        }
                    }
                }

                .navigationBarTitle(Text("Volume"))
            }
        }
    }

//struct ModalVolume_Previews: PreviewProvider {
//    static var previews: some View {
//        ModalVolume()
//    }
//}
