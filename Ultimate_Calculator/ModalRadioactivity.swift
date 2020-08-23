//
//  ModalRadioactivity.swift
//  Ultimate_Calculator
//
//  Created by Hritik Raj on 8/15/20.
//  Copyright © 2020 Hritik Raj. All rights reserved.
//

import SwiftUI

struct ModalRadioactivity: View {
      @Binding var isPresented: Bool
      @Binding var isPresented1: Bool
      @Binding var isPresented2: Bool
      @Binding var currentUnit1: String
      @Binding var currentUnit2: String
        let radioactivityarray =
        ["Becquerel, Bq", "Curie, Ci", "Gigabecquerel, GBq", "Megabecquerel, MBq", "Microcurie, μCi", "Millicurie, mCi", "Rutherford, rd", "Terabecquerel, TBq"]

        @State private var searchTerm : String = ""

        var body: some View {
            NavigationView{
                List {
                    SearchBarView(text: $searchTerm)

                    ForEach(self.radioactivityarray.filter{
                        self.searchTerm.isEmpty ? true : $0.localizedStandardContains(self.searchTerm)
                    }, id: \.self) { radioactivityarray in
                        Button(action: {
                            if self.isPresented1 == true {
                                self.isPresented1 = false
                                self.currentUnit1 = radioactivityarray
                            }
                            
                            else if self.isPresented2 == true {
                              self.isPresented2 = false
                              self.currentUnit2 = radioactivityarray
                              }
                        }) {
                            Text(radioactivityarray)
                        }
                    }
                }

                .navigationBarTitle(Text("Radioactivity"))
            }
        }
    }

//struct ModalRadioactivity_Previews: PreviewProvider {
//    static var previews: some View {
//        ModalRadioactivity()
//    }
//}
