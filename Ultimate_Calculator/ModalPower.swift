//
//  ModalPower.swift
//  Ultimate_Calculator
//
//  Created by Hritik Raj on 8/15/20.
//  Copyright © 2020 Hritik Raj. All rights reserved.
//

import SwiftUI

struct ModalPower: View {
        @Binding var isPresented: Bool
        @Binding var isPresented1: Bool
        @Binding var isPresented2: Bool
        @Binding var currentUnit1: String
        @Binding var currentUnit2: String
        let powerarray =
            ["BTU/Hour, btu/h", "BTU/Second, btu/s", "Btus/Minute, btu/min", "Calories/Hour, cal/h", "Calories/Minute, cal/min", "Calories/Second, cal/s", "Dyne Centimeter/Hour, dyn cm/h", "Dyne Centimeter/Minute, dyn cm/min", "Dyne Centimeter/Second, dyn cm/s", "Foot-Pounds/Hour, ft lb/h", "Foot-Pounds/Minute, ft lb/min", "Foot-Pounds/Second, ft lb/s", "Gigawatt, GW", "Horsepower, hp", "Joule/Hour, J/h", "Joule/Minute, J/min", "Joule/Second, J/s", "Kilocalories/Hour, kcal/h", "Kilocalories/Minute, kcal/min", "Kilocalories/Second, kcal/s", "Kilowatts, kW", "Megawatt, MW", "Newtonmeters/Hour, nm/h", "Newtonmeters/Minute, nm/min", "Newtonmeters/Second, nm/s", "Watts, W"]

        @State private var searchTerm : String = ""

        var body: some View {
            NavigationView{
                List {
                    SearchBarView(text: $searchTerm)

                    ForEach(self.powerarray.filter{
                        self.searchTerm.isEmpty ? true : $0.localizedStandardContains(self.searchTerm)
                    }, id: \.self) { powerarray in
                        Button(action: {
                            if self.isPresented1 == true {
                                self.isPresented1 = false
                                self.currentUnit1 = powerarray
                            }
                            
                            else if self.isPresented2 == true {
                              self.isPresented2 = false
                              self.currentUnit2 = powerarray
                              }
                        }) {
                            Text(powerarray)
                        }
                    }
                }

                .navigationBarTitle(Text("Power"))
            }
        }
    }
//struct ModalPower_Previews: PreviewProvider {
//    static var previews: some View {
//        ModalPower()
//    }
//}
