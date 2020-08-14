//
//  ContentView.swift
//  Ultimate_Calculator
//
//  Created by Hritik Raj on 7/28/20.
//  Copyright © 2020 Hritik Raj. All rights reserved.
//

import SwiftUI
import Expression
import Darwin
import Combine
import ModalView

enum MenuButton: String {
    case basic, scientific, convertor, settings, customize, themes
    
    var title: String {
        switch self {
        case .basic: return "Basic"
        case .scientific: return "Scientific"
        case .convertor: return "Convertor"
        case .customize: return "Customize"
        case .themes: return "Themes"
        default:
            return "Settings"
        }
    }
}

enum CalculatorButton: String {
    
    case zero, one, two, three, four, five, six, seven, eight, nine
    case equals, plus, minus, multiply, divide, DEL
    case decimal
    case ac, plus_minus, percent
    case leftbracket, rightbracket, mc, m_plus, m_minus, m_r
    case second, x_square, x_cube, x_raised_y, e_raised_x, ten_raised_x
    case one_by_x, square_root, cube_root, y_root_x, natural_log, log_base_ten
    case factorial, sin_, cos_, tan_, exp_, EE
    case RAD, sinh_, cosh_, tanh_, pi_, Rand_
    case sin_inverse, cos_inverse, tan_inverse, sinh_inverse, cosh_inverse, tanh_inverse
    case y_raised_x, two_raised_x, log_base_y, log_base_two
    
    var title: String {
        switch self {
            case .zero: return "0"
            case .one: return "1"
            case .two: return "2"
            case .three: return "3"
            case .four: return "4"
            case .five: return "5"
            case .six: return "6"
            case .seven: return "7"
            case .eight: return "8"
            case .nine: return "9"
            case .plus: return "+"
            case .minus: return "-"
            case .DEL: return "DEL"
            case .multiply: return "*"
            case .divide: return "/"
            case .plus_minus: return "+/-"
            case .percent: return "%"
            case .equals: return "="
            case .decimal: return "."
            case .leftbracket: return "("
            case .rightbracket: return ")"
            case .mc: return "mc"
            case .m_plus: return "m+"
            case .m_minus: return "m-"
            case .m_r: return "mr"
            case .second: return "2nd"
            case .x_square: return "x^2"
            case .x_cube: return "x^3"
            case .x_raised_y: return "x^y"
            case .e_raised_x: return "e^x"
            case .ten_raised_x: return "10^x"
            case .one_by_x: return "1/x"
            case .square_root: return "2√x"
            case .cube_root: return "3√x"
            case .y_root_x: return "y√x"
            case .natural_log: return "ln"
            case .log_base_ten: return "log_10"
            case .factorial: return "x!"
            case .sin_: return "sin"
            case .cos_: return "cos"
            case .tan_: return "tan"
            case .exp_: return "e"
            case .EE: return "EE"
            case .RAD: return "Rad"
            case .sinh_: return "sinh"
            case .cosh_: return "cosh"
            case .tanh_: return "tanh"
            case .pi_: return "pi"
            case .Rand_: return "Rand"
            case .sin_inverse: return "sin -1"
            case .cos_inverse: return "cos -1"
            case .tan_inverse: return "tan -1"
            case .sinh_inverse: return "sinh -1"
            case .cosh_inverse: return "cosh -1"
            case .tanh_inverse: return "tanh -1"
            case .y_raised_x: return "y^x"
            case .two_raised_x: return "2^x"
            case .log_base_y: return "log_y"
            case .log_base_two: return "log_2"
            default:
                return "AC"
        }
    }
    
//    var backgroundColor: Color {
//            switch self {
//                case .zero, .one, .two, .three, .four, .five, .six, .seven, .eight, .nine, .decimal:
//                    return Color(.darkGray)
//                case .ac, .plus_minus, .percent:
//                    return Color(.lightGray)
//            case .divide, .multiply, .minus, .plus, .equals, .DEL:
//                    return .orange
//                default:
//                    return .gray
//            }
//    }
}

class GlobalEnvironment: ObservableObject {
    @EnvironmentObject var viewRouter: ViewRouter
    @Published var display = "0"
    @Published var displayconvert = "0"
    @Published var fontsize = 80
    @Published var fontsizeconvert = 80
    
    var numberFormatter:NumberFormatter = NumberFormatter()
    var unFormattedNumberValue:String = "0"
    var unFormattedNumberValueConvert:String = "0"
    var completestring: String = ""
    var completestringconvert: String = ""
    var activeOperation:String = ""
    var previousValue:Double = 0
    var minus_plus:Bool = false
    var minus_plus_convert:Bool = false
    
