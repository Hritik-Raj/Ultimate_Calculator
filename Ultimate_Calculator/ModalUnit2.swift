//
//  ModalUnit2.swift
//  Ultimate_Calculator
//
//  Created by Hritik Raj on 8/14/20.
//  Copyright © 2020 Hritik Raj. All rights reserved.
//

import SwiftUI

struct ModalUnit2: View {
    var dismiss: () -> ()
    var body: some View {

        ZStack {
            VStack {
                HStack {
                    Spacer()
                    Button(action: dismiss) {
                        Text("Dismiss")
                    }

                }
            }
        }


    }
}

//struct ModalUnit2_Previews: PreviewProvider {
//    static var previews: some View {
//        ModalUnit2()
//    }
//}
