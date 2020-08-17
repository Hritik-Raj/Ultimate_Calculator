//
//  ModalMetric.swift
//  Ultimate_Calculator
//
//  Created by Hritik Raj on 8/15/20.
//  Copyright © 2020 Hritik Raj. All rights reserved.
//

import SwiftUI

struct ModalMetric: View {
        @Binding var isPresented: Bool
        let metricarray =
            ["Acto, a", "Centi, c", "Deca, da", "Exa, E", "Femto, f", "Giga, G", "Hecto, h", "Kilo, k", "Mega, M", "Micro, μ", "Milli, m", "Nano, n", "One, One", "Peta, P", "Pico, p", "Tera, T", "Yocto, y", "Yotta, Y", "Zepta, z", "Zetta, Z"]

        @State private var searchTerm : String = ""

        var body: some View {
            NavigationView{
                List {
                    SearchBarView(text: $searchTerm)

                    ForEach(self.metricarray.filter{
                        self.searchTerm.isEmpty ? true : $0.localizedStandardContains(self.searchTerm)
                    }, id: \.self) { metricarray in
                        Button(action: {self.isPresented = false}) {
                            Text(metricarray)
                        }
                    }
                }

                .navigationBarTitle(Text("Metric Prefix"))
            }
        }
    }

//struct ModalMetric_Previews: PreviewProvider {
//    static var previews: some View {
//        ModalMetric()
//    }
//}
