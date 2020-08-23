//
//  ModalArea.swift
//  Ultimate_Calculator
//
//  Created by Hritik Raj on 8/15/20.
//  Copyright © 2020 Hritik Raj. All rights reserved.
//

import SwiftUI

struct ModalArea: View {
        @Binding var isPresented: Bool
        @Binding var isPresented1: Bool
        @Binding var isPresented2: Bool
        @Binding var currentUnit1: String
        @Binding var currentUnit2: String
        let areaarray =
            ["Acre, ac", "Are, a", "Hectare, ha", "Square Centimeter, cm²", "Square Foot, ft²", "Square Inch, in²", "Square Kilometer, km²", "Square Meter, m²", "Square Mile, mi²", "Square Yard, yd²", "Tsubo, tsubo", "Cents, cent"]

        @State private var searchTerm : String = ""

        var body: some View {
            NavigationView{
                List {
                    SearchBarView(text: $searchTerm)

                    ForEach(self.areaarray.filter{
                        self.searchTerm.isEmpty ? true : $0.localizedStandardContains(self.searchTerm)
                    }, id: \.self) { areaarray in
                        Button(action: {
                            if self.isPresented1 == true {
                                self.isPresented1 = false
                                self.currentUnit1 = areaarray
                            }
                            
                            else if self.isPresented2 == true {
                              self.isPresented2 = false
                              self.currentUnit2 = areaarray
                              }
                        }) {
                            Text(areaarray)
                        }
                    }
                }

                .navigationBarTitle(Text("Area"))
            }
        }
    }

//struct ModalArea_Previews: PreviewProvider {
//    static var previews: some View {
//        ModalArea()
//    }
//}
