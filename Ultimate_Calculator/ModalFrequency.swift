//
//  ModalFrequency.swift
//  Ultimate_Calculator
//
//  Created by Hritik Raj on 8/15/20.
//  Copyright © 2020 Hritik Raj. All rights reserved.
//

import SwiftUI

struct ModalFrequency: View {
        @Binding var isPresented: Bool
        @Binding var isPresented1: Bool
        @Binding var isPresented2: Bool
        @Binding var currentUnit1: String
        @Binding var currentUnit2: String
        let frequencyarray =
        ["Cycles/Second, cycles/s", "Degrees/Hour, deg/h", "Degrees/Minute, deg/min", "Degrees/Second, deg/s", "Gigahertz, GHz", "Hertz, Hz", "Kilohertz, kHz", "Megahertz, MHz", "Radians/Hour, rad/h", "Radians/Minute, rad/min", "Radians/Second, rad/s", "Revolutions/Hour, rph", "Revolutions/Minute, rpm", "Revolutions/Second, rps"]

        @State private var searchTerm : String = ""

        var body: some View {
            NavigationView{
                List {
                    SearchBarView(text: $searchTerm)

                    ForEach(self.frequencyarray.filter{
                        self.searchTerm.isEmpty ? true : $0.localizedStandardContains(self.searchTerm)
                    }, id: \.self) { frequencyarray in
                        Button(action: {
                            if self.isPresented1 == true {
                                self.isPresented1 = false
                                self.currentUnit1 = frequencyarray
                            }
                            
                            else if self.isPresented2 == true {
                              self.isPresented2 = false
                              self.currentUnit2 = frequencyarray
                                
                              }
                        }) {
                            Text(frequencyarray)
                        }
                    }
                }

                .navigationBarTitle(Text("Frequency"))
            }
        }
    }

//struct ModalFrequency_Previews: PreviewProvider {
//    static var previews: some View {
//        ModalFrequency()
//    }
//}
