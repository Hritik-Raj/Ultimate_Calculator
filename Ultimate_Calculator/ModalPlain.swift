//
//  ModalPlain.swift
//  Ultimate_Calculator
//
//  Created by Hritik Raj on 8/15/20.
//  Copyright © 2020 Hritik Raj. All rights reserved.
//

import SwiftUI

struct ModalPlain: View {
     @Binding var isPresented: Bool
//     @Binding var currentUnit1: String
//    @Binding var currentUnit2: String
        let plainarray =
        ["1/2 circle, 180°", "1/4 circle, 90°", "1/6 circle, 60°", "1/8 circle, 45°", "1/10 circle, 36°", "1/16 circle, 22.5°", "Angular Mil (NATO), mil", "Degree of Arc, deg", "Gradian, grad", "Minute of Arc, arcmin", "Radian, rad", "Revolution, r", "Second of Arc, arcsec"]

        @State private var searchTerm : String = ""

        var body: some View {
            NavigationView{
                List {
                    SearchBarView(text: $searchTerm)

                    ForEach(self.plainarray.filter{
                        self.searchTerm.isEmpty ? true : $0.localizedStandardContains(self.searchTerm)
                    }, id: \.self) { plainarray in
                        Button(action: {
                            self.isPresented = false
//                            self.currentUnit1 = plainarray
                        }) {
                            Text(plainarray)
                        }
                    }
                }

                .navigationBarTitle(Text("Plain Angle"))
            }
        }
    }

//struct ModalPlain_Previews: PreviewProvider {
//    static var previews: some View {
//        ModalPlain()
//    }
//}
