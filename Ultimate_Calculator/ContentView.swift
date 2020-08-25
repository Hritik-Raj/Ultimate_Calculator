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
    @Published var displayconvertacc = "0"
    @Published var fontsizeacc = 80
    @Published var displayconvertare = "0"
    @Published var fontsizeare = 80
    @Published var displayconvertcook = "0"
    @Published var fontsizecook = 80
//    @Published var displayconvertcurr = "0"
//    @Published var fontsizecurr = 80
    @Published var displayconvertdat = "0"
    @Published var fontsizedat = 80
    @Published var displayconvertdens = "0"
    @Published var fontsizedens = 80
    @Published var displayconvertelec = "0"
    @Published var fontsizeelec = 80
    @Published var displayconvertener = "0"
    @Published var fontsizeener = 80
    @Published var displayconvertfreq = "0"
    @Published var fontsizefreq = 80
    @Published var displayconvertfuel = "0"
    @Published var fontsizefuel = 80
    @Published var displayconvertillu = "0"
    @Published var fontsizeillu = 80
    @Published var displayconvertleng = "0"
    @Published var fontsizeleng = 80
    @Published var displayconvertmetr = "0"
    @Published var fontsizemetr = 80
    @Published var displayconvertnetw = "0"
    @Published var fontsizenetw = 80
    @Published var displayconvertplain = "0"
    @Published var fontsizeplain = 80
    @Published var displayconvertpower = "0"
    @Published var fontsizepower = 80
    @Published var displayconvertpress = "0"
    @Published var fontsizepress = 80
    @Published var displayconvertradi = "0"
    @Published var fontsizeradi = 80
    @Published var displayconvertradio = "0"
    @Published var fontsizeradio = 80
    @Published var displayconvertspeed = "0"
    @Published var fontsizespeed = 80
    @Published var displayconverttemp = "0"
    @Published var fontsizetemp = 80
    @Published var displayconverttime = "0"
    @Published var fontsizetime = 80
    @Published var displayconvertvolume = "0"
    @Published var fontsizevolume = 80
    @Published var displayconvertweight = "0"
    @Published var fontsizeweight = 80
    @Published var displayconvertbase = "0"
    @Published var fontsizebase = 80
    @Published var displayconvertcurrency = "0"
    @Published var fontsizecurrency = 80
    
    
    var numberFormatter:NumberFormatter = NumberFormatter()
    var unFormattedNumberValue:String = "0"
//    var unFormattedNumberValueConvert:String = "0"
    var completestring: String = ""
    var completestringconvert: String = ""
//    var activeOperation:String = ""
    var previousValue:Double = 0
    var minus_plus:Bool = false
    var minus_plus_convert:Bool = false
    
    var completestringconvertacc: String = ""
    var minus_plus_convertacc:Bool = false
    var completestringconvertare: String = ""
    var minus_plus_convertare:Bool = false
    var completestringconvertcook: String = ""
    var minus_plus_convertcook:Bool = false
