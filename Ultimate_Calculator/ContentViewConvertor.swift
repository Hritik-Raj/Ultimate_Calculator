//
//  ContentViewConvertor.swift
//  Ultimate_Calculator
//
//  Created by Hritik Raj on 8/5/20.
//  Copyright © 2020 Hritik Raj. All rights reserved.
//

import SwiftUI


enum ConvertorButton: String {

case Acceleration, Area, Cooking, Currency, Data, Density
case Electric_Current, Energy, Frequency, Fuel_Consumption, Illuminance, Length
case Metric_Prefix, Network_Speed, Plain_Angle, Power, Pressure, Radition_Dose
case Radioactivity, Speed, Temperature, Time, Volume, Weight, Base_Conversions


var title: String {
        switch self {
        case .Acceleration: return "Acceleration"
        case .Area: return "Area"
        case .Cooking: return "Cooking"
        case .Currency: return "Currency"
        case .Data: return "Data"
        case .Density: return "Density"
        case .Electric_Current: return "Electric Current"
        case .Energy: return "Energy"
        case .Frequency: return "Frequency"
        case .Fuel_Consumption: return "Fuel Consumption"
        case .Illuminance: return "Illuminance"
        case .Length: return "Length"
        case .Metric_Prefix: return "Metric Prefix"
        case .Network_Speed: return "Network Speed"
        case .Plain_Angle: return "Plain Angle"
        case .Power: return "Power"
        case .Pressure: return "Pressure"
        case .Radition_Dose: return "Radiation Dose"
        case .Radioactivity: return "Radioactivity"
        case .Speed: return "Speed"
        case .Temperature: return "Temperature"
        case .Time: return "Time"
        case .Volume: return "Volume"
        case .Weight: return "Weight"
        default:
            return "Base Conversions"
        }
    
    }
}

struct ContentViewConvertor : View {
    @EnvironmentObject var env: GlobalEnvironment
    @EnvironmentObject var viewRouter: ViewRouter
    
    let buttons_convertor: [ConvertorButton] = [
        .Acceleration, .Area, .Cooking, .Currency, .Data, .Density, .Electric_Current, .Energy, .Frequency, .Fuel_Consumption, .Illuminance, .Length,
        .Metric_Prefix, .Network_Speed, .Plain_Angle, .Power, .Pressure, .Radition_Dose, .Radioactivity, .Speed, .Temperature, .Time, .Volume,
        .Weight, .Base_Conversions
    ]
    
    var body: some View {
        
        ZStack (alignment: .bottom) { Color.black
        .edgesIgnoringSafeArea(.all)
            VStack (spacing: 12){
                
                HStack{
                    Text("Conversions")
                    .foregroundColor(.white)
                    
                    Spacer()
                    
                    Button(action: {}) {
                        Text("Favorites")
                    }    .foregroundColor(.white)
                         .background(Color.gray)
                }.padding(.all)
                
                ScrollView {
                    VStack(spacing: 12) {
                        ForEach(buttons_convertor, id: \.self) {
                         button in HStack (spacing: 12) {
                         
                             ConvertorOptionButtonView(button: button)
//                                .environmentObject(self.viewRouter)
                                 
                             }
                         }
                    }
 
                }

                
                Spacer()
                
                HStack {
                              Text("Convertor").font(.system(size: 14))
                              
                              Button(action: {self.viewRouter.currentPage = "page_settings"}) {
                              Text("Settings")
                              }.font(.system(size: 18))
                              .frame(width: (UIScreen.main.bounds.width - 5 * 12)/4, height: ((UIScreen.main.bounds.width - 5 * 12)/4)*0.5)
                              .foregroundColor(.white)
                              .background(Color.gray)
                              .cornerRadius((UIScreen.main.bounds.width - 5 * 12)/4)
                              
                              Button(action: {self.viewRouter.currentPage = "page_convertor"}) {
                              Text("Convertor")
                              }.font(.system(size: 18))
                              .frame(width: (UIScreen.main.bounds.width - 5 * 12)/4, height: ((UIScreen.main.bounds.width - 5 * 12)/4)*0.5)
                              .foregroundColor(.white)
                              .background(Color.gray)
                              .cornerRadius((UIScreen.main.bounds.width - 5 * 12)/4)
                              
                              Button(action: {self.viewRouter.currentPage = "page_basic"}) {
                              Text("Basic")
                              }.font(.system(size: 18))
                              .frame(width: (UIScreen.main.bounds.width - 5 * 12)/4, height: ((UIScreen.main.bounds.width - 5 * 12)/4)*0.5)
                              .foregroundColor(.white)
                              .background(Color.gray)
                              .cornerRadius((UIScreen.main.bounds.width - 5 * 12)/4)
                          }.foregroundColor(.white)
            }.padding(.bottom)
          
        }
    }
}

#if DEBUG
struct ContentViewConvertor_Previews : PreviewProvider {
    static var previews: some View {
        ContentViewConvertor().environmentObject(ViewRouter())
    }
}
#endif
