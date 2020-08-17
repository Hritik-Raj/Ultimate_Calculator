//
//  ModalFuel.swift
//  Ultimate_Calculator
//
//  Created by Hritik Raj on 8/15/20.
//  Copyright © 2020 Hritik Raj. All rights reserved.
//

import SwiftUI

struct ModalFuel: View {
        @Binding var isPresented: Bool
        let fuelarray =
        ["Gallons (UK)/100 Kilometers, UK gal/100 km", "Gallons (UK)/100 Miles, UK gal/100 mil", "Gallons (US)/100 Kilometers, US gal/100 km", "Gallons (US)/100 Miles, UK gal/100 mil", "Kilometers/Liter, km/l", "Liters/100 Kilometers, l/100 km", "Liters/100 Miles, l/100 mil", "Miles/Gallon (UK), mil/UK gal", "Miles/Gallon (US), mil/US gal", "Miles/Liter, mil/l"]

        @State private var searchTerm : String = ""

        var body: some View {
            NavigationView{
                List {
                    SearchBarView(text: $searchTerm)

                    ForEach(self.fuelarray.filter{
                        self.searchTerm.isEmpty ? true : $0.localizedStandardContains(self.searchTerm)
                    }, id: \.self) { fuelarray in
                        Button(action: {self.isPresented = false}) {
                            Text(fuelarray)
                        }
                    }
                }

                .navigationBarTitle(Text("Fuel Consumption"))
            }
        }
    }
//struct ModalFuel_Previews: PreviewProvider {
//    static var previews: some View {
//        ModalFuel()
//    }
//}
