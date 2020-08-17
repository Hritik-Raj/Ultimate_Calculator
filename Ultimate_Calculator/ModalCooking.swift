//
//  ModalCooking.swift
//  Ultimate_Calculator
//
//  Created by Hritik Raj on 8/15/20.
//  Copyright © 2020 Hritik Raj. All rights reserved.
//

import SwiftUI

struct ModalCooking: View {
        @Binding var isPresented: Bool
        let cookingarray =
            ["Bushels, bu", "Centiliters, cl", "Cups, cup", "Cups (Canada), Can cup", "Cups (UK), UK cup", "Cups (US), US cup", "Deciliters, d;", "Drops, Drop", "Fifths, fifth", "Fluid Ounces (UK), UK fl oz", "Fluid Ounces (US), US fl oz", "Gallons (UK), UK gal", "Gallons (US), US gal", "Gills, gill", "Jiggers, jigger", "Liters, l", "Milliliters, ml", "Pecks, peck", "Pints, pt", "Pints (US Dry), dry US pt", "Pints (US Liquid), liquid US pt", "Quarts, qt", "Tablespoons, tbsp", "Tablespoons (UK), UK tbsp", "Tablespoons (US), US tbsp", "Teaspoons, tspn", "Teaspoons (UK), UK tspn", "Teaspoons (UK), UK tspn", "Teaspoons (US), US tspn"]

        @State private var searchTerm : String = ""

        var body: some View {
            NavigationView{
                List {
                    SearchBarView(text: $searchTerm)

                    ForEach(self.cookingarray.filter{
                        self.searchTerm.isEmpty ? true : $0.localizedStandardContains(self.searchTerm)
                    }, id: \.self) { cookingarray in
                        Button(action: {self.isPresented = false}) {
                            Text(cookingarray)
                        }
                    }
                }

                .navigationBarTitle(Text("Cooking"))
            }
        }
    }
//struct ModalCooking_Previews: PreviewProvider {
//    static var previews: some View {
//        ModalCooking()
//    }
//}
