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
            self.handleconvertoroption(convertorButton: self.button)
        }) {
            Text(button.title)

            .font(.system(size: 40))
            .frame(width: (UIScreen.main.bounds.width - 2 * 12), height: UIScreen.main.bounds.height / 10)
            .foregroundColor(.white)
            .background(Color.gray)
            .cornerRadius(UIScreen.main.bounds.width - 2 * 12)
        }
    }
    private func handleconvertoroption( convertorButton: ConvertorButton) {
        print ("poppu")
        if convertorButton.title == "Acceleration" {
            self.viewRouter.currenttype = "Acceleration"
        } else if convertorButton.title == "Area" {
            self.viewRouter.currenttype = "Area"
        } else if convertorButton.title == "Cooking" {
            self.viewRouter.currenttype = "Cooking"
        } else if convertorButton.title == "Currency" {
            self.viewRouter.currenttype = "Currency"
        } else if convertorButton.title == "Data" {
            self.viewRouter.currenttype = "Data"
        } else if convertorButton.title == "Density" {
            self.viewRouter.currenttype = "Density"
        } else if convertorButton.title == "Electric Current" {
            self.viewRouter.currenttype = "Electric Current"
        } else if convertorButton.title == "Energy" {
            self.viewRouter.currenttype = "Energy"
        } else if convertorButton.title == "Frequency" {
            self.viewRouter.currenttype = "Frequency"
        } else if convertorButton.title == "Fuel Consumption" {
            self.viewRouter.currenttype = "Fuel Consumption"
        } else if convertorButton.title == "Illuminance" {
            self.viewRouter.currenttype = "Illuminance"
        } else if convertorButton.title == "Length" {
            self.viewRouter.currenttype = "Length"
        } else if convertorButton.title == "Metric Prefix" {
            self.viewRouter.currenttype = "Metric Prefix"
        } else if convertorButton.title == "Network Speed" {
            self.viewRouter.currenttype = "Network Speed"
        } else if convertorButton.title == "Plain Angle" {
            self.viewRouter.currenttype = "Plain Angle"
        } else if convertorButton.title == "Power" {
            self.viewRouter.currenttype = "Power"
        } else if convertorButton.title == "Pressure" {
            self.viewRouter.currenttype = "Pressure"
        } else if convertorButton.title == "Radiation Dose" {
            self.viewRouter.currenttype = "Radiation Dose"
        } else if convertorButton.title == "Radioactivity" {
            self.viewRouter.currenttype = "Radioactivity"
        } else if convertorButton.title == "Speed" {
            self.viewRouter.currenttype = "Speed"
        } else if convertorButton.title == "Temperature" {
            self.viewRouter.currenttype = "Temperature"
        } else if convertorButton.title == "Time" {
            self.viewRouter.currenttype = "Time"
        } else if convertorButton.title == "Volume" {
            self.viewRouter.currenttype = "Volume"
        } else if convertorButton.title == "Weight" {
            self.viewRouter.currenttype = "Weight"
        } else if convertorButton.title == "Base Conversions" {
            self.viewRouter.currenttype = "Base Conversions"
        }
    }
}

//struct ConvertorOptionButtonView_Previews: PreviewProvider {
//    static var previews: some View {
//        ConvertorOptionButtonView()
//    }
//}
