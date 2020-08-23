//
//  ModalTemperature.swift
//  Ultimate_Calculator
//
//  Created by Hritik Raj on 8/15/20.
//  Copyright © 2020 Hritik Raj. All rights reserved.
//

import SwiftUI

struct ModalTemperature: View {
     @Binding var isPresented: Bool
      @Binding var isPresented1: Bool
      @Binding var isPresented2: Bool
      @Binding var currentUnit1: String
      @Binding var currentUnit2: String
        let temperaturearray =
        ["Celsius, °C", "Fahrenheit, °F", "Kelvin, K"]

        @State private var searchTerm : String = ""

        var body: some View {
            NavigationView{
                List {
                    SearchBarView(text: $searchTerm)

                    ForEach(self.temperaturearray.filter{
                        self.searchTerm.isEmpty ? true : $0.localizedStandardContains(self.searchTerm)
                    }, id: \.self) { temperaturearray in
                            Button(action: {
                              if self.isPresented1 == true {
                                  self.isPresented1 = false
                                  self.currentUnit1 = temperaturearray
                              }
                              
                              else if self.isPresented2 == true {
                                self.isPresented2 = false
                                self.currentUnit2 = temperaturearray
                                }
                          }) {
                            Text(temperaturearray)
                        }
                    }
                }

                .navigationBarTitle(Text("Temperature"))
            }
        }
    }

//struct ModalTemperature_Previews: PreviewProvider {
//    static var previews: some View {
//        ModalTemperature()
//    }
//}
