//
//  ModalAcceleration.swift
//  Ultimate_Calculator
//
//  Created by Hritik Raj on 8/15/20.
//  Copyright © 2020 Hritik Raj. All rights reserved.
//

import SwiftUI

struct ModalAcceleration: View {
        @Binding var isPresented: Bool
        let accelerationarray =
            ["Centigal, cGal", "Decigal, dGal", "Decimeter/Second², dm/s²", "Earth Gravity, g", "Foot/Second², fps²", "Galileo, Gal", "Inch/Second², ips²", "Kilometer/Hour², km/h²", "Kilometer/Second², km/s²", "Knot/Second, kn/s", "Microgal, μgal", "Meter/Second², m/s²", "Mile/Hour Minute, mph/min", "Mile/Hour Second, mph/s", "Mile/Second², mps²", "Milligal, mGal", "Yard/Second², yd/s²" ]

        @State private var searchTerm : String = ""

        var body: some View {
            NavigationView{
                List {
                    SearchBarView(text: $searchTerm)

                    ForEach(self.accelerationarray.filter{
                        self.searchTerm.isEmpty ? true : $0.localizedStandardContains(self.searchTerm)
                    }, id: \.self) { accelerationarray in
                        Button(action: {self.isPresented = false}) {
                            Text(accelerationarray)
                        }
                    }
                }

                .navigationBarTitle(Text("Acceleration"))
            }
        }
    }

//struct ModalAcceleration_Previews: PreviewProvider {
//    static var previews: some View {
//        ModalAcceleration()
//    }
//}
