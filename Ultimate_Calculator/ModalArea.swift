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
                        Button(action: {self.isPresented = false}) {
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
