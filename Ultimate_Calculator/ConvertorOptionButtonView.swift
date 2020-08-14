//
//  ConvertorOptionButtonView.swift
//  Ultimate_Calculator
//
//  Created by Hritik Raj on 8/13/20.
//  Copyright © 2020 Hritik Raj. All rights reserved.
//

import SwiftUI

struct ConvertorOptionButtonView: View {
    var button: ConvertorButton
    @EnvironmentObject var env: GlobalEnvironment
    @EnvironmentObject var viewRouter: ViewRouter
    var body: some View {
        Button(action: {
            self.viewRouter.currentPage = self.button.title
            self.env.displayconvert = "0"
            self.env.completestringconvert = ""
//            self.handleconvertoroption(convertorButton: self.button)
        }) {
            Text(button.title)

            .font(.system(size: 40))
            .frame(width: (UIScreen.main.bounds.width - 2 * 12), height: UIScreen.main.bounds.height / 10)
            .foregroundColor(.white)
            .background(Color.gray)
            .cornerRadius(UIScreen.main.bounds.width - 2 * 12)
        }
    }
//    private func handleconvertoroption( convertorButton: ConvertorButton) {
//        print ("poppu")
//        if convertorButton.title == "Acceleration" {
//            self.viewRouter.currentPage = "Acceleration"
//        } else if convertorButton.title == "Area" {
//            self.viewRouter.currentPage = "Area"
//        } else if convertorButton.title == "Cooking" {
//            self.viewRouter.currentPage = "Cooking"
//        } else if convertorButton.title == "Currency" {
//            self.viewRouter.currentPage = "Currency"
//        } else if convertorButton.title == "Data" {
//            self.viewRouter.currentPage = "Data"
//        } else if convertorButton.title == "Density" {
//            self.viewRouter.currentPage = "Density"
//        } else if convertorButton.title == "Electric Current" {
//            self.viewRouter.currentPage = "Electric Current"
//        } else if convertorButton.title == "Energy" {
//            self.viewRouter.currentPage = "Energy"
//        } else if convertorButton.title == "Frequency" {
//            self.viewRouter.currentPage = "Frequency"
//        } else if convertorButton.title == "Fuel Consumption" {
//            self.viewRouter.currentPage = "Fuel Consumption"
//        } else if convertorButton.title == "Illuminance" {
//            self.viewRouter.currentPage = "Illuminance"
//        } else if convertorButton.title == "Length" {
//            self.viewRouter.currentPage = "Length"
//        } else if convertorButton.title == "Metric Prefix" {
//            self.viewRouter.currentPage = "Metric Prefix"
//        } else if convertorButton.title == "Network Speed" {
//            self.viewRouter.currentPage = "Network Speed"
//        } else if convertorButton.title == "Plain Angle" {
//            self.viewRouter.currentPage = "Plain Angle"
//        } else if convertorButton.title == "Power" {
//            self.viewRouter.currentPage = "Power"
//        } else if convertorButton.title == "Pressure" {
//            self.viewRouter.currentPage = "Pressure"
//        } else if convertorButton.title == "Radiation Dose" {
//            self.viewRouter.currentPage = "Radiation Dose"
//        } else if convertorButton.title == "Radioactivity" {
//            self.viewRouter.currentPage = "Radioactivity"
//        } else if convertorButton.title == "Speed" {
//            self.viewRouter.currentPage = "Speed"
//        } else if convertorButton.title == "Temperature" {
//            self.viewRouter.currentPage = "Temperature"
//        } else if convertorButton.title == "Time" {
//            self.viewRouter.currentPage = "Time"
//        } else if convertorButton.title == "Volume" {
//            self.viewRouter.currentPage = "Volume"
//        } else if convertorButton.title == "Weight" {
//            self.viewRouter.currentPage = "Weight"
//        } else if convertorButton.title == "Base Conversions" {
//            self.viewRouter.currentPage = "Base Conversions"
//        }
//    }
}

//struct ConvertorOptionButtonView_Previews: PreviewProvider {
//    static var previews: some View {
//        ConvertorOptionButtonView()
//    }
//}