    init() {
        self.numberFormatter.usesGroupingSeparator = true
        self.numberFormatter.numberStyle = .decimal
        self.numberFormatter.locale = Locale.current
    }
    
    func getFontSize() {
        switch self.display.count {
        case 7:
            self.fontsize = 80
        case 8:
            self.fontsize = 70
        case 9:
            self.fontsize = 65
        default:
            break
        }
    }
    
    func getFontSizeConvert() {
        switch self.displayconvert.count {
        case 7:
            self.fontsize = 80
        case 8:
            self.fontsize = 70
        case 9:
            self.fontsize = 65
        default:
            break
        }
    }
    
    
    

    func handlekeypress(_ calculatorButton: CalculatorButton) {
        print("Reached")
        if calculatorButton.title == "AC" {
            self.reset()
        } else if calculatorButton.title == "DEL"{
            if display != "0" && completestring != "0" {
                display.remove(at: display.index(before: display.endIndex))
                if display.count == 0 {
                    display = "0"
                    completestring = "0"
                }
                completestring.remove(at: completestring.index(before: completestring.endIndex))
            }
            
        } else if calculatorButton.title == "+/-" {
            if minus_plus == false {
                display.insert(contentsOf: "-", at: display.startIndex)
    
                completestring.insert(contentsOf: "-", at: completestring.startIndex)
                minus_plus = true
            }
            
            else if minus_plus == true {
                display.remove(at: display.startIndex)
                completestring.remove(at: completestring.startIndex)
                minus_plus = false
            }
            
        }
            else if calculatorButton.title == "=" {
            let expression = Expression(self.completestring)
            print ("Hello ", completestring)
            do {
                let result = try expression.evaluate()
                self.display = formatNumber(value: String(result))
                print ("hi", self.display)
                
            }
            catch {
                print(error)
            }
        }
        else if calculatorButton.title == "x^2" {
            completestring = String(pow(Double(display)!, 2.0))
        }
            
        else if calculatorButton.title == "x^3" {
            completestring = String(pow(Double(display)!, 3.0))
        }
        
        else if calculatorButton.title == "2√x" {
            completestring = String(sqrt(Double(display)!))
        }
        
        else if calculatorButton.title == "3√x" {
            completestring = String(pow(Double(display)!, 1.0/3.0))
        }
        else if calculatorButton.title != "=" {
            self.completestring += calculatorButton.title
            self.handlenumberselection(label: calculatorButton.title)
               }
    }
    
    
    func handlekeypressconvert(_ calculatorButton: CalculatorButton) {
        print("Reached convert")
        if calculatorButton.title == "AC" {
            self.resetconvert()
        } else if calculatorButton.title == "DEL"{
            if displayconvert != "0" && completestringconvert != "0" {
                displayconvert.remove(at: displayconvert.index(before: displayconvert.endIndex))
                if displayconvert.count == 0 {
                    displayconvert = "0"
                    completestringconvert = "0"
                }
                completestringconvert.remove(at: completestringconvert.index(before: completestringconvert.endIndex))
            }
            
        } else if calculatorButton.title == "+/-" {
            if minus_plus_convert == false {
                displayconvert.insert(contentsOf: "-", at: displayconvert.startIndex)
    
                completestringconvert.insert(contentsOf: "-", at: completestringconvert.startIndex)
                minus_plus_convert = true
            }
            
            else if minus_plus_convert == true {
                displayconvert.remove(at: displayconvert.startIndex)
                completestringconvert.remove(at: completestringconvert.startIndex)
                minus_plus_convert = false
            }
            
        }
            else if calculatorButton.title == "=" {
            let expressionconvert = Expression(self.completestringconvert)
            print ("Hello ", completestringconvert)
            do {
                let resultconvert = try expressionconvert.evaluate()
                self.displayconvert = formatNumber(value: String(resultconvert))
                print ("hi", self.displayconvert)
                
            }
            catch {
                print(error)
            }
        }

    
        else if calculatorButton.title != "=" {
            self.completestringconvert += calculatorButton.title
            self.handlenumberselectionconvert(label: calculatorButton.title)
               }
    }
    
    
    