//    var completestringconvertcurr: String = ""
//    var minus_plus_convertcurr:Bool = false
    var completestringconvertdat: String = ""
    var minus_plus_convertdat:Bool = false
    var completestringconvertdens: String = ""
    var minus_plus_convertdens:Bool = false
    var completestringconvertelec: String = ""
    var minus_plus_convertelec:Bool = false
    var completestringconvertener: String = ""
    var minus_plus_convertener:Bool = false
    var completestringconvertfreq: String = ""
    var minus_plus_convertfreq:Bool = false
    var completestringconvertfuel: String = ""
    var minus_plus_convertfuel:Bool = false
    var completestringconvertillu: String = ""
    var minus_plus_convertillu:Bool = false
    var completestringconvertleng: String = ""
    var minus_plus_convertleng:Bool = false
    var completestringconvertmetr: String = ""
    var minus_plus_convertmetr:Bool = false
    var completestringconvertnetw: String = ""
    var minus_plus_convertnetw:Bool = false
    var completestringconvertplain: String = ""
    var minus_plus_convertplain:Bool = false
    var completestringconvertpower: String = ""
    var minus_plus_convertpower:Bool = false
    var completestringconvertpress: String = ""
    var minus_plus_convertpress:Bool = false
    var completestringconvertradi: String = ""
    var minus_plus_convertradi:Bool = false
    var completestringconvertradio: String = ""
    var minus_plus_convertradio:Bool = false
    var completestringconvertspeed: String = ""
    var minus_plus_convertspeed:Bool = false
    var completestringconverttemp: String = ""
    var minus_plus_converttemp:Bool = false
    var completestringconverttime: String = ""
    var minus_plus_converttime:Bool = false
    var completestringconvertvolume: String = ""
    var minus_plus_convertvolume:Bool = false
    var completestringconvertweight: String = ""
    var minus_plus_convertweight:Bool = false
    var completestringconvertbase: String = ""
    var minus_plus_convertbase:Bool = false
    var completestringconvertcurrency: String = ""
    var minus_plus_convertcurrency:Bool = false

    
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
    
    
    
    func decidetype(_ calculatorButton: CalculatorButton, _ convertorButton: String) {
        if convertorButton == "Acceleration" {
            handlekeypressacc(calculatorButton)
        }
        else if convertorButton == "Area" {
            handlekeypressare(calculatorButton)
        }
        else if convertorButton == "Cooking" {
            handlekeypresscook(calculatorButton)
        }
        else if convertorButton == "Currency Convert" {
            handlekeypresscurrency(calculatorButton)
        }
        else if convertorButton == "Data" {
            handlekeypressdat(calculatorButton)
        }
        else if convertorButton == "Density" {
            handlekeypressdens(calculatorButton)
        }
        else if convertorButton == "Electric Current" {
            handlekeypresselec(calculatorButton)
        }
        else if convertorButton == "Energy" {
            handlekeypressener(calculatorButton)
        }
        else if convertorButton == "Frequency" {
            handlekeypressfreq(calculatorButton)
        }
        else if convertorButton == "Fuel Consumption" {
            handlekeypressfuel(calculatorButton)
        }
        else if convertorButton == "Illuminance" {
            handlekeypressillu(calculatorButton)
        }
        else if convertorButton == "Length" {
            handlekeypressleng(calculatorButton)
        }
        else if convertorButton == "Metric Prefix" {
            handlekeypressmetr(calculatorButton)
        }
        else if convertorButton == "Network Speed" {
            handlekeypressnetw(calculatorButton)
        }
        else if convertorButton == "Plain Angle" {
            handlekeypressplain(calculatorButton)
        }
        else if convertorButton == "Power" {
            handlekeypresspower(calculatorButton)
        }
        else if convertorButton == "Pressure" {
            handlekeypresspress(calculatorButton)
        }
        else if convertorButton == "Radiation Dose" {
            handlekeypressradi(calculatorButton)
        }
        else if convertorButton == "Radioactivity" {
            handlekeypressradio(calculatorButton)
        }
        else if convertorButton == "Speed" {
            handlekeypressspeed(calculatorButton)
        }
        else if convertorButton == "Temperature" {
            handlekeypresstemp(calculatorButton)
        }
        else if convertorButton == "Time" {
            handlekeypresstime(calculatorButton)
        }
        else if convertorButton == "Volume" {
            handlekeypressvolume(calculatorButton)
        }
        else if convertorButton == "Weight" {
            handlekeypressweight(calculatorButton)
        }
        else if convertorButton == "Base Conversions" {
            handlekeypressbase(calculatorButton)
        }
    }
    func handlekeypress(_ calculatorButton: CalculatorButton) {
//        print("Reached")
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
//            print ("Hello ", completestring)
            do {
                let result = try expression.evaluate()
                self.display = formatNumber(value: String(result))
                
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
      
            do {
                let resultconvert = try expressionconvert.evaluate()
                self.displayconvert = formatNumber(value: String(resultconvert))
   
                
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
       
                self.display = display == "0" ? label : display + label
            self.display = self.formatNumber(value: self.display)
             self.getFontSize()
        }
    }
    
    
    func handlenumberselectionconvert(label: String) {
        if self.displayconvert.count == 0 || self.displayconvert.count < 9 {
      
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
    
    func handlekeypressacc(_ calculatorButton: CalculatorButton) {

        if calculatorButton.title == "AC" {
            self.resetconvertacc()
        } else if calculatorButton.title == "DEL"{
            if displayconvertacc != "0" && completestringconvertacc != "0" {
                displayconvertacc.remove(at: displayconvertacc.index(before: displayconvertacc.endIndex))
                if displayconvertacc.count == 0 {
                    displayconvertacc = "0"
                    completestringconvertacc = "0"
                }
                completestringconvertacc.remove(at: completestringconvertacc.index(before: completestringconvertacc.endIndex))
            }
            
        } else if calculatorButton.title == "+/-" {
            if minus_plus_convertacc == false {
                displayconvertacc.insert(contentsOf: "-", at: displayconvertacc.startIndex)
    
                completestringconvertacc.insert(contentsOf: "-", at: completestringconvertacc.startIndex)
                minus_plus_convertacc = true
            }
            
            else if minus_plus_convertacc == true {
                displayconvertacc.remove(at: displayconvertacc.startIndex)
                completestringconvertacc.remove(at: completestringconvertacc.startIndex)
                minus_plus_convertacc = false
            }
            
        }
            else if calculatorButton.title == "=" {
            let expressionconvert = Expression(self.completestringconvertacc)
//            print ("Hello ", completestringconvert)
            do {
                let resultconvert = try expressionconvert.evaluate()
                self.displayconvertacc = formatNumber(value: String(resultconvert))
//                print ("hi", self.displayconvertacc)
                
            }
            catch {
                print(error)
            }
        }

    
        else if calculatorButton.title != "=" {
            self.completestringconvertacc += calculatorButton.title
            self.handlenumberselectionconvertacc(label: calculatorButton.title)
               }
    }
    
    func handlenumberselectionconvertacc(label: String) {
        if self.displayconvertacc.count == 0 || self.displayconvertacc.count < 9 {
       
                self.displayconvertacc = displayconvertacc == "0" ? label : displayconvertacc + label
            self.displayconvertacc = self.formatNumber(value: self.displayconvertacc)
             self.getFontSizeConvertacc()
        }
    }
    func getFontSizeConvertacc() {
        switch self.displayconvertacc.count {
        case 7:
            self.fontsizeacc = 80
        case 8:
            self.fontsizeacc = 70
        case 9:
            self.fontsizeacc = 65
        default:
            break
        }
    }
    
    func cancelconvertacc() {
        self.displayconvertacc = "0"
        self.completestringconvertacc = ""
    }
    
    func resetconvertacc() {
        self.cancelconvertacc()
    }
    
    
    func handlekeypressare(_ calculatorButton: CalculatorButton) {

        if calculatorButton.title == "AC" {
            self.resetconvertare()
        } else if calculatorButton.title == "DEL"{
            if displayconvertare != "0" && completestringconvertare != "0" {
                displayconvertare.remove(at: displayconvertare.index(before: displayconvertare.endIndex))
                if displayconvertare.count == 0 {
                    displayconvertare = "0"
                    completestringconvertare = "0"
                }
                completestringconvertare.remove(at: completestringconvertare.index(before: completestringconvertare.endIndex))
            }
            
        } else if calculatorButton.title == "+/-" {
            if minus_plus_convertare == false {
                displayconvertare.insert(contentsOf: "-", at: displayconvertare.startIndex)
    
                completestringconvertare.insert(contentsOf: "-", at: completestringconvertare.startIndex)
                minus_plus_convertare = true
            }
            
            else if minus_plus_convertare == true {
                displayconvertare.remove(at: displayconvertare.startIndex)
                completestringconvertare.remove(at: completestringconvertare.startIndex)
                minus_plus_convertare = false
            }
            
        }
            else if calculatorButton.title == "=" {
            let expressionconvert = Expression(self.completestringconvertare)
//            print ("Hello ", completestringconvert)
            do {
                let resultconvert = try expressionconvert.evaluate()
                self.displayconvertare = formatNumber(value: String(resultconvert))
//                print ("hi", self.displayconvert)
                
            }
            catch {
                print(error)
            }
        }

    
        else if calculatorButton.title != "=" {
            self.completestringconvertare += calculatorButton.title
            self.handlenumberselectionconvertare(label: calculatorButton.title)
               }
    }
    
    func handlenumberselectionconvertare(label: String) {
        if self.displayconvertare.count == 0 || self.displayconvertare.count < 9 {
  
                self.displayconvertare = displayconvertare == "0" ? label : displayconvertare + label
            self.displayconvertare = self.formatNumber(value: self.displayconvertare)
             self.getFontSizeConvertare()
        }
    }
    func getFontSizeConvertare() {
        switch self.displayconvertacc.count {
        case 7:
            self.fontsizeare = 80
        case 8:
            self.fontsizeare = 70
        case 9:
            self.fontsizeare = 65
        default:
            break
        }
    }
    
    func cancelconvertare() {
        self.displayconvertare = "0"
        self.completestringconvertare = ""
    }
    
    func resetconvertare() {
        self.cancelconvertare()
    }
    
    
    func handlekeypresscook(_ calculatorButton: CalculatorButton) {
   
        if calculatorButton.title == "AC" {
            self.resetconvertcook()
        } else if calculatorButton.title == "DEL"{
            if displayconvertcook != "0" && completestringconvertcook != "0" {
                displayconvertcook.remove(at: displayconvertcook.index(before: displayconvertcook.endIndex))
                if displayconvertcook.count == 0 {
                    displayconvertcook = "0"
                    completestringconvertcook = "0"
                }
                completestringconvertcook.remove(at: completestringconvertcook.index(before: completestringconvertcook.endIndex))
            }
            
        } else if calculatorButton.title == "+/-" {
            if minus_plus_convertcook == false {
                displayconvertcook.insert(contentsOf: "-", at: displayconvertcook.startIndex)
    
                completestringconvertcook.insert(contentsOf: "-", at: completestringconvertcook.startIndex)
                minus_plus_convertcook = true
            }
            
            else if minus_plus_convertcook == true {
                displayconvertcook.remove(at: displayconvertcook.startIndex)
                completestringconvertcook.remove(at: completestringconvertcook.startIndex)
                minus_plus_convertcook = false
            }
            
        }
            else if calculatorButton.title == "=" {
            let expressionconvert = Expression(self.completestringconvertcook)
//            print ("Hello ", completestringconvert)
            do {
                let resultconvert = try expressionconvert.evaluate()
                self.displayconvertcook = formatNumber(value: String(resultconvert))
//                print ("hi", self.displayconvert)
                
            }
            catch {
                print(error)
            }
        }

    
        else if calculatorButton.title != "=" {
            self.completestringconvertcook += calculatorButton.title
            self.handlenumberselectionconvertcook(label: calculatorButton.title)
               }
    }
    
    func handlenumberselectionconvertcook(label: String) {
        if self.displayconvertcook.count == 0 || self.displayconvertcook.count < 9 {

                self.displayconvertcook = displayconvertcook == "0" ? label : displayconvertcook + label
            self.displayconvertcook = self.formatNumber(value: self.displayconvertcook)
             self.getFontSizeConvertcook()
        }
    }
    func getFontSizeConvertcook() {
        switch self.displayconvertcook.count {
        case 7:
            self.fontsizecook = 80
        case 8:
            self.fontsizecook = 70
        case 9:
            self.fontsizecook = 65
        default:
            break
        }
    }
    
    func cancelconvertcook() {
        self.displayconvertcook = "0"
        self.completestringconvertcook = ""
    }
    
    func resetconvertcook() {
        self.cancelconvertcook()
    }
    
    
//    func handlekeypresscurr(_ calculatorButton: CalculatorButton) {
//        print("Reached convert")
//        if calculatorButton.title == "AC" {
//            self.resetconvertcurr()
//        } else if calculatorButton.title == "DEL"{
//            if displayconvertcurr != "0" && completestringconvertcurr != "0" {
//                displayconvertcurr.remove(at: displayconvertcurr.index(before: displayconvertcurr.endIndex))
//                if displayconvertcurr.count == 0 {
//                    displayconvertcurr = "0"
//                    completestringconvertcurr = "0"
//                }
//                completestringconvertcurr.remove(at: completestringconvertcurr.index(before: completestringconvertcurr.endIndex))
//            }
//
//        } else if calculatorButton.title == "+/-" {
//            if minus_plus_convertcurr == false {
//                displayconvertcurr.insert(contentsOf: "-", at: displayconvertcurr.startIndex)
//
//                completestringconvertcurr.insert(contentsOf: "-", at: completestringconvertcurr.startIndex)
//                minus_plus_convertcurr = true
//            }
//
//            else if minus_plus_convertcurr == true {
//                displayconvertcurr.remove(at: displayconvertcurr.startIndex)
//                completestringconvertcurr.remove(at: completestringconvertcurr.startIndex)
//                minus_plus_convertcurr = false
//            }
//
//        }
//            else if calculatorButton.title == "=" {
//            let expressionconvert = Expression(self.completestringconvertcurr)
////            print ("Hello ", completestringconvert)
//            do {
//                let resultconvert = try expressionconvert.evaluate()
//                self.displayconvertcurr = formatNumber(value: String(resultconvert))
////                print ("hi", self.displayconvert)
//
//            }
//            catch {
//                print(error)
//            }
//        }

    
//        else if calculatorButton.title != "=" {
//            self.completestringconvertcurr += calculatorButton.title
//            self.handlenumberselectionconvertcurr(label: calculatorButton.title)
//               }
//    }
//
//    func handlenumberselectionconvertcurr(label: String) {
//        if self.displayconvertcurr.count == 0 || self.displayconvertcurr.count < 9 {
//                print ("reached 22")
//                self.displayconvertcurr = displayconvertcurr == "0" ? label : displayconvertcurr + label
//            self.displayconvertcurr = self.formatNumber(value: self.displayconvertcurr)
//             self.getFontSizeConvertcurr()
//        }
//    }
//    func getFontSizeConvertcurr() {
//        switch self.displayconvertcurr.count {
//        case 7:
//            self.fontsize = 80
//        case 8:
//            self.fontsize = 70
//        case 9:
//            self.fontsize = 65
//        default:
//            break
//        }
//    }
//
//    func cancelconvertcurr() {
//        self.displayconvertcurr = "0"
//        self.completestringconvertcurr = ""
//    }
//
//    func resetconvertcurr() {
//        self.cancelconvertcurr()
//    }
    
    
    func handlekeypressdat(_ calculatorButton: CalculatorButton) {

        if calculatorButton.title == "AC" {
            self.resetconvertdat()
        } else if calculatorButton.title == "DEL"{
            if displayconvertdat != "0" && completestringconvertdat != "0" {
                displayconvertdat.remove(at: displayconvertdat.index(before: displayconvertdat.endIndex))
                if displayconvertdat.count == 0 {
                    displayconvertdat = "0"
                    completestringconvertdat = "0"
                }
                completestringconvertdat.remove(at: completestringconvertdat.index(before: completestringconvertdat.endIndex))
            }
            
        } else if calculatorButton.title == "+/-" {
            if minus_plus_convertdat == false {
                displayconvertdat.insert(contentsOf: "-", at: displayconvertdat.startIndex)
    
                completestringconvertdat.insert(contentsOf: "-", at: completestringconvertdat.startIndex)
                minus_plus_convertdat = true
            }
            
            else if minus_plus_convertdat == true {
                displayconvertdat.remove(at: displayconvertdat.startIndex)
                completestringconvertdat.remove(at: completestringconvertdat.startIndex)
                minus_plus_convertdat = false
            }
            
        }
            else if calculatorButton.title == "=" {
            let expressionconvert = Expression(self.completestringconvertdat)
//            print ("Hello ", completestringconvert)
            do {
                let resultconvert = try expressionconvert.evaluate()
                self.displayconvertdat = formatNumber(value: String(resultconvert))
//                print ("hi", self.displayconvert)
                
            }
            catch {
                print(error)
            }
        }

    
        else if calculatorButton.title != "=" {
            self.completestringconvertdat += calculatorButton.title
            self.handlenumberselectionconvertdat(label: calculatorButton.title)
               }
    }
    
    func handlenumberselectionconvertdat(label: String) {
        if self.displayconvertdat.count == 0 || self.displayconvertdat.count < 9 {
    
                self.displayconvertdat = displayconvertdat == "0" ? label : displayconvertdat + label
            self.displayconvertdat = self.formatNumber(value: self.displayconvertdat)
             self.getFontSizeConvertdat()
        }
    }
    func getFontSizeConvertdat() {
        switch self.displayconvertdat.count {
        case 7:
            self.fontsizedat = 80
        case 8:
            self.fontsizedat = 70
        case 9:
            self.fontsizedat = 65
        default:
            break
        }
    }
    
    func cancelconvertdat() {
        self.displayconvertdat = "0"
        self.completestringconvertdat = ""
    }
    
    func resetconvertdat() {
        self.cancelconvertdat()
    }
    
    
    func handlekeypressdens(_ calculatorButton: CalculatorButton) {
        
        if calculatorButton.title == "AC" {
            self.resetconvertdens()
        } else if calculatorButton.title == "DEL"{
            if displayconvertdens != "0" && completestringconvertdens != "0" {
                displayconvertdens.remove(at: displayconvertdens.index(before: displayconvertdens.endIndex))
                if displayconvertdens.count == 0 {
                    displayconvertdens = "0"
                    completestringconvertdens = "0"
                }
                completestringconvertdens.remove(at: completestringconvertdens.index(before: completestringconvertdens.endIndex))
            }
            
        } else if calculatorButton.title == "+/-" {
            if minus_plus_convertdens == false {
                displayconvertdens.insert(contentsOf: "-", at: displayconvertdens.startIndex)
    
                completestringconvertdens.insert(contentsOf: "-", at: completestringconvertdens.startIndex)
                minus_plus_convertdens = true
            }
            
            else if minus_plus_convertdens == true {
                displayconvertdens.remove(at: displayconvertdens.startIndex)
                completestringconvertdens.remove(at: completestringconvertdens.startIndex)
                minus_plus_convertdens = false
            }
            
        }
            else if calculatorButton.title == "=" {
            let expressionconvert = Expression(self.completestringconvertdens)
//            print ("Hello ", completestringconvert)
            do {
                let resultconvert = try expressionconvert.evaluate()
                self.displayconvertdens = formatNumber(value: String(resultconvert))
//                print ("hi", self.displayconvert)
                
            }
            catch {
                print(error)
            }
        }

    
        else if calculatorButton.title != "=" {
            self.completestringconvertdens += calculatorButton.title
            self.handlenumberselectionconvertdens(label: calculatorButton.title)
               }
    }
    
    func handlenumberselectionconvertdens(label: String) {
        if self.displayconvertdens.count == 0 || self.displayconvertdens.count < 9 {
                print ("reached 22")
                self.displayconvertdens = displayconvertdens == "0" ? label : displayconvertdens + label
            self.displayconvertdens = self.formatNumber(value: self.displayconvertdens)
             self.getFontSizeConvertdens()
        }
    }
    func getFontSizeConvertdens() {
        switch self.displayconvertdens.count {
        case 7:
            self.fontsizedens = 80
        case 8:
            self.fontsizedens = 70
        case 9:
            self.fontsizedens = 65
        default:
            break
        }
    }
    
    func cancelconvertdens() {
        self.displayconvertdens = "0"
        self.completestringconvertdens = ""
    }
    
    func resetconvertdens() {
        self.cancelconvertdens()
    }
    
    
    func handlekeypresselec(_ calculatorButton: CalculatorButton) {
        print("Reached convert")
        if calculatorButton.title == "AC" {
            self.resetconvertelec()
        } else if calculatorButton.title == "DEL"{
            if displayconvertelec != "0" && completestringconvertelec != "0" {
                displayconvertelec.remove(at: displayconvertelec.index(before: displayconvertelec.endIndex))
                if displayconvertelec.count == 0 {
                    displayconvertelec = "0"
                    completestringconvertelec = "0"
                }
                completestringconvertelec.remove(at: completestringconvertelec.index(before: completestringconvertelec.endIndex))
            }
            
        } else if calculatorButton.title == "+/-" {
            if minus_plus_convertelec == false {
                displayconvertelec.insert(contentsOf: "-", at: displayconvertelec.startIndex)
    
                completestringconvertelec.insert(contentsOf: "-", at: completestringconvertelec.startIndex)
                minus_plus_convertelec = true
            }
            
            else if minus_plus_convertelec == true {
                displayconvertelec.remove(at: displayconvertelec.startIndex)
                completestringconvertelec.remove(at: completestringconvertelec.startIndex)
                minus_plus_convertelec = false
            }
            
        }
            else if calculatorButton.title == "=" {
            let expressionconvert = Expression(self.completestringconvertelec)
//            print ("Hello ", completestringconvert)
            do {
                let resultconvert = try expressionconvert.evaluate()
                self.displayconvertelec = formatNumber(value: String(resultconvert))
//                print ("hi", self.displayconvert)
                
            }
            catch {
                print(error)
            }
        }

    
        else if calculatorButton.title != "=" {
            self.completestringconvertelec += calculatorButton.title
            self.handlenumberselectionconvertelec(label: calculatorButton.title)
               }
    }
    
    func handlenumberselectionconvertelec(label: String) {
        if self.displayconvertelec.count == 0 || self.displayconvertelec.count < 9 {
                print ("reached 22")
                self.displayconvertelec = displayconvertelec == "0" ? label : displayconvertelec + label
            self.displayconvertelec = self.formatNumber(value: self.displayconvertelec)
             self.getFontSizeConvertelec()
        }
    }
    func getFontSizeConvertelec() {
        switch self.displayconvertelec.count {
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
    
    func cancelconvertelec() {
        self.displayconvertelec = "0"
        self.completestringconvertelec = ""
    }
    
    func resetconvertelec() {
        self.cancelconvertelec()
    }
    
    
    func handlekeypressener(_ calculatorButton: CalculatorButton) {
        print("Reached convert")
        if calculatorButton.title == "AC" {
            self.resetconvertener()
        } else if calculatorButton.title == "DEL"{
            if displayconvertener != "0" && completestringconvertener != "0" {
                displayconvertener.remove(at: displayconvertener.index(before: displayconvertener.endIndex))
                if displayconvertener.count == 0 {
                    displayconvertener = "0"
                    completestringconvertener = "0"
                }
                completestringconvertener.remove(at: completestringconvertener.index(before: completestringconvertener.endIndex))
            }
            
        } else if calculatorButton.title == "+/-" {
            if minus_plus_convertener == false {
                displayconvertener.insert(contentsOf: "-", at: displayconvertener.startIndex)
    
                completestringconvertener.insert(contentsOf: "-", at: completestringconvertener.startIndex)
                minus_plus_convertener = true
            }
            
            else if minus_plus_convertener == true {
                displayconvertener.remove(at: displayconvertener.startIndex)
                completestringconvertener.remove(at: completestringconvertener.startIndex)
                minus_plus_convertener = false
            }
            
        }
            else if calculatorButton.title == "=" {
            let expressionconvert = Expression(self.completestringconvertener)
//            print ("Hello ", completestringconvert)
            do {
                let resultconvert = try expressionconvert.evaluate()
                self.displayconvertener = formatNumber(value: String(resultconvert))
//                print ("hi", self.displayconvert)
                
            }
            catch {
                print(error)
            }
        }

    
        else if calculatorButton.title != "=" {
            self.completestringconvertener += calculatorButton.title
            self.handlenumberselectionconvertener(label: calculatorButton.title)
               }
    }
    
    func handlenumberselectionconvertener(label: String) {
        if self.displayconvertener.count == 0 || self.displayconvertener.count < 9 {
                print ("reached 22")
                self.displayconvertener = displayconvertener == "0" ? label : displayconvertener + label
            self.displayconvertener = self.formatNumber(value: self.displayconvertener)
             self.getFontSizeConvertener()
        }
    }
    func getFontSizeConvertener() {
        switch self.displayconvertener.count {
        case 7:
            self.fontsizeener = 80
        case 8:
            self.fontsizeener = 70
        case 9:
            self.fontsizeener = 65
        default:
            break
        }
    }
    
    func cancelconvertener() {
        self.displayconvertener = "0"
        self.completestringconvertener = ""
    }
    
    func resetconvertener() {
        self.cancelconvertener()
    }
    
    
    func handlekeypressfreq(_ calculatorButton: CalculatorButton) {
        print("Reached convert")
        if calculatorButton.title == "AC" {
            self.resetconvertfreq()
        } else if calculatorButton.title == "DEL"{
            if displayconvertfreq != "0" && completestringconvertfreq != "0" {
                displayconvertfreq.remove(at: displayconvertfreq.index(before: displayconvertfreq.endIndex))
                if displayconvertfreq.count == 0 {
                    displayconvertfreq = "0"
                    completestringconvertfreq = "0"
                }
                completestringconvertfreq.remove(at: completestringconvertfreq.index(before: completestringconvertfreq.endIndex))
            }
            
        } else if calculatorButton.title == "+/-" {
            if minus_plus_convertfreq == false {
                displayconvertfreq.insert(contentsOf: "-", at: displayconvertfreq.startIndex)
    
                completestringconvertfreq.insert(contentsOf: "-", at: completestringconvertfreq.startIndex)
                minus_plus_convertfreq = true
            }
            
            else if minus_plus_convertfreq == true {
                displayconvertfreq.remove(at: displayconvertfreq.startIndex)
                completestringconvertfreq.remove(at: completestringconvertfreq.startIndex)
                minus_plus_convertfreq = false
            }
            
        }
            else if calculatorButton.title == "=" {
            let expressionconvert = Expression(self.completestringconvertfreq)
//            print ("Hello ", completestringconvert)
            do {
                let resultconvert = try expressionconvert.evaluate()
                self.displayconvertfreq = formatNumber(value: String(resultconvert))
//                print ("hi", self.displayconvert)
                
            }
            catch {
                print(error)
            }
        }

    
        else if calculatorButton.title != "=" {
            self.completestringconvertfreq += calculatorButton.title
            self.handlenumberselectionconvertfreq(label: calculatorButton.title)
               }
    }
    
    func handlenumberselectionconvertfreq(label: String) {
        if self.displayconvertfreq.count == 0 || self.displayconvertfreq.count < 9 {
                print ("reached 22")
                self.displayconvertfreq = displayconvertfreq == "0" ? label : displayconvertfreq + label
            self.displayconvertfreq = self.formatNumber(value: self.displayconvertfreq)
             self.getFontSizeConvertfreq()
        }
    }
    func getFontSizeConvertfreq() {
        switch self.displayconvertfreq.count {
        case 7:
            self.fontsizefreq = 80
        case 8:
            self.fontsizefreq = 70
        case 9:
            self.fontsizefreq = 65
        default:
            break
        }
    }
    
    func cancelconvertfreq() {
        self.displayconvertfreq = "0"
        self.completestringconvertfreq = ""
    }
    
    func resetconvertfreq() {
        self.cancelconvertfreq()
    }
    
    
    func handlekeypressfuel(_ calculatorButton: CalculatorButton) {
        print("Reached convert")
        if calculatorButton.title == "AC" {
            self.resetconvertfuel()
        } else if calculatorButton.title == "DEL"{
            if displayconvertfuel != "0" && completestringconvertfuel != "0" {
                displayconvertfuel.remove(at: displayconvertfuel.index(before: displayconvertfuel.endIndex))
                if displayconvertfuel.count == 0 {
                    displayconvertfuel = "0"
                    completestringconvertfuel = "0"
                }
                completestringconvertfuel.remove(at: completestringconvertfuel.index(before: completestringconvertfuel.endIndex))
            }
            
        } else if calculatorButton.title == "+/-" {
            if minus_plus_convertfuel == false {
                displayconvertfuel.insert(contentsOf: "-", at: displayconvertfuel.startIndex)
    
                completestringconvertfuel.insert(contentsOf: "-", at: completestringconvertfuel.startIndex)
                minus_plus_convertfuel = true
            }
            
            else if minus_plus_convertfuel == true {
                displayconvertfuel.remove(at: displayconvertfuel.startIndex)
                completestringconvertfuel.remove(at: completestringconvertfuel.startIndex)
                minus_plus_convertfuel = false
            }
            
        }
            else if calculatorButton.title == "=" {
            let expressionconvert = Expression(self.completestringconvertfuel)
            print ("Hello ", completestringconvert)
            do {
                let resultconvert = try expressionconvert.evaluate()
                self.displayconvertfuel = formatNumber(value: String(resultconvert))
                print ("hi", self.displayconvert)
                
            }
            catch {
                print(error)
            }
        }

    
        else if calculatorButton.title != "=" {
            self.completestringconvertfuel += calculatorButton.title
            self.handlenumberselectionconvertfuel(label: calculatorButton.title)
               }
    }
    
    func handlenumberselectionconvertfuel(label: String) {
        if self.displayconvertfuel.count == 0 || self.displayconvertfuel.count < 9 {
                print ("reached 22")
                self.displayconvertfuel = displayconvertfuel == "0" ? label : displayconvertfuel + label
            self.displayconvertfuel = self.formatNumber(value: self.displayconvertfuel)
             self.getFontSizeConvertfuel()
        }
    }
    func getFontSizeConvertfuel() {
        switch self.displayconvertfuel.count {
        case 7:
            self.fontsizefuel = 80
        case 8:
            self.fontsizefuel = 70
        case 9:
            self.fontsizefuel = 65
        default:
            break
        }
    }
    
    func cancelconvertfuel() {
        self.displayconvertfuel = "0"
        self.completestringconvertfuel = ""
    }
    
    func resetconvertfuel() {
        self.cancelconvertfuel()
    }
    
    
    func handlekeypressillu(_ calculatorButton: CalculatorButton) {
        print("Reached convert")
        if calculatorButton.title == "AC" {
            self.resetconvertillu()
        } else if calculatorButton.title == "DEL"{
            if displayconvertillu != "0" && completestringconvertillu != "0" {
                displayconvertillu.remove(at: displayconvertillu.index(before: displayconvertillu.endIndex))
                if displayconvertillu.count == 0 {
                    displayconvertillu = "0"
                    completestringconvertillu = "0"
                }
                completestringconvertillu.remove(at: completestringconvertillu.index(before: completestringconvertillu.endIndex))
            }
            
        } else if calculatorButton.title == "+/-" {
            if minus_plus_convertillu == false {
                displayconvertillu.insert(contentsOf: "-", at: displayconvertillu.startIndex)
    
                completestringconvertillu.insert(contentsOf: "-", at: completestringconvertillu.startIndex)
                minus_plus_convertillu = true
            }
            
            else if minus_plus_convertillu == true {
                displayconvertillu.remove(at: displayconvertillu.startIndex)
                completestringconvertillu.remove(at: completestringconvertillu.startIndex)
                minus_plus_convertillu = false
            }
            
        }
            else if calculatorButton.title == "=" {
            let expressionconvert = Expression(self.completestringconvertillu)
            print ("Hello ", completestringconvert)
            do {
                let resultconvert = try expressionconvert.evaluate()
                self.displayconvertillu = formatNumber(value: String(resultconvert))
                print ("hi", self.displayconvert)
                
            }
            catch {
                print(error)
            }
        }

    
        else if calculatorButton.title != "=" {
            self.completestringconvertillu += calculatorButton.title
            self.handlenumberselectionconvertillu(label: calculatorButton.title)
               }
    }
    
    func handlenumberselectionconvertillu(label: String) {
        if self.displayconvertillu.count == 0 || self.displayconvertillu.count < 9 {
                print ("reached 22")
                self.displayconvertillu = displayconvertillu == "0" ? label : displayconvertillu + label
            self.displayconvertillu = self.formatNumber(value: self.displayconvertillu)
             self.getFontSizeConvertillu()
        }
    }
    func getFontSizeConvertillu() {
        switch self.displayconvertillu.count {
        case 7:
            self.fontsizeillu = 80
        case 8:
            self.fontsizeillu = 70
        case 9:
            self.fontsizeillu = 65
        default:
            break
        }
    }
    
    func cancelconvertillu() {
        self.displayconvertillu = "0"
        self.completestringconvertillu = ""
    }
    
    func resetconvertillu() {
        self.cancelconvertillu()
    }
    
    
    func handlekeypressleng(_ calculatorButton: CalculatorButton) {
        print("Reached convert")
        if calculatorButton.title == "AC" {
            self.resetconvertleng()
        } else if calculatorButton.title == "DEL"{
            if displayconvertleng != "0" && completestringconvertleng != "0" {
                displayconvertleng.remove(at: displayconvertleng.index(before: displayconvertleng.endIndex))
                if displayconvertleng.count == 0 {
                    displayconvertleng = "0"
                    completestringconvertleng = "0"
                }
                completestringconvertleng.remove(at: completestringconvertleng.index(before: completestringconvertleng.endIndex))
            }
            
        } else if calculatorButton.title == "+/-" {
            if minus_plus_convertleng == false {
                displayconvertleng.insert(contentsOf: "-", at: displayconvertleng.startIndex)
    
                completestringconvertleng.insert(contentsOf: "-", at: completestringconvertleng.startIndex)
                minus_plus_convertleng = true
            }
            
            else if minus_plus_convertleng == true {
                displayconvertleng.remove(at: displayconvertleng.startIndex)
                completestringconvertleng.remove(at: completestringconvertleng.startIndex)
                minus_plus_convertleng = false
            }
            
        }
            else if calculatorButton.title == "=" {
            let expressionconvert = Expression(self.completestringconvertleng)
            print ("Hello ", completestringconvert)
            do {
                let resultconvert = try expressionconvert.evaluate()
                self.displayconvertleng = formatNumber(value: String(resultconvert))
                print ("hi", self.displayconvert)
                
            }
            catch {
                print(error)
            }
        }

    
        else if calculatorButton.title != "=" {
            self.completestringconvertleng += calculatorButton.title
            self.handlenumberselectionconvertleng(label: calculatorButton.title)
               }
    }
    
    func handlenumberselectionconvertleng(label: String) {
        if self.displayconvertleng.count == 0 || self.displayconvertleng.count < 9 {
                print ("reached 22")
                self.displayconvertleng = displayconvertleng == "0" ? label : displayconvertleng + label
            self.displayconvertleng = self.formatNumber(value: self.displayconvertleng)
             self.getFontSizeConvertleng()
        }
    }
    func getFontSizeConvertleng() {
        switch self.displayconvertleng.count {
        case 7:
            self.fontsizeleng = 80
        case 8:
            self.fontsizeleng = 70
        case 9:
            self.fontsizeleng = 65
        default:
            break
        }
    }
    
    func cancelconvertleng() {
        self.displayconvertleng = "0"
        self.completestringconvertleng = ""
    }
    
    func resetconvertleng() {
        self.cancelconvertleng()
    }
    
    
    func handlekeypressmetr(_ calculatorButton: CalculatorButton) {
        print("Reached convert")
        if calculatorButton.title == "AC" {
            self.resetconvertmetr()
        } else if calculatorButton.title == "DEL"{
            if displayconvertmetr != "0" && completestringconvertmetr != "0" {
                displayconvertmetr.remove(at: displayconvertmetr.index(before: displayconvertmetr.endIndex))
                if displayconvertmetr.count == 0 {
                    displayconvertmetr = "0"
                    completestringconvertmetr = "0"
                }
                completestringconvertmetr.remove(at: completestringconvertmetr.index(before: completestringconvertmetr.endIndex))
            }
            
        } else if calculatorButton.title == "+/-" {
            if minus_plus_convertmetr == false {
                displayconvertmetr.insert(contentsOf: "-", at: displayconvertmetr.startIndex)
    
                completestringconvertmetr.insert(contentsOf: "-", at: completestringconvertmetr.startIndex)
                minus_plus_convertmetr = true
            }
            
            else if minus_plus_convertmetr == true {
                displayconvertmetr.remove(at: displayconvertmetr.startIndex)
                completestringconvertmetr.remove(at: completestringconvertmetr.startIndex)
                minus_plus_convertmetr = false
            }
            
        }
            else if calculatorButton.title == "=" {
            let expressionconvert = Expression(self.completestringconvertmetr)
            print ("Hello ", completestringconvert)
            do {
                let resultconvert = try expressionconvert.evaluate()
                self.displayconvertmetr = formatNumber(value: String(resultconvert))
                print ("hi", self.displayconvert)
                
            }
            catch {
                print(error)
            }
        }

    
        else if calculatorButton.title != "=" {
            self.completestringconvertmetr += calculatorButton.title
            self.handlenumberselectionconvertmetr(label: calculatorButton.title)
               }
    }
    
    func handlenumberselectionconvertmetr(label: String) {
        if self.displayconvertmetr.count == 0 || self.displayconvertmetr.count < 9 {
                print ("reached 22")
                self.displayconvertmetr = displayconvertmetr == "0" ? label : displayconvertmetr + label
            self.displayconvertmetr = self.formatNumber(value: self.displayconvertmetr)
             self.getFontSizeConvertmetr()
        }
    }
    func getFontSizeConvertmetr() {
        switch self.displayconvertmetr.count {
        case 7:
            self.fontsizemetr = 80
        case 8:
            self.fontsizemetr = 70
        case 9:
            self.fontsizemetr = 65
        default:
            break
        }
    }
    
    
    func cancelconvertmetr() {
        self.displayconvertmetr = "0"
        self.completestringconvertmetr = ""
    }
    
    func resetconvertmetr() {
        self.cancelconvertmetr()
    }
    
    func handlekeypressnetw(_ calculatorButton: CalculatorButton) {
        print("Reached convert")
        if calculatorButton.title == "AC" {
            self.resetconvertnetw()
        } else if calculatorButton.title == "DEL"{
            if displayconvertnetw != "0" && completestringconvertnetw != "0" {
                displayconvertnetw.remove(at: displayconvertnetw.index(before: displayconvertnetw.endIndex))
                if displayconvertnetw.count == 0 {
                    displayconvertnetw = "0"
                    completestringconvertnetw = "0"
                }
                completestringconvertnetw.remove(at: completestringconvertnetw.index(before: completestringconvertnetw.endIndex))
            }
            
        } else if calculatorButton.title == "+/-" {
            if minus_plus_convertnetw == false {
                displayconvertnetw.insert(contentsOf: "-", at: displayconvertnetw.startIndex)
    
                completestringconvertnetw.insert(contentsOf: "-", at: completestringconvertnetw.startIndex)
                minus_plus_convertnetw = true
            }
            
            else if minus_plus_convertnetw == true {
                displayconvertnetw.remove(at: displayconvertnetw.startIndex)
                completestringconvertnetw.remove(at: completestringconvertnetw.startIndex)
                minus_plus_convertnetw = false
            }
            
        }
            else if calculatorButton.title == "=" {
            let expressionconvert = Expression(self.completestringconvertnetw)
            print ("Hello ", completestringconvert)
            do {
                let resultconvert = try expressionconvert.evaluate()
                self.displayconvertnetw = formatNumber(value: String(resultconvert))
                print ("hi", self.displayconvert)
                
            }
            catch {
                print(error)
            }
        }

    
        else if calculatorButton.title != "=" {
            self.completestringconvertnetw += calculatorButton.title
            self.handlenumberselectionconvertnetw(label: calculatorButton.title)
               }
    }
    
    func handlenumberselectionconvertnetw(label: String) {
        if self.displayconvertnetw.count == 0 || self.displayconvertnetw.count < 9 {
                print ("reached 22")
                self.displayconvertnetw = displayconvertnetw == "0" ? label : displayconvertnetw + label
            self.displayconvertnetw = self.formatNumber(value: self.displayconvertnetw)
             self.getFontSizeConvertnetw()
        }
    }
    func getFontSizeConvertnetw() {
        switch self.displayconvertnetw.count {
        case 7:
            self.fontsizenetw = 80
        case 8:
            self.fontsizenetw = 70
        case 9:
            self.fontsizenetw = 65
        default:
            break
        }
    }
    
    func cancelconvertnetw() {
        self.displayconvertnetw = "0"
        self.completestringconvertnetw = ""
    }
    
    func resetconvertnetw() {
        self.cancelconvertnetw()
    }
    
    
    func handlekeypressplain(_ calculatorButton: CalculatorButton) {
        print("Reached convert")
        if calculatorButton.title == "AC" {
            self.resetconvertplain()
        } else if calculatorButton.title == "DEL"{
            if displayconvertplain != "0" && completestringconvertplain != "0" {
                displayconvertplain.remove(at: displayconvertplain.index(before: displayconvertplain.endIndex))
                if displayconvertplain.count == 0 {
                    displayconvertplain = "0"
                    completestringconvertplain = "0"
                }
                completestringconvertplain.remove(at: completestringconvertplain.index(before: completestringconvertplain.endIndex))
            }
            
        } else if calculatorButton.title == "+/-" {
            if minus_plus_convertplain == false {
                displayconvertplain.insert(contentsOf: "-", at: displayconvertplain.startIndex)
    
                completestringconvertplain.insert(contentsOf: "-", at: completestringconvertplain.startIndex)
                minus_plus_convertplain = true
            }
            
            else if minus_plus_convertplain == true {
                displayconvertplain.remove(at: displayconvertplain.startIndex)
                completestringconvertplain.remove(at: completestringconvertplain.startIndex)
                minus_plus_convertplain = false
            }
            
        }
            else if calculatorButton.title == "=" {
            let expressionconvert = Expression(self.completestringconvertplain)
            print ("Hello ", completestringconvert)
            do {
                let resultconvert = try expressionconvert.evaluate()
                self.displayconvertplain = formatNumber(value: String(resultconvert))
                print ("hi", self.displayconvert)
                
            }
            catch {
                print(error)
            }
        }

    
        else if calculatorButton.title != "=" {
            self.completestringconvertplain += calculatorButton.title
            self.handlenumberselectionconvertplain(label: calculatorButton.title)
               }
    }
    
    func handlenumberselectionconvertplain(label: String) {
        if self.displayconvertplain.count == 0 || self.displayconvertplain.count < 9 {
                print ("reached 22")
                self.displayconvertplain = displayconvertplain == "0" ? label : displayconvertplain + label
            self.displayconvertplain = self.formatNumber(value: self.displayconvertplain)
             self.getFontSizeConvertplain()
        }
    }
    func getFontSizeConvertplain() {
        switch self.displayconvertplain.count {
        case 7:
            self.fontsizeplain = 80
        case 8:
            self.fontsizeplain = 70
        case 9:
            self.fontsizeplain = 65
        default:
            break
        }
    }
    
    func cancelconvertplain() {
        self.displayconvertplain = "0"
        self.completestringconvertplain = ""
    }
    
    func resetconvertplain() {
        self.cancelconvertplain()
    }
    
    
    func handlekeypresspower(_ calculatorButton: CalculatorButton) {
        print("Reached convert")
        if calculatorButton.title == "AC" {
            self.resetconvertpower()
        } else if calculatorButton.title == "DEL"{
            if displayconvertpower != "0" && completestringconvertpower != "0" {
                displayconvertpower.remove(at: displayconvertpower.index(before: displayconvertpower.endIndex))
                if displayconvertpower.count == 0 {
                    displayconvertpower = "0"
                    completestringconvertpower = "0"
                }
                completestringconvertpower.remove(at: completestringconvertpower.index(before: completestringconvertpower.endIndex))
            }
            
        } else if calculatorButton.title == "+/-" {
            if minus_plus_convertpower == false {
                displayconvertpower.insert(contentsOf: "-", at: displayconvertpower.startIndex)
    
                completestringconvertpower.insert(contentsOf: "-", at: completestringconvertpower.startIndex)
                minus_plus_convertpower = true
            }
            
            else if minus_plus_convertpower == true {
                displayconvertpower.remove(at: displayconvertpower.startIndex)
                completestringconvertpower.remove(at: completestringconvertpower.startIndex)
                minus_plus_convertpower = false
            }
            
        }
            else if calculatorButton.title == "=" {
            let expressionconvert = Expression(self.completestringconvertpower)
            print ("Hello ", completestringconvert)
            do {
                let resultconvert = try expressionconvert.evaluate()
                self.displayconvertpower = formatNumber(value: String(resultconvert))
                print ("hi", self.displayconvert)
                
            }
            catch {
                print(error)
            }
        }

    
        else if calculatorButton.title != "=" {
            self.completestringconvertpower += calculatorButton.title
            self.handlenumberselectionconvertpower(label: calculatorButton.title)
               }
    }
    
    func handlenumberselectionconvertpower(label: String) {
        if self.displayconvertpower.count == 0 || self.displayconvertpower.count < 9 {
                print ("reached 22")
                self.displayconvertpower = displayconvertpower == "0" ? label : displayconvertpower + label
            self.displayconvertpower = self.formatNumber(value: self.displayconvertpower)
             self.getFontSizeConvertpower()
        }
    }
    func getFontSizeConvertpower() {
        switch self.displayconvertpower.count {
        case 7:
            self.fontsizepower = 80
        case 8:
            self.fontsizepower = 70
        case 9:
            self.fontsizepower = 65
        default:
            break
        }
    }
    
    func cancelconvertpower() {
        self.displayconvertpower = "0"
        self.completestringconvertpower = ""
    }
    
    func resetconvertpower() {
        self.cancelconvertpower()
    }
    
    
    func handlekeypresspress(_ calculatorButton: CalculatorButton) {
        print("Reached convert")
        if calculatorButton.title == "AC" {
            self.resetconvertpress()
        } else if calculatorButton.title == "DEL"{
            if displayconvertpress != "0" && completestringconvertpress != "0" {
                displayconvertpress.remove(at: displayconvertpress.index(before: displayconvertpress.endIndex))
                if displayconvertpress.count == 0 {
                    displayconvertpress = "0"
                    completestringconvertpress = "0"
                }
                completestringconvertpress.remove(at: completestringconvertpress.index(before: completestringconvertpress.endIndex))
            }
            
        } else if calculatorButton.title == "+/-" {
            if minus_plus_convertpress == false {
                displayconvertpress.insert(contentsOf: "-", at: displayconvertpress.startIndex)
    
                completestringconvertpress.insert(contentsOf: "-", at: completestringconvertpress.startIndex)
                minus_plus_convertpress = true
            }
            
            else if minus_plus_convertpress == true {
                displayconvertpress.remove(at: displayconvertpress.startIndex)
                completestringconvertpress.remove(at: completestringconvertpress.startIndex)
                minus_plus_convertpress = false
            }
            
        }
            else if calculatorButton.title == "=" {
            let expressionconvert = Expression(self.completestringconvertpress)
            print ("Hello ", completestringconvert)
            do {
                let resultconvert = try expressionconvert.evaluate()
                self.displayconvertpress = formatNumber(value: String(resultconvert))
                print ("hi", self.displayconvert)
                
            }
            catch {
                print(error)
            }
        }

    
        else if calculatorButton.title != "=" {
            self.completestringconvertpress += calculatorButton.title
            self.handlenumberselectionconvertpress(label: calculatorButton.title)
               }
    }
    
    func handlenumberselectionconvertpress(label: String) {
        if self.displayconvertpress.count == 0 || self.displayconvertpress.count < 9 {
                print ("reached 22")
                self.displayconvertpress = displayconvertpress == "0" ? label : displayconvertpress + label
            self.displayconvertpress = self.formatNumber(value: self.displayconvertpress)
             self.getFontSizeConvertpress()
        }
    }
    func getFontSizeConvertpress() {
        switch self.displayconvertpress.count {
        case 7:
            self.fontsizepress = 80
        case 8:
            self.fontsizepress = 70
        case 9:
            self.fontsizepress = 65
        default:
            break
        }
    }
    
    func cancelconvertpress() {
        self.displayconvertpress = "0"
        self.completestringconvertpress = ""
    }
    
    func resetconvertpress() {
        self.cancelconvertpress()
    }
    
    
    func handlekeypressradi(_ calculatorButton: CalculatorButton) {
        print("Reached convert")
        if calculatorButton.title == "AC" {
            self.resetconvertradi()
        } else if calculatorButton.title == "DEL"{
            if displayconvertradi != "0" && completestringconvertradi != "0" {
                displayconvertradi.remove(at: displayconvertradi.index(before: displayconvertradi.endIndex))
                if displayconvertradi.count == 0 {
                    displayconvertradi = "0"
                    completestringconvertradi = "0"
                }
                completestringconvertradi.remove(at: completestringconvertradi.index(before: completestringconvertradi.endIndex))
            }
            
        } else if calculatorButton.title == "+/-" {
            if minus_plus_convertradi == false {
                displayconvertradi.insert(contentsOf: "-", at: displayconvertradi.startIndex)
    
                completestringconvertradi.insert(contentsOf: "-", at: completestringconvertradi.startIndex)
                minus_plus_convertradi = true
            }
            
            else if minus_plus_convertradi == true {
                displayconvertradi.remove(at: displayconvertradi.startIndex)
                completestringconvertradi.remove(at: completestringconvertradi.startIndex)
                minus_plus_convertradi = false
            }
            
        }
            else if calculatorButton.title == "=" {
            let expressionconvert = Expression(self.completestringconvertradi)
            print ("Hello ", completestringconvert)
            do {
                let resultconvert = try expressionconvert.evaluate()
                self.displayconvertradi = formatNumber(value: String(resultconvert))
                print ("hi", self.displayconvert)
                
            }
            catch {
                print(error)
            }
        }

    
        else if calculatorButton.title != "=" {
            self.completestringconvertradi += calculatorButton.title
            self.handlenumberselectionconvertradi(label: calculatorButton.title)
               }
    }
    
    func handlenumberselectionconvertradi(label: String) {
        if self.displayconvertradi.count == 0 || self.displayconvertradi.count < 9 {
                print ("reached 22")
                self.displayconvertradi = displayconvertradi == "0" ? label : displayconvertradi + label
            self.displayconvertradi = self.formatNumber(value: self.displayconvertradi)
             self.getFontSizeConvertradi()
        }
    }
    func getFontSizeConvertradi() {
        switch self.displayconvertradi.count {
        case 7:
            self.fontsizeradi = 80
        case 8:
            self.fontsizeradi = 70
        case 9:
            self.fontsizeradi = 65
        default:
            break
        }
    }
    
    func cancelconvertradi() {
        self.displayconvertradi = "0"
        self.completestringconvertradi = ""
    }
    
    func resetconvertradi() {
        self.cancelconvertradi()
    }
    
    
    func handlekeypressradio(_ calculatorButton: CalculatorButton) {
        print("Reached convert")
        if calculatorButton.title == "AC" {
            self.resetconvertradio()
        } else if calculatorButton.title == "DEL"{
            if displayconvertradio != "0" && completestringconvertradio != "0" {
                displayconvertradio.remove(at: displayconvertradio.index(before: displayconvertradio.endIndex))
                if displayconvertradio.count == 0 {
                    displayconvertradio = "0"
                    completestringconvertradio = "0"
                }
                completestringconvertradio.remove(at: completestringconvertradio.index(before: completestringconvertradio.endIndex))
            }
            
        } else if calculatorButton.title == "+/-" {
            if minus_plus_convertradio == false {
                displayconvertradio.insert(contentsOf: "-", at: displayconvertradio.startIndex)
    
                completestringconvertradio.insert(contentsOf: "-", at: completestringconvertradio.startIndex)
                minus_plus_convertradio = true
            }
            
            else if minus_plus_convertradio == true {
                displayconvertradio.remove(at: displayconvertradio.startIndex)
                completestringconvertradio.remove(at: completestringconvertradio.startIndex)
                minus_plus_convertradio = false
            }
            
        }
            else if calculatorButton.title == "=" {
            let expressionconvert = Expression(self.completestringconvertradio)
            print ("Hello ", completestringconvert)
            do {
                let resultconvert = try expressionconvert.evaluate()
                self.displayconvertradio = formatNumber(value: String(resultconvert))
                print ("hi", self.displayconvert)
                
            }
            catch {
                print(error)
            }
        }

    
        else if calculatorButton.title != "=" {
            self.completestringconvertradio += calculatorButton.title
            self.handlenumberselectionconvertradio(label: calculatorButton.title)
               }
    }
    
    func handlenumberselectionconvertradio(label: String) {
        if self.displayconvertradio.count == 0 || self.displayconvertradio.count < 9 {
                print ("reached 22")
                self.displayconvertradio = displayconvertradio == "0" ? label : displayconvertradio + label
            self.displayconvertradio = self.formatNumber(value: self.displayconvertradio)
             self.getFontSizeConvertradio()
        }
    }
    func getFontSizeConvertradio() {
        switch self.displayconvertradio.count {
        case 7:
            self.fontsizeradio = 80
        case 8:
            self.fontsizeradio = 70
        case 9:
            self.fontsizeradio = 65
        default:
            break
        }
    }
    
    func cancelconvertradio() {
        self.displayconvertradio = "0"
        self.completestringconvertradio = ""
    }
    
    func resetconvertradio() {
        self.cancelconvertradio()
    }
    
    
    func handlekeypressspeed(_ calculatorButton: CalculatorButton) {
        print("Reached convert")
        if calculatorButton.title == "AC" {
            self.resetconvertspeed()
        } else if calculatorButton.title == "DEL"{
            if displayconvertspeed != "0" && completestringconvertspeed != "0" {
                displayconvertspeed.remove(at: displayconvertspeed.index(before: displayconvertspeed.endIndex))
                if displayconvertspeed.count == 0 {
                    displayconvertspeed = "0"
                    completestringconvertspeed = "0"
                }
                completestringconvertspeed.remove(at: completestringconvertspeed.index(before: completestringconvertspeed.endIndex))
            }
            
        } else if calculatorButton.title == "+/-" {
            if minus_plus_convertspeed == false {
                displayconvertspeed.insert(contentsOf: "-", at: displayconvertspeed.startIndex)
    
                completestringconvertspeed.insert(contentsOf: "-", at: completestringconvertspeed.startIndex)
                minus_plus_convertspeed = true
            }
            
            else if minus_plus_convertspeed == true {
                displayconvertspeed.remove(at: displayconvertspeed.startIndex)
                completestringconvertspeed.remove(at: completestringconvertspeed.startIndex)
                minus_plus_convertspeed = false
            }
            
        }
            else if calculatorButton.title == "=" {
            let expressionconvert = Expression(self.completestringconvertspeed)
            print ("Hello ", completestringconvert)
            do {
                let resultconvert = try expressionconvert.evaluate()
                self.displayconvertspeed = formatNumber(value: String(resultconvert))
                print ("hi", self.displayconvert)
                
            }
            catch {
                print(error)
            }
        }

    
        else if calculatorButton.title != "=" {
            self.completestringconvertspeed += calculatorButton.title
            self.handlenumberselectionconvertspeed(label: calculatorButton.title)
               }
    }
    
    func handlenumberselectionconvertspeed(label: String) {
        if self.displayconvertspeed.count == 0 || self.displayconvertspeed.count < 9 {
                print ("reached 22")
                self.displayconvertspeed = displayconvertspeed == "0" ? label : displayconvertspeed + label
            self.displayconvertspeed = self.formatNumber(value: self.displayconvertspeed)
             self.getFontSizeConvertspeed()
        }
    }
    func getFontSizeConvertspeed() {
        switch self.displayconvertspeed.count {
        case 7:
            self.fontsizespeed = 80
        case 8:
            self.fontsizespeed = 70
        case 9:
            self.fontsizespeed = 65
        default:
            break
        }
    }
    
    func cancelconvertspeed() {
        self.displayconvertspeed = "0"
        self.completestringconvertspeed = ""
    }
    
    func resetconvertspeed() {
        self.cancelconvertspeed()
    }
    
    
    func handlekeypresstemp(_ calculatorButton: CalculatorButton) {
        print("Reached convert")
        if calculatorButton.title == "AC" {
            self.resetconverttemp()
        } else if calculatorButton.title == "DEL"{
            if displayconverttemp != "0" && completestringconverttemp != "0" {
                displayconverttemp.remove(at: displayconverttemp.index(before: displayconverttemp.endIndex))
                if displayconverttemp.count == 0 {
                    displayconverttemp = "0"
                    completestringconverttemp = "0"
                }
                completestringconverttemp.remove(at: completestringconverttemp.index(before: completestringconverttemp.endIndex))
            }
            
        } else if calculatorButton.title == "+/-" {
            if minus_plus_converttemp == false {
                displayconverttemp.insert(contentsOf: "-", at: displayconverttemp.startIndex)
    
                completestringconverttemp.insert(contentsOf: "-", at: completestringconverttemp.startIndex)
                minus_plus_converttemp = true
            }
            
            else if minus_plus_converttemp == true {
                displayconverttemp.remove(at: displayconverttemp.startIndex)
                completestringconverttemp.remove(at: completestringconverttemp.startIndex)
                minus_plus_converttemp = false
            }
            
        }
            else if calculatorButton.title == "=" {
            let expressionconvert = Expression(self.completestringconverttemp)
            print ("Hello ", completestringconvert)
            do {
                let resultconvert = try expressionconvert.evaluate()
                self.displayconverttemp = formatNumber(value: String(resultconvert))
                print ("hi", self.displayconvert)
                
            }
            catch {
                print(error)
            }
        }

    
        else if calculatorButton.title != "=" {
            self.completestringconverttemp += calculatorButton.title
            self.handlenumberselectionconverttemp(label: calculatorButton.title)
               }
    }
    
    func handlenumberselectionconverttemp(label: String) {
        if self.displayconverttemp.count == 0 || self.displayconverttemp.count < 9 {
                print ("reached 22")
                self.displayconverttemp = displayconverttemp == "0" ? label : displayconverttemp + label
            self.displayconverttemp = self.formatNumber(value: self.displayconverttemp)
             self.getFontSizeConverttemp()
        }
    }
    func getFontSizeConverttemp() {
        switch self.displayconverttemp.count {
        case 7:
            self.fontsizetemp = 80
        case 8:
            self.fontsizetemp = 70
        case 9:
            self.fontsizetemp = 65
        default:
            break
        }
    }
    
    func cancelconverttemp() {
        self.displayconverttemp = "0"
        self.completestringconverttemp = ""
    }
    
    func resetconverttemp() {
        self.cancelconverttemp()
    }
    
    
    func handlekeypresstime(_ calculatorButton: CalculatorButton) {
        print("Reached convert")
        if calculatorButton.title == "AC" {
            self.resetconverttime()
        } else if calculatorButton.title == "DEL"{
            if displayconverttime != "0" && completestringconverttime != "0" {
                displayconverttime.remove(at: displayconverttime.index(before: displayconverttime.endIndex))
                if displayconverttime.count == 0 {
                    displayconverttime = "0"
                    completestringconverttime = "0"
                }
                completestringconverttime.remove(at: completestringconverttime.index(before: completestringconverttime.endIndex))
            }
            
        } else if calculatorButton.title == "+/-" {
            if minus_plus_converttime == false {
                displayconverttime.insert(contentsOf: "-", at: displayconverttime.startIndex)
    
                completestringconverttime.insert(contentsOf: "-", at: completestringconverttime.startIndex)
                minus_plus_converttime = true
            }
            
            else if minus_plus_converttime == true {
                displayconverttime.remove(at: displayconverttime.startIndex)
                completestringconverttime.remove(at: completestringconverttime.startIndex)
                minus_plus_converttime = false
            }
            
        }
            else if calculatorButton.title == "=" {
            let expressionconvert = Expression(self.completestringconverttime)
            print ("Hello ", completestringconvert)
            do {
                let resultconvert = try expressionconvert.evaluate()
                self.displayconverttime = formatNumber(value: String(resultconvert))
                print ("hi", self.displayconvert)
                
            }
            catch {
                print(error)
            }
        }

    
        else if calculatorButton.title != "=" {
            self.completestringconverttime += calculatorButton.title
            self.handlenumberselectionconverttime(label: calculatorButton.title)
               }
    }
    
    func handlenumberselectionconverttime(label: String) {
        if self.displayconverttime.count == 0 || self.displayconverttime.count < 9 {
                print ("reached 22")
                self.displayconverttime = displayconverttime == "0" ? label : displayconverttime + label
            self.displayconverttime = self.formatNumber(value: self.displayconverttime)
             self.getFontSizeConverttime()
        }
    }
    func getFontSizeConverttime() {
        switch self.displayconverttime.count {
        case 7:
            self.fontsizetime = 80
        case 8:
            self.fontsizetime = 70
        case 9:
            self.fontsizetime = 65
        default:
            break
        }
    }
    
    func cancelconverttime() {
        self.displayconverttime = "0"
        self.completestringconverttime = ""
    }
    
    func resetconverttime() {
        self.cancelconverttime()
    }
    
    
    func handlekeypressvolume(_ calculatorButton: CalculatorButton) {
        print("Reached convert")
        if calculatorButton.title == "AC" {
            self.resetconvertvolume()
        } else if calculatorButton.title == "DEL"{
            if displayconvertvolume != "0" && completestringconvertvolume != "0" {
                displayconvertvolume.remove(at: displayconvertvolume.index(before: displayconvertvolume.endIndex))
                if displayconvertvolume.count == 0 {
                    displayconvertvolume = "0"
                    completestringconvertvolume = "0"
                }
                completestringconvertvolume.remove(at: completestringconvertvolume.index(before: completestringconvertvolume.endIndex))
            }
            
        } else if calculatorButton.title == "+/-" {
            if minus_plus_convertvolume == false {
                displayconvertvolume.insert(contentsOf: "-", at: displayconvertvolume.startIndex)
    
                completestringconvertvolume.insert(contentsOf: "-", at: completestringconvertvolume.startIndex)
                minus_plus_convertvolume = true
            }
            
            else if minus_plus_convertvolume == true {
                displayconvertvolume.remove(at: displayconvertvolume.startIndex)
                completestringconvertvolume.remove(at: completestringconvertvolume.startIndex)
                minus_plus_convertvolume = false
            }
            
        }
            else if calculatorButton.title == "=" {
            let expressionconvert = Expression(self.completestringconvertvolume)
            print ("Hello ", completestringconvert)
            do {
                let resultconvert = try expressionconvert.evaluate()
                self.displayconvertvolume = formatNumber(value: String(resultconvert))
                print ("hi", self.displayconvert)
                
            }
            catch {
                print(error)
            }
        }

    
        else if calculatorButton.title != "=" {
            self.completestringconvertvolume += calculatorButton.title
            self.handlenumberselectionconvertvolume(label: calculatorButton.title)
               }
    }
    
    func handlenumberselectionconvertvolume(label: String) {
        if self.displayconvertvolume.count == 0 || self.displayconvertvolume.count < 9 {
                print ("reached 22")
                self.displayconvertvolume = displayconvertvolume == "0" ? label : displayconvertvolume + label
            self.displayconvertvolume = self.formatNumber(value: self.displayconvertvolume)
             self.getFontSizeConvertvolume()
        }
    }
    func getFontSizeConvertvolume() {
        switch self.displayconvertvolume.count {
        case 7:
            self.fontsizevolume = 80
        case 8:
            self.fontsizevolume = 70
        case 9:
            self.fontsizevolume = 65
        default:
            break
        }
    }
    
    func cancelconvertvolume() {
        self.displayconvertvolume = "0"
        self.completestringconvertvolume = ""
    }
    
    func resetconvertvolume() {
        self.cancelconvertvolume()
    }
    
    
    func handlekeypressweight(_ calculatorButton: CalculatorButton) {
        print("Reached convert")
        if calculatorButton.title == "AC" {
            self.resetconvertweight()
        } else if calculatorButton.title == "DEL"{
            if displayconvertweight != "0" && completestringconvertweight != "0" {
                displayconvertweight.remove(at: displayconvertweight.index(before: displayconvertweight.endIndex))
                if displayconvertweight.count == 0 {
                    displayconvertweight = "0"
                    completestringconvertweight = "0"
                }
                completestringconvertweight.remove(at: completestringconvertweight.index(before: completestringconvertweight.endIndex))
            }
            
        } else if calculatorButton.title == "+/-" {
            if minus_plus_convertweight == false {
                displayconvertweight.insert(contentsOf: "-", at: displayconvertweight.startIndex)
    
                completestringconvertweight.insert(contentsOf: "-", at: completestringconvertweight.startIndex)
                minus_plus_convertweight = true
            }
            
            else if minus_plus_convertweight == true {
                displayconvertweight.remove(at: displayconvertweight.startIndex)
                completestringconvertweight.remove(at: completestringconvertweight.startIndex)
                minus_plus_convertweight = false
            }
            
        }
            else if calculatorButton.title == "=" {
            let expressionconvert = Expression(self.completestringconvertweight)
            print ("Hello ", completestringconvert)
            do {
                let resultconvert = try expressionconvert.evaluate()
                self.displayconvertweight = formatNumber(value: String(resultconvert))
                print ("hi", self.displayconvert)
                
            }
            catch {
                print(error)
            }
        }

    
        else if calculatorButton.title != "=" {
            self.completestringconvertweight += calculatorButton.title
            self.handlenumberselectionconvertweight(label: calculatorButton.title)
               }
    }
    
    func handlenumberselectionconvertweight(label: String) {
        if self.displayconvertweight.count == 0 || self.displayconvertweight.count < 9 {
                print ("reached 22")
                self.displayconvertweight = displayconvertweight == "0" ? label : displayconvertweight + label
            self.displayconvertweight = self.formatNumber(value: self.displayconvertweight)
             self.getFontSizeConvertweight()
        }
    }
    func getFontSizeConvertweight() {
        switch self.displayconvertweight.count {
        case 7:
            self.fontsizeweight = 80
        case 8:
            self.fontsizeweight = 70
        case 9:
            self.fontsizeweight = 65
        default:
            break
        }
    }
    
    func cancelconvertweight() {
        self.displayconvertweight = "0"
        self.completestringconvertweight = ""
    }
    
    func resetconvertweight() {
        self.cancelconvertweight()
    }
    
    
    func handlekeypressbase(_ calculatorButton: CalculatorButton) {
        print("Reached convert")
        if calculatorButton.title == "AC" {
            self.resetconvertbase()
        } else if calculatorButton.title == "DEL"{
            if displayconvertbase != "0" && completestringconvertbase != "0" {
                displayconvertbase.remove(at: displayconvertbase.index(before: displayconvertbase.endIndex))
                if displayconvertbase.count == 0 {
                    displayconvertbase = "0"
                    completestringconvertbase = "0"
                }
                completestringconvertbase.remove(at: completestringconvertbase.index(before: completestringconvertbase.endIndex))
            }
            
        } else if calculatorButton.title == "+/-" {
            if minus_plus_convertbase == false {
                displayconvertbase.insert(contentsOf: "-", at: displayconvertbase.startIndex)
    
                completestringconvertbase.insert(contentsOf: "-", at: completestringconvertbase.startIndex)
                minus_plus_convertbase = true
            }
            
            else if minus_plus_convertbase == true {
                displayconvertbase.remove(at: displayconvertbase.startIndex)
                completestringconvertbase.remove(at: completestringconvertbase.startIndex)
                minus_plus_convertbase = false
            }
            
        }
            else if calculatorButton.title == "=" {
            let expressionconvert = Expression(self.completestringconvertbase)
            print ("Hello ", completestringconvert)
            do {
                let resultconvert = try expressionconvert.evaluate()
                self.displayconvertbase = formatNumber(value: String(resultconvert))
                print ("hi", self.displayconvert)
                
            }
            catch {
                print(error)
            }
        }

    
        else if calculatorButton.title != "=" {
            self.completestringconvertbase += calculatorButton.title
            self.handlenumberselectionconvertbase(label: calculatorButton.title)
               }
    }
    
    func handlenumberselectionconvertbase(label: String) {
        if self.displayconvertbase.count == 0 || self.displayconvertbase.count < 9 {
                print ("reached 22")
                self.displayconvertbase = displayconvertbase == "0" ? label : displayconvertbase + label
            self.displayconvertbase = self.formatNumber(value: self.displayconvertbase)
             self.getFontSizeConvertbase()
        }
    }
    func getFontSizeConvertbase() {
        switch self.displayconvertbase.count {
        case 7:
            self.fontsizebase = 80
        case 8:
            self.fontsizebase = 70
        case 9:
            self.fontsizebase = 65
        default:
            break
        }
    }
    
    func cancelconvertbase() {
        self.displayconvertbase = "0"
        self.completestringconvertbase = ""
    }
    
    func resetconvertbase() {
        self.cancelconvertbase()
    }
    
    func handlekeypresscurrency(_ calculatorButton: CalculatorButton) {
        print("Reached convert")
        if calculatorButton.title == "AC" {
            self.resetconvertcurrency()
        } else if calculatorButton.title == "DEL"{
            if displayconvertcurrency != "0" && completestringconvertcurrency != "0" {
                displayconvertcurrency.remove(at: displayconvertcurrency.index(before: displayconvertcurrency.endIndex))
                if displayconvertcurrency.count == 0 {
                    displayconvertcurrency = "0"
                    completestringconvertcurrency = "0"
                }
                completestringconvertcurrency.remove(at: completestringconvertcurrency.index(before: completestringconvertcurrency.endIndex))
            }
            
        } else if calculatorButton.title == "+/-" {
            if minus_plus_convertcurrency == false {
                displayconvertcurrency.insert(contentsOf: "-", at: displayconvertcurrency.startIndex)
    
                completestringconvertcurrency.insert(contentsOf: "-", at: completestringconvertcurrency.startIndex)
                minus_plus_convertcurrency = true
            }
            
            else if minus_plus_convertcurrency == true {
                displayconvertcurrency.remove(at: displayconvertcurrency.startIndex)
                completestringconvertcurrency.remove(at: completestringconvertcurrency.startIndex)
                minus_plus_convertcurrency = false
            }
            
        }
            else if calculatorButton.title == "=" {
            let expressionconvert = Expression(self.completestringconvertcurrency)
            print ("Hello ", completestringconvert)
            do {
                let resultconvert = try expressionconvert.evaluate()
                self.displayconvertcurrency = formatNumber(value: String(resultconvert))
                print ("hi", self.displayconvert)
                
            }
            catch {
                print(error)
            }
        }

    
        else if calculatorButton.title != "=" {
           
            self.completestringconvertcurrency += calculatorButton.title
            self.handlenumberselectionconvertcurrency(label: calculatorButton.title)
               }
    }
    
    func handlenumberselectionconvertcurrency(label: String) {
        if self.displayconvertcurrency.count == 0 || self.displayconvertcurrency.count < 9 {
              
                self.displayconvertcurrency = displayconvertcurrency == "0" ? label : displayconvertcurrency + label
            self.displayconvertcurrency = self.formatNumber(value: self.displayconvertcurrency)
             self.getFontSizeConvertcurrency()
        }
    }
    func getFontSizeConvertcurrency() {
        switch self.displayconvertcurrency.count {
        case 7:
            self.fontsizecurrency = 80
        case 8:
            self.fontsizecurrency = 70
        case 9:
            self.fontsizecurrency = 65
        default:
            break
        }
    }
    
    func cancelconvertcurrency() {
        self.displayconvertcurrency = "0"
        self.completestringconvertcurrency = ""
    }
    
    func resetconvertcurrency() {
        self.cancelconvertcurrency()
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
//            else if viewRouter.currentPage == "page_main_convert" {
//                MainConvertorView()
//            }
            else if viewRouter.currentPage == "Length" {
                Length()
            }  else if viewRouter.currentPage == "Speed" {
                Speed()
            } else if viewRouter.currentPage == "Currency" {
                CurrencyAPI()
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
            } else if viewRouter.currentPage == "Currency Convert" {
                CurrencyAPI()
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
