//
//  ModalEnergy.swift
//  Ultimate_Calculator
//
//  Created by Hritik Raj on 8/15/20.
//  Copyright © 2020 Hritik Raj. All rights reserved.
//

import SwiftUI

struct ModalEnergy: View {
        @Binding var isPresented: Bool
        @Binding var isPresented1: Bool
        @Binding var isPresented2: Bool
        @Binding var currentUnit1: String
        @Binding var currentUnit2: String
        let energyarray =
            ["Btus, btu", "Calories, cal", "Electronvolt, eV", "Ergs, erg", "Foot-Poundal, ft·pdl", "Foot-Pounds, ft·lb", "Gigawatt, GW", "Horsepower, hp", "Inches Ounce, in·oz", "Inches Pound, in·lb", "Joules, J", "Kilocalories, kCal", "Kilogram-Meters, kg m", "Kilojoule, kJ", "Kilowatt, kW", "Megacalories, Mcal", "Megatons, MT", "Newton-Meters, N m", "q, q", "Watt, W"]

        @State private var searchTerm : String = ""

        var body: some View {
            NavigationView{
                List {
                    SearchBarView(text: $searchTerm)

                    ForEach(self.energyarray.filter{
                        self.searchTerm.isEmpty ? true : $0.localizedStandardContains(self.searchTerm)
                    }, id: \.self) { energyarray in
                         Button(action: {
                             if self.isPresented1 == true {
                                 self.isPresented1 = false
                                 self.currentUnit1 = energyarray
                             }
                             
                             else if self.isPresented2 == true {
                               self.isPresented2 = false
                               self.currentUnit2 = energyarray
                               }
                         }){
                            Text(energyarray)
                        }
                    }
                }

                .navigationBarTitle(Text("Speed"))
            }
        }
    }

//struct ModalEnergy_Previews: PreviewProvider {
//    static var previews: some View {
//        ModalEnergy()
//    }
//}