    func handlenumberselection(label: String) {
        if self.display.count == 0 || self.display.count < 9 {
                print ("reached 2")
                self.display = display == "0" ? label : display + label
            self.display = self.formatNumber(value: self.display)
             self.getFontSize()
        }
    }
    
    
    func handlenumberselectionconvert(label: String) {
        if self.displayconvert.count == 0 || self.displayconvert.count < 9 {
                print ("reached 22")
                self.displayconvert = displayconvert == "0" ? label : displayconvert + label
            self.displayconvert = self.formatNumber(value: self.displayconvert)
             self.getFontSizeConvert()
        }
    }
    
    
    
    func cancel() {
        self.display = "0"
        self.completestring = ""
    }
    
    func reset() {
        self.cancel()
    }
    
    
    func cancelconvert() {
        self.displayconvert = "0"
        self.completestringconvert = ""
    }
    
    func resetconvert() {
        self.cancelconvert()
    }
    
    func formatNumber(value: String) -> String {
        var formattedValue = value
        if let doubleValue = Double(formattedValue) {
            formattedValue = self.numberFormatter.string(from: NSNumber(value: doubleValue)) ?? value
        }
        return formattedValue
    }
    
    
}


class ViewRouter: ObservableObject {
    let objectWillChange = PassthroughSubject<ViewRouter, Never>()
    var currentPage: String = "page_settings" {
        didSet {
            objectWillChange.send(self)
        }
    }
    
    var currentTheme: String = "Default" {
        didSet {
            objectWillChange.send(self)
        }
    }
    
    var currentButtonDesign: String = "Circle" {
        didSet {
            objectWillChange.send(self)
        }
    }
//
//    var currenttype: String = "Length" {
//        didSet {
//            objectWillChange.send(self)
//        }
//    }
}




struct ContentView: View {
    @EnvironmentObject var viewRouter: ViewRouter
    @EnvironmentObject var env: GlobalEnvironment
    @Environment(\.verticalSizeClass) var verticalSizeClass: UserInterfaceSizeClass?
    @Environment(\.horizontalSizeClass) var horizontalSizeClass: UserInterfaceSizeClass?


    
    var body: some View {
        
        VStack {
            if viewRouter.currentPage == "page_basic" {
                ContentViewBasic()
            }
            else if viewRouter.currentPage == "page_convertor" {
            ContentViewConvertor()
            }
            else if viewRouter.currentPage == "page_settings" {
                ContentViewSettings()
            }
            else if viewRouter.currentPage == "page_theme" {
                ContentViewTheme()
            }
            else if viewRouter.currentPage == "page_customize" {
                ContentViewCustomize()
            }
            else if viewRouter.currentPage == "page_main_convert" {
                MainConvertorView()
            }
            else if viewRouter.currentPage == "Length" {
                Length()
            }  else if viewRouter.currentPage == "Speed" {
                Speed()
            } else if viewRouter.currentPage == "Currency" {
                Currency()
            } else if viewRouter.currentPage == "Temperature" {
                Temperature()
            } else if viewRouter.currentPage == "Acceleration" {
                Acceleration()
            }   else if viewRouter.currentPage == "Area" {
                Area()
            } else if viewRouter.currentPage == "Cooking" {
                Cooking()
            } else if viewRouter.currentPage == "Data" {
                Data()
            } else if viewRouter.currentPage == "Density" {
                Density()
            } else if viewRouter.currentPage == "Electric Current" {
                Electric_Current()
            } else if viewRouter.currentPage == "Energy" {
                Energy()
            } else if viewRouter.currentPage == "Frequency" {
                Frequency()
            } else if viewRouter.currentPage == "Fuel Consumption" {
                Fuel_Consumption()
            }  else if viewRouter.currentPage == "Illuminance" {
                Illuminance()
            } else if viewRouter.currentPage == "Metric Prefix" {
                Metric_Prefix()
            } else if viewRouter.currentPage == "Network Speed" {
                Network_Speed()
            } else if viewRouter.currentPage == "Plain Angle" {
                Plain_Angle()
            }   else if viewRouter.currentPage == "Power" {
                Power()
            } else if viewRouter.currentPage == "Pressure" {
                Pressure()
            } else if viewRouter.currentPage == "Radiation Dose" {
                Radiation_Dose()
            } else if viewRouter.currentPage == "Radioactivity" {
                Radioactivity()
            }  else if viewRouter.currentPage == "Time" {
                Time()
            } else if viewRouter.currentPage == "Volume" {
                Volume()
            } else if viewRouter.currentPage == "Weight" {
                Weight()
            } else if viewRouter.currentPage == "Base Conversions" {
                Base_Conversions()
            }
            
            
        }.transition(.scale)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            ContentView()
                .environmentObject(GlobalEnvironment())
                .environmentObject(ViewRouter())
        }
    }
}
