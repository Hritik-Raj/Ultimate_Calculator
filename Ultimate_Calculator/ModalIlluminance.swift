//
//  ModalIlluminance.swift
//  Ultimate_Calculator
//
//  Created by Hritik Raj on 8/15/20.
//  Copyright © 2020 Hritik Raj. All rights reserved.
//

import SwiftUI

struct ModalIlluminance: View {
       @Binding var isPresented: Bool
        @Binding var isPresented1: Bool
        @Binding var isPresented2: Bool
        @Binding var currentUnit1: String
        @Binding var currentUnit2: String
        let illuminancearray =
            ["Footcandle, fc", "Kilolux, klx", "Lumen/Centimeter², lm/cm²", "Lumen/Foot², lm/ft²", "Lumen/Inch², lm/in²", "Lumen/Meter², lm/m²", "Lux, lx", "Nox, nx", "Phot, ph"]

        @State private var searchTerm : String = ""

        var body: some View {
            NavigationView{
                List {
                    SearchBarView(text: $searchTerm)

                    ForEach(self.illuminancearray.filter{
                        self.searchTerm.isEmpty ? true : $0.localizedStandardContains(self.searchTerm)
                    }, id: \.self) { illuminancearray in
                        Button(action: {
                            if self.isPresented1 == true {
                                self.isPresented1 = false
                                self.currentUnit1 = illuminancearray
                            }
                            
                            else if self.isPresented2 == true {
                              self.isPresented2 = false
                              self.currentUnit2 = illuminancearray
                              }
                        }) {
                            Text(illuminancearray)
                        }
                    }
                }

                .navigationBarTitle(Text("Illuminance"))
            }
        }
    }

//struct ModalIlluminance_Previews: PreviewProvider {
//    static var previews: some View {
//        ModalIlluminance()
//    }
//}
