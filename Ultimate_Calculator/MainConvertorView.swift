//
//  MainConvertorView.swift
//  Ultimate_Calculator
//
//  Created by Hritik Raj on 8/12/20.
//  Copyright © 2020 Hritik Raj. All rights reserved.
//

import SwiftUI
import ModalView
//import SpStorkController

struct MainConvertorView: View {
    @State var ShowUnit1 = false
    @State var ShowUnit2 = false
    @EnvironmentObject var viewRouter: ViewRouter
    @EnvironmentObject var env: GlobalEnvironment
    
    let buttons_normal: [[CalculatorButton]] = [
        [.ac, .plus_minus, .percent, .DEL],
        [.seven, .eight, .nine, .divide],
        [.four, .five, .six, .multiply],
        [.one, .two, .three, .minus],
        [.zero, .decimal, .equals, .plus]
    ]
    var body: some View {
        ZStack (alignment: .bottom){ Color.black
            .edgesIgnoringSafeArea(.all)
            
            VStack (spacing: 6){
                
//                Text(helper())
//                .font(.system(size: 40))
//                .foregroundColor(.white)
//                .padding(.all)
                            Button(action: {
                                self.ShowUnit1.toggle()
                            }) {
                                Text("Unit 1" + "   " + env.displayconvert)
                                }
                                .sheet(isPresented: $ShowUnit1) {
                                ModalUnit1()
                            }
                                .font(.system(size: 40))
                                .frame(width: (UIScreen.main.bounds.width - 2 * 12), height: UIScreen.main.bounds.height / 10)
                                .foregroundColor(.white)
                                .background(Color.gray)
                                .cornerRadius(UIScreen.main.bounds.width - 2 * 12)
                    
                            Button(action: {
                                self.ShowUnit2.toggle()
                            }) {
                                Text("Unit 2")
                                }
                                .sheet(isPresented: $ShowUnit2) {
                                ModalUnit2()
                            }
                                .font(.system(size: 40))
                                .frame(width: (UIScreen.main.bounds.width - 2 * 12), height: UIScreen.main.bounds.height / 10)
                                .foregroundColor(.white)
                                .background(Color.gray)
                                .cornerRadius(UIScreen.main.bounds.width - 2 * 12)
                Spacer()
                
//                HStack {
//                    Spacer()
//                    Text(env.displayconvert)
//                        .foregroundColor(.white)
//                        .font(.system(size: CGFloat(env.fontsizeconvert)))
//                }.padding()
                
                
                ForEach(buttons_normal, id: \.self) {
                    row in HStack (spacing: 12) {
                        if self.viewRouter.currentButtonDesign == "Rounded" {
                            ForEach(row, id: \.self) { button in
                                ConvertorButtonRounded(button: button)
                            }
                        } else if self.viewRouter.currentButtonDesign == "Square" {
                            ForEach(row, id: \.self) { button in
                                ConvertorButtonSquare(button: button)
                            }
                        } else {
                            ForEach(row, id: \.self) { button in
                                ConvertorButtonCircle(button: button)
                            }
                        }

                    }
                }
                
                HStack (alignment: .bottom) {
                            Text("Settings").font(.system(size: 14))

                            Button(action: {self.viewRouter.currentPage = "page_settings"}) {
                            Text("Settings")
                            }.font(.system(size: 18))
                            .frame(width: (UIScreen.main.bounds.width - 5 * 12)/4, height: ((UIScreen.main.bounds.width - 5 * 12)/4)*0.5)
                            .foregroundColor(.white)
                            .background(Color.gray)
                            .cornerRadius((UIScreen.main.bounds.width - 5 * 12)/4)

                            Button(action: {
                                self.viewRouter.currentPage = "page_convertor"
                                
                            }) {
                            Text("Convertor")
                            }.font(.system(size: 18))
                            .frame(width: (UIScreen.main.bounds.width - 5 * 12)/4, height: ((UIScreen.main.bounds.width - 5 * 12)/4)*0.5)
                            .foregroundColor(.white)
                            .background(Color.gray)
                            .cornerRadius((UIScreen.main.bounds.width - 5 * 12)/4)

                            Button(action: {
                                self.viewRouter.currentPage = "page_basic"
                                print ("lololol")
                                print(self.viewRouter.currentPage)
                            }) {
                            Text("Basic")
                            }.font(.system(size: 18))
                            .frame(width: (UIScreen.main.bounds.width - 5 * 12)/4, height: ((UIScreen.main.bounds.width - 5 * 12)/4)*0.5)
                            .foregroundColor(.white)
                            .background(Color.gray)
                            .cornerRadius((UIScreen.main.bounds.width - 5 * 12)/4)

                 }.foregroundColor(.white)
            }
        }
    }
        
//        func helper() -> String{
//
//                        if viewRouter.currenttype == "Length" {
//                            return "Length"
//                        }  else if viewRouter.currenttype == "Speed" {
//                            return "Speed"
//                        } else if viewRouter.currenttype == "Currency" {
//                            return "Currency"
//                        } else if viewRouter.currenttype == "Temperature" {
//                            return "Temperature"
//                        } else if viewRouter.currenttype == "Acceleration" {
//                            return "Acceleration"
//                        }   else if viewRouter.currenttype == "Area" {
//                            return "Area"
//                        } else if viewRouter.currenttype == "Cooking" {
//                            return "Cooking"
//                        } else if viewRouter.currenttype == "Data" {
//                            return "Data"
//                        } else if viewRouter.currenttype == "Density" {
//                            return "Density"
//                        } else if viewRouter.currenttype == "Electric Current" {
//                            return "Electric Current"
//                        } else if viewRouter.currenttype == "Energy" {
//                            return "Energy"
//                        } else if viewRouter.currenttype == "Frequency" {
//                            return "Frequency"
//                        } else if viewRouter.currenttype == "Fuel Consumption" {
//                            return "Fuel Consumption"
//                        }  else if viewRouter.currenttype == "Illuminance" {
//                            return "Illuminance"
//                        } else if viewRouter.currenttype == "Metric Prefix" {
//                            return "Metric Prefix"
//                        } else if viewRouter.currenttype == "Network Speed" {
//                            return "Network Speed"
//                        } else if viewRouter.currenttype == "Plain Angle" {
//                            return "Plain Angle"
//                        }   else if viewRouter.currenttype == "Power" {
//                            return "Power"
//                        } else if viewRouter.currenttype == "Pressure" {
//                            return "Pressure"
//                        } else if viewRouter.currenttype == "Radiation Dose" {
//                            return "Radiation Dose"
//                        } else if viewRouter.currenttype == "Radioactivity" {
//                            return "Radioactivity"
//                        }   else if viewRouter.currenttype == "Time" {
//                            return "Time"
//                        } else if viewRouter.currenttype == "Volume" {
//                            return "Volume"
//                        } else if viewRouter.currenttype == "Weight" {
//                            return "Weight"
//                        } else  {
//                            return "Base Conversions"
//                        }
//
//                }
}
                


struct MainConvertorView_Previews: PreviewProvider {
    static var previews: some View {
        MainConvertorView()
            .environmentObject(ViewRouter())
            .environmentObject(GlobalEnvironment())
        
            
            
    }
}
