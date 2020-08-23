//
//  ModalSpeed.swift
//  Ultimate_Calculator
//
//  Created by Hritik Raj on 8/15/20.
//  Copyright © 2020 Hritik Raj. All rights reserved.
//

import SwiftUI

struct ModalSpeed: View {
     @Binding var isPresented: Bool
     @Binding var isPresented1: Bool
     @Binding var isPresented2: Bool
     @Binding var currentUnit1: String
     @Binding var currentUnit2: String
    let speedarray =
    ["Centimeters/Second, cm/s", "Feet/Minute, ft/min", "Feet/Second, ft/sec", "Inches/Second, in/s", "Kilometers/Hour, km/hr",
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
                    Button(action: {
                        if self.isPresented1 == true {
                            self.isPresented1 = false
                            self.currentUnit1 = speedarray
                        }
                        
                        else if self.isPresented2 == true {
                          self.isPresented2 = false
                          self.currentUnit2 = speedarray
                          }
                    }) {
                        Text(speedarray)
                    }
                }
            }

            .navigationBarTitle(Text("Speed"))
        }
    }
}

//struct ModalSpeed_Previews: PreviewProvider {
//    static var previews: some View {
//        ModalSpeed()
//    }
//}
