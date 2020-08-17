//
//  ModalWeight.swift
//  Ultimate_Calculator
//
//  Created by Hritik Raj on 8/15/20.
//  Copyright © 2020 Hritik Raj. All rights reserved.
//

import SwiftUI

struct ModalWeight: View {
      @Binding var isPresented: Bool
        let weightarray =
            ["Carat, kt", "Carat (UK), UK kt", "Centigrams, cg", "Dalton, Da", "Grains, gr", "Gram, g", "Kilogram, kg", "Long Ton (UK), t", "Metric Ton, t", "Micrograms, μg", "Milligrams, mg", "Nanograms, ng", "Ounce (US), oz", "Pound (US), lb", "Short Ton (US), t", "Stone, st", "Troy Ounces, oz t"]

        @State private var searchTerm : String = ""

        var body: some View {
            NavigationView{
                List {
                    SearchBarView(text: $searchTerm)

                    ForEach(self.weightarray.filter{
                        self.searchTerm.isEmpty ? true : $0.localizedStandardContains(self.searchTerm)
                    }, id: \.self) { weightarray in
                        Button(action: {self.isPresented = false}) {
                            Text(weightarray)
                        }
                    }
                }

                .navigationBarTitle(Text("Weight"))
            }
        }
    }
//struct ModalWeight_Previews: PreviewProvider {
//    static var previews: some View {
//        ModalWeight()
//    }
//}
