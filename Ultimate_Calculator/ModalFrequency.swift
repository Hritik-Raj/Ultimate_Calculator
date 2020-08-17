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
                        Button(action: {self.isPresented = false}) {
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
