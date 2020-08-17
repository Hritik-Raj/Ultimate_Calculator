//
//  ModalBase.swift
//  Ultimate_Calculator
//
//  Created by Hritik Raj on 8/15/20.
//  Copyright © 2020 Hritik Raj. All rights reserved.
//

import SwiftUI

struct ModalBase: View {
     @Binding var isPresented: Bool
        let speedarray =
        ["Feet/Minute, ft/min", "Feet/Second, ft/sec", "Inches/Second, in/s", "Kilometers/Hour, km/hr",
         "Kilometers/Minute, km/min", "Kilometers/Second, km/s", "Knots, kn", "Light (vaccum), c", "Mach, Ma",
         "Meters/Hour, m/h", "Meters/Minute, m/min", "Meters/Second, m/sec", "Miles/Hour, mph", "Miles/Minute, mil/min", "Miles/Second, mil/s", "Millimeters/Second, mm/s", "Sound (air), m/s"]

        @State private var searchTerm : String = ""

        var body: some View {
            NavigationView{
                List {
                    SearchBarView(text: $searchTerm)

                    ForEach(self.speedarray.filter{
                        self.searchTerm.isEmpty ? true : $0.localizedStandardContains(self.searchTerm)
                    }, id: \.self) { speedarray in
                        Button(action: {self.isPresented = false}) {
                            Text(speedarray)
                        }
                    }
                }

                .navigationBarTitle(Text("Speed"))
            }
        }
    }

//struct ModalBase_Previews: PreviewProvider {
//    static var previews: some View {
//        ModalBase()
//    }
//}
