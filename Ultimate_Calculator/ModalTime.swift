//
//  ModalTime.swift
//  Ultimate_Calculator
//
//  Created by Hritik Raj on 8/15/20.
//  Copyright © 2020 Hritik Raj. All rights reserved.
//

import SwiftUI

struct ModalTime: View {
     @Binding var isPresented: Bool
        let timearray =
        ["Centuries, c", "Days, d", "Hours, hr", "Microseconds, μs", "Millennia, mil", "Milliseconds, ms", "Minutes, min", "Months, m", "Nanoseconds, ns", "Seconds, sec", "Weeks, wk", "Years, yr"]

        @State private var searchTerm : String = ""

        var body: some View {
            NavigationView{
                List {
                    SearchBarView(text: $searchTerm)

                    ForEach(self.timearray.filter{
                        self.searchTerm.isEmpty ? true : $0.localizedStandardContains(self.searchTerm)
                    }, id: \.self) { timearray in
                        Button(action: {self.isPresented = false}) {
                            Text(timearray)
                        }
                    }
                }

                .navigationBarTitle(Text("Time"))
            }
        }
    }

//struct ModalTime_Previews: PreviewProvider {
//    static var previews: some View {
//        ModalTime()
//    }
//}
