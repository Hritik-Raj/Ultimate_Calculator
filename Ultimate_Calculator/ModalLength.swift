//
//  ModalLength.swift
//  Ultimate_Calculator
//
//  Created by Hritik Raj on 8/15/20.
//  Copyright © 2020 Hritik Raj. All rights reserved.
//

import SwiftUI

struct ModalLength: View {
        @Binding var isPresented: Bool
        @Binding var isPresented1: Bool
        @Binding var isPresented2: Bool
        @Binding var currentUnit1: String
        @Binding var currentUnit2: String
        let lengtharray =
        ["Angstrom, Å", "Astronomical Units, au", "Centimeter, cm", "Chains, ch", "Fathom, ftm", "Foot, ft", "Inch, in", "Kilometer, km", "Leagues, l", "Light Seconds, light-second", "Light days, light-day", "Light hours, light-hour", "Light minutes, light-minute", "Meter, m", "Microinches, μin", "Micron, μ", "Mile, mi", "Mile (nautical), nmi", "Millimeter, mm", "Nanometers, nm", "Nautical Leagues, nl", "Nautical Miles (UK), nmil UK", "Parsecs, pc", "Picometers, pm", "Rods, Rods", "Step, sl", "Thou, th", "Yard, yd"]

        @State private var searchTerm : String = ""

        var body: some View {
            NavigationView{
                List {
                    SearchBarView(text: $searchTerm)

                    ForEach(self.lengtharray.filter{
                        self.searchTerm.isEmpty ? true : $0.localizedStandardContains(self.searchTerm)
                    }, id: \.self) { lengtharray in
                            Button(action: {
                              if self.isPresented1 == true {
                                  self.isPresented1 = false
                                  self.currentUnit1 = lengtharray
                              }
                              
                              else if self.isPresented2 == true {
                                self.isPresented2 = false
                                self.currentUnit2 = lengtharray
                                }
                          }) {
                            Text(lengtharray)
                        }
                    }
                }

                .navigationBarTitle(Text("Length"))
            }
        }
    }
//struct ModalLength_Previews: PreviewProvider {
//    static var previews: some View {
//        ModalLength()
//    }
//}
