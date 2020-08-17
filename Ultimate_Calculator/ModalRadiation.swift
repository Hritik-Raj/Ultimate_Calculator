//
//  ModalRadiation.swift
//  Ultimate_Calculator
//
//  Created by Hritik Raj on 8/15/20.
//  Copyright © 2020 Hritik Raj. All rights reserved.
//

import SwiftUI

struct ModalRadiation: View {
       @Binding var isPresented: Bool
        let radiationarray =
        ["Bit, Bit", "Centigray, cGy", "Gray, Gy", "Microgray, μGy", "Microsievert, μSv", "Milligray, mGy", "Millirem, mrem", "Millisievert, mSv", "Rad, rad", "Sievert, Sv"]

        @State private var searchTerm : String = ""

        var body: some View {
            NavigationView{
                List {
                    SearchBarView(text: $searchTerm)

                    ForEach(self.radiationarray.filter{
                        self.searchTerm.isEmpty ? true : $0.localizedStandardContains(self.searchTerm)
                    }, id: \.self) { radiationarray in
                        Button(action: {self.isPresented = false}) {
                            Text(radiationarray)
                        }
                    }
                }

                .navigationBarTitle(Text("Radiation Dose"))
            }
        }
    }

//struct ModalRadiation_Previews: PreviewProvider {
//    static var previews: some View {
//        ModalRadiation()
//    }
//}
