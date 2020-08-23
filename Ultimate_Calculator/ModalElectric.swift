//
//  ModalElectric.swift
//  Ultimate_Calculator
//
//  Created by Hritik Raj on 8/15/20.
//  Copyright © 2020 Hritik Raj. All rights reserved.
//

import SwiftUI

struct ModalElectric: View {
     @Binding var isPresented: Bool
     @Binding var isPresented1: Bool
     @Binding var isPresented2: Bool
     @Binding var currentUnit1: String
     @Binding var currentUnit2: String
        let electricarray =
            ["Ampere, A", "Biot, Bi", "Centiampere, cA", "Coulomb/Second, C/s", "Deciampere, dA", "Franklin/Second, fk/s", "Gigaampere, GA", "Gilberts, Gi", "Megaampere, MA", "Microampere, μA", "Milliampere, mA", "Nanoampere, nA", "Volt/Ohm, V/Ω"]

        @State private var searchTerm : String = ""

        var body: some View {
            NavigationView{
                List {
                    SearchBarView(text: $searchTerm)

                    ForEach(self.electricarray.filter{
                        self.searchTerm.isEmpty ? true : $0.localizedStandardContains(self.searchTerm)
                    }, id: \.self) { electricarray in
                        Button(action: {
                            if self.isPresented1 == true {
                                self.isPresented1 = false
                                self.currentUnit1 = electricarray
                            }
                            
                            else if self.isPresented2 == true {
                              self.isPresented2 = false
                              self.currentUnit2 = electricarray
                              }
                        }) {
                            Text(electricarray)
                        }
                    }
                }

                .navigationBarTitle(Text("Electric Current"))
            }
        }
    }

//struct ModalElectric_Previews: PreviewProvider {
//    static var previews: some View {
//        ModalElectric()
//    }
//}
