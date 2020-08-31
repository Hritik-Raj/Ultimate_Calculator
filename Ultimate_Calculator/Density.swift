//
//  Density.swift
//  Ultimate_Calculator
//
//  Created by Hritik Raj on 8/14/20.
//  Copyright © 2020 Hritik Raj. All rights reserved.
//

import SwiftUI
import Foundation

struct Density: View {
        @State var ShowUnit1 = false
        @State var ShowUnit2 = false
        @State var DisplayUnit1 = "Angle"
        @State var DisplayUnit2 = "Angle"
        @EnvironmentObject var viewRouter: ViewRouter
        @EnvironmentObject var env: GlobalEnvironment
    
    
    
    var densitydict : [String : String] = ["Ounce/Inch³, oz/in³Grams/Meter³, g/m³": "1,729,990 ", "Milligrams/Millimeter³, mg/m³Grams/Millimeter³, g/mm³": "0.001 ", "Grams/Meter³, g/m³Imperial Pound/Gallon, lb/UK gal": "0 ", "Milligrams/Meter³, mg/m³Pound/Inch³, lb/in³": "0 ", "Grams/Meter³, g/m³Milligrams/Meter³, mg/m³": "1,000 ", "Milligrams/Millimeter³, mg/m³Ounce/Gallon (US), oz/US gal": "133.529 ", "Imperial Pound/Gallon, lb/UK galOunce/Gallon (UK), oz/UK gal": "16 ", "Kilogram/Meter³, kg/m³Milligrams/Centimeter³, mg/cm³": "1 ", "Ounce/Foot³, oz/ft³Ounce/Gallon (UK), oz/UK gal": "0.161 ", "Ounce/Inch³, oz/in³Ounce/Gallon (US), oz/US gal": "231.004 ", "Ounce/Gallon (US), oz/US galGrams/Centimeter³, g/cm³": "0.007 ", "Ounce/Inch³, oz/in³Milligrams/Millimeter³, mg/m³": "1.73 ", "Kilogram/Liter, kg/LPound/Inch³, lb/in³": "0.036 ", "Ounce/Gallon (US), oz/US galOunce/Foot³, oz/ft³": "7.482 ", "Milligrams/Meter³, mg/m³Ounce/Gallon (US), oz/US gal": "0 ", "Ounce/Gallon (UK), oz/UK galPound/Foot³, lb/ft³": "0.389 ", "Milligrams/Liter, mg/lImperial Pound/Gallon, lb/UK gal": "0 ", "US Pound/Gallon, lb/US galMilligrams/Millimeter³, mg/m³": "0.12 ", "Milligrams/Liter, mg/lOunce/Gallon (US), oz/US gal": "0 ", "Milligrams/Liter, mg/lMilligrams/Centimeter³, mg/cm³": "0.001 ", "Milligrams/Millimeter³, mg/m³Milligrams/Centimeter³, mg/cm³": "1,000 ", "Ounce/Gallon (UK), oz/UK galGrams/Millimeter³, g/mm³": "0 ", "Ounce/Gallon (US), oz/US galOunce/Inch³, oz/in³": "0.004 ", "Milligrams/Centimeter³, mg/cm³US Pound/Gallon, lb/US gal": "0.008 ", "Ounce/Gallon (US), oz/US galOunce/Gallon (US), oz/US gal": "1 ", "Kilogram/Liter, kg/LKilogram/Liter, kg/L": "1 ", "Milligrams/Meter³, mg/m³Imperial Pound/Gallon, lb/UK gal": "0 ", "Gram/Liter, g/LOunce/Inch³, oz/in³": "0.001 ", "Ounce/Gallon (UK), oz/UK galImperial Pound/Gallon, lb/UK gal": "0.062 ", "US Pound/Gallon, lb/US galPound/Inch³, lb/in³": "0.004 ", "Milligrams/Liter, mg/lKilogram/Liter, kg/L": "0 ", "US Pound/Gallon, lb/US galGrams/Centimeter³, g/cm³": "0.12 ", "Grams/Millimeter³, g/mm³Grams/Meter³, g/m³": "1,000,000,000 ", "Grams/Meter³, g/m³Ounce/Gallon (UK), oz/UK gal": "0 ", "Grams/Millimeter³, g/mm³Grams/Centimeter³, g/cm³": "1,000 ", "Grams/Meter³, g/m³Kilogram/Meter³, kg/m³": "0.001 ", "Milligrams/Meter³, mg/m³Milligrams/Meter³, mg/m³": "1 ", "Pound/Foot³, lb/ft³Ounce/Gallon (UK), oz/UK gal": "2.569 ", "Milligrams/Millimeter³, mg/m³Grams/Meter³, g/m³": "1,000,000 ", "Kilogram/Liter, kg/LGrams/Centimeter³, g/cm³": "1 ", "Kilogram/Meter³, kg/m³Ounce/Gallon (US), oz/US gal": "0.134 ", "Kilogram/Meter³, kg/m³Grams/Centimeter³, g/cm³": "0.001 ", "Gram/Liter, g/LKilogram/Liter, kg/L": "0.001 ", "Ounce/Foot³, oz/ft³Kilogram/Liter, kg/L": "0.001 ", "Kilogram/Liter, kg/LOunce/Gallon (UK), oz/UK gal": "160.359 ", "Ounce/Foot³, oz/ft³Ounce/Gallon (US), oz/US gal": "0.134 ", "Ounce/Gallon (UK), oz/UK galOunce/Gallon (US), oz/US gal": "0.833 ", "Pound/Foot³, lb/ft³Grams/Centimeter³, g/cm³": "0.016 ", "Pound/Foot³, lb/ft³Grams/Meter³, g/m³": "16,018 ", "Grams/Meter³, g/m³Gram/Liter, g/L": "0.001 ", "Pound/Foot³, lb/ft³Pound/Foot³, lb/ft³": "1 ", "Milligrams/Liter, mg/lOunce/Foot³, oz/ft³": "0.001 ", "Grams/Centimeter³, g/cm³Milligrams/Meter³, mg/m³": "1,000,000,000 ", "Imperial Pound/Gallon, lb/UK galPound/Inch³, lb/in³": "0.004 ", "Ounce/Foot³, oz/ft³Milligrams/Millimeter³, mg/m³": "0.001 ", "Pound/Inch³, lb/in³Gram/Liter, g/L": "27,679.905 ", "Grams/Meter³, g/m³Ounce/Gallon (US), oz/US gal": "0 ", "Ounce/Inch³, oz/in³Imperial Pound/Gallon, lb/UK gal": "17.339 ", "Kilogram/Meter³, kg/m³Grams/Meter³, g/m³": "1,000 ", "US Pound/Gallon, lb/US galGrams/Millimeter³, g/mm³": "0 ", "Ounce/Inch³, oz/in³Milligrams/Liter, mg/l": "1,729,990 ", "Milligrams/Centimeter³, mg/cm³Kilogram/Liter, kg/L": "0.001 ", "Pound/Foot³, lb/ft³Ounce/Foot³, oz/ft³": "16.002 ", "Imperial Pound/Gallon, lb/UK galMilligrams/Meter³, mg/m³": "99,776,000 ", "Grams/Meter³, g/m³Pound/Inch³, lb/in³": "0 ", "Kilogram/Meter³, kg/m³Pound/Inch³, lb/in³": "0 ", "Pound/Inch³, lb/in³Kilogram/Liter, kg/L": "27.68 ", "Milligrams/Millimeter³, mg/m³Milligrams/Liter, mg/l": "1,000,000 ", "Pound/Foot³, lb/ft³Milligrams/Millimeter³, mg/m³": "0.016 ", "Grams/Millimeter³, g/mm³Imperial Pound/Gallon, lb/UK gal": "10,022.45 ", "Imperial Pound/Gallon, lb/UK galOunce/Inch³, oz/in³": "0.058 ", "Ounce/Inch³, oz/in³Ounce/Inch³, oz/in³": "1 ", "Imperial Pound/Gallon, lb/UK galMilligrams/Liter, mg/l": "99,776 ", "Ounce/Foot³, oz/ft³Imperial Pound/Gallon, lb/UK gal": "0.01 ", "Pound/Inch³, lb/in³US Pound/Gallon, lb/US gal": "231.001 ", "Milligrams/Millimeter³, mg/m³Milligrams/Millimeter³, mg/m³": "1 ", "Milligrams/Liter, mg/lMilligrams/Liter, mg/l": "1 ", "Ounce/Gallon (UK), oz/UK galKilogram/Meter³, kg/m³": "6.236 ", "Kilogram/Liter, kg/LUS Pound/Gallon, lb/US gal": "8.345 ", "Imperial Pound/Gallon, lb/UK galGrams/Meter³, g/m³": "99,776 ", "Ounce/Foot³, oz/ft³Milligrams/Liter, mg/l": "1,001 ", "Ounce/Foot³, oz/ft³Ounce/Foot³, oz/ft³": "1 ", "Ounce/Gallon (US), oz/US galKilogram/Meter³, kg/m³": "7.489 ", "US Pound/Gallon, lb/US galUS Pound/Gallon, lb/US gal": "1 ", "Ounce/Gallon (UK), oz/UK galMilligrams/Liter, mg/l": "6,236 ", "Kilogram/Liter, kg/LOunce/Inch³, oz/in³": "0.578 ", "Grams/Millimeter³, g/mm³Gram/Liter, g/L": "1,000,000 ", "Gram/Liter, g/LKilogram/Meter³, kg/m³": "1 ", "Grams/Centimeter³, g/cm³Grams/Centimeter³, g/cm³": "1 ", "Gram/Liter, g/LMilligrams/Liter, mg/l": "1,000 ", "Ounce/Gallon (US), oz/US galMilligrams/Centimeter³, mg/cm³": "7.489 ", "Milligrams/Meter³, mg/m³Gram/Liter, g/L": "0 ", "Ounce/Gallon (US), oz/US galPound/Foot³, lb/ft³": "0.468 ", "Grams/Centimeter³, g/cm³Ounce/Gallon (US), oz/US gal": "133.529 ", "Kilogram/Meter³, kg/m³Ounce/Gallon (UK), oz/UK gal": "0.16 ", "Grams/Centimeter³, g/cm³Milligrams/Millimeter³, mg/m³": "1 ", "Gram/Liter, g/LGram/Liter, g/L": "1 ", "Imperial Pound/Gallon, lb/UK galGram/Liter, g/L": "99.776 ", "Milligrams/Meter³, mg/m³Grams/Meter³, g/m³": "0.001 ", "Ounce/Foot³, oz/ft³Pound/Foot³, lb/ft³": "0.062 ", "Pound/Inch³, lb/in³Grams/Centimeter³, g/cm³": "27.68 ", "Milligrams/Meter³, mg/m³US Pound/Gallon, lb/US gal": "0 ", "US Pound/Gallon, lb/US galMilligrams/Liter, mg/l": "119,826 ", "Milligrams/Centimeter³, mg/cm³Ounce/Inch³, oz/in³": "0.001 ", "Milligrams/Liter, mg/lGram/Liter, g/L": "0.001 ", "Ounce/Inch³, oz/in³Pound/Foot³, lb/ft³": "108.003 ", "Ounce/Inch³, oz/in³Kilogram/Meter³, kg/m³": "1,729.99 ", "Kilogram/Meter³, kg/m³Imperial Pound/Gallon, lb/UK gal": "0.01 ", "Milligrams/Liter, mg/lGrams/Millimeter³, g/mm³": "0 ", "Pound/Inch³, lb/in³Kilogram/Meter³, kg/m³": "27,679.905 ", "Pound/Foot³, lb/ft³Imperial Pound/Gallon, lb/UK gal": "0.161 ", "Ounce/Inch³, oz/in³US Pound/Gallon, lb/US gal": "14.438 ", "Gram/Liter, g/LGrams/Centimeter³, g/cm³": "0.001 ", "Grams/Centimeter³, g/cm³Kilogram/Liter, kg/L": "1 ", "Pound/Foot³, lb/ft³Milligrams/Centimeter³, mg/cm³": "16.018 ", "Grams/Millimeter³, g/mm³Kilogram/Meter³, kg/m³": "1,000,000 ", "Kilogram/Meter³, kg/m³US Pound/Gallon, lb/US gal": "0.008 ", "Grams/Millimeter³, g/mm³Pound/Foot³, lb/ft³": "62,429.767 ", "Imperial Pound/Gallon, lb/UK galOunce/Foot³, oz/ft³": "99.676 ", "Pound/Inch³, lb/in³Milligrams/Liter, mg/l": "27,679,905 ", "US Pound/Gallon, lb/US galGram/Liter, g/L": "119.826 ", "Milligrams/Centimeter³, mg/cm³Milligrams/Liter, mg/l": "1,000 ", "Pound/Foot³, lb/ft³Milligrams/Meter³, mg/m³": "16,018,000 ", "Milligrams/Centimeter³, mg/cm³Imperial Pound/Gallon, lb/UK gal": "0.01 ", "Grams/Meter³, g/m³Kilogram/Liter, kg/L": "0 ", "Ounce/Gallon (US), oz/US galUS Pound/Gallon, lb/US gal": "0.062 ", "Pound/Foot³, lb/ft³Pound/Inch³, lb/in³": "0.001 ", "Ounce/Gallon (UK), oz/UK galUS Pound/Gallon, lb/US gal": "0.052 ", "Grams/Centimeter³, g/cm³Milligrams/Liter, mg/l": "1,000,000 ", "Milligrams/Liter, mg/lKilogram/Meter³, kg/m³": "0.001 ", "Kilogram/Meter³, kg/m³Ounce/Foot³, oz/ft³": "0.999 ", "Milligrams/Centimeter³, mg/cm³Ounce/Gallon (UK), oz/UK gal": "0.16 ", "Milligrams/Meter³, mg/m³Grams/Millimeter³, g/mm³": "0 ", "Pound/Inch³, lb/in³Ounce/Gallon (UK), oz/UK gal": "4,438.728 ", "Kilogram/Liter, kg/LKilogram/Meter³, kg/m³": "1,000 ", "Ounce/Inch³, oz/in³Grams/Millimeter³, g/mm³": "0.002 ", "Kilogram/Meter³, kg/m³Ounce/Inch³, oz/in³": "0.001 ", "Milligrams/Liter, mg/lPound/Inch³, lb/in³": "0 ", "Ounce/Inch³, oz/in³Milligrams/Centimeter³, mg/cm³": "1,729.99 ", "Pound/Inch³, lb/in³Grams/Meter³, g/m³": "27,679,905 ", "Milligrams/Millimeter³, mg/m³Milligrams/Meter³, mg/m³": "1,000,000,000 ", "US Pound/Gallon, lb/US galOunce/Inch³, oz/in³": "0.069 ", "Pound/Foot³, lb/ft³Kilogram/Liter, kg/L": "0.016 ", "Milligrams/Millimeter³, mg/m³Ounce/Foot³, oz/ft³": "999.001 ", "Ounce/Inch³, oz/in³Grams/Centimeter³, g/cm³": "1.73 ", "Ounce/Gallon (UK), oz/UK galGram/Liter, g/L": "6.236 ", "Kilogram/Liter, kg/LOunce/Foot³, oz/ft³": "999.001 ", "Gram/Liter, g/LGrams/Meter³, g/m³": "1,000 ", "Milligrams/Millimeter³, mg/m³Gram/Liter, g/L": "1,000 ", "Imperial Pound/Gallon, lb/UK galPound/Foot³, lb/ft³": "6.229 ", "Pound/Foot³, lb/ft³US Pound/Gallon, lb/US gal": "0.134 ", "Pound/Inch³, lb/in³Milligrams/Centimeter³, mg/cm³": "27,679.905 ", "Milligrams/Millimeter³, mg/m³Kilogram/Meter³, kg/m³": "1,000 ", "Milligrams/Liter, mg/lUS Pound/Gallon, lb/US gal": "0 ", "Grams/Millimeter³, g/mm³Milligrams/Meter³, mg/m³": "1,000,000,000,000 ", "Kilogram/Liter, kg/LOunce/Gallon (US), oz/US gal": "133.529 ", "Ounce/Gallon (US), oz/US galMilligrams/Meter³, mg/m³": "7,489,000 ", "Milligrams/Liter, mg/lOunce/Gallon (UK), oz/UK gal": "0 ", "Grams/Millimeter³, g/mm³Milligrams/Centimeter³, mg/cm³": "1,000,000 ", "Milligrams/Liter, mg/lPound/Foot³, lb/ft³": "0 ", "Kilogram/Liter, kg/LImperial Pound/Gallon, lb/UK gal": "10.022 ", "Kilogram/Liter, kg/LMilligrams/Centimeter³, mg/cm³": "1,000 ", "Kilogram/Meter³, kg/m³Milligrams/Millimeter³, mg/m³": "0.001 ", "Ounce/Foot³, oz/ft³US Pound/Gallon, lb/US gal": "0.008 ", "Ounce/Inch³, oz/in³Gram/Liter, g/L": "1,729.99 ", "Grams/Meter³, g/m³Milligrams/Centimeter³, mg/cm³": "0.001 ", "Grams/Millimeter³, g/mm³Milligrams/Millimeter³, mg/m³": "1,000 ", "Ounce/Inch³, oz/in³Milligrams/Meter³, mg/m³": "1,729,990,000 ", "Ounce/Gallon (US), oz/US galKilogram/Liter, kg/L": "0.007 ", "Grams/Meter³, g/m³Grams/Millimeter³, g/mm³": "0 ", "Milligrams/Meter³, mg/m³Milligrams/Millimeter³, mg/m³": "0 ", "US Pound/Gallon, lb/US galImperial Pound/Gallon, lb/UK gal": "1.201 ", "US Pound/Gallon, lb/US galOunce/Foot³, oz/ft³": "119.706 ", "Grams/Meter³, g/m³Grams/Centimeter³, g/cm³": "0 ", "Grams/Centimeter³, g/cm³Ounce/Inch³, oz/in³": "0.578 ", "Ounce/Gallon (US), oz/US galOunce/Gallon (UK), oz/UK gal": "1.201 ", "Grams/Meter³, g/m³US Pound/Gallon, lb/US gal": "0 ", "Milligrams/Millimeter³, mg/m³Ounce/Inch³, oz/in³": "0.578 ", "Kilogram/Liter, kg/LMilligrams/Millimeter³, mg/m³": "1 ", "Milligrams/Liter, mg/lGrams/Centimeter³, g/cm³": "0 ", "Ounce/Inch³, oz/in³Ounce/Gallon (UK), oz/UK gal": "277.42 ", "Grams/Centimeter³, g/cm³Kilogram/Meter³, kg/m³": "1,000 ", "Grams/Centimeter³, g/cm³Milligrams/Centimeter³, mg/cm³": "1,000 ", "Kilogram/Liter, kg/LMilligrams/Meter³, mg/m³": "1,000,000,000 ", "Grams/Meter³, g/m³Milligrams/Millimeter³, mg/m³": "0 ", "Milligrams/Millimeter³, mg/m³Imperial Pound/Gallon, lb/UK gal": "10.022 ", "Ounce/Foot³, oz/ft³Grams/Millimeter³, g/mm³": "0 ", "Pound/Foot³, lb/ft³Ounce/Inch³, oz/in³": "0.009 ", "Pound/Inch³, lb/in³Imperial Pound/Gallon, lb/UK gal": "277.42 ", "Kilogram/Liter, kg/LMilligrams/Liter, mg/l": "1,000,000 ", "Kilogram/Meter³, kg/m³Milligrams/Liter, mg/l": "1,000 ", "Ounce/Foot³, oz/ft³Kilogram/Meter³, kg/m³": "1.001 ", "Pound/Foot³, lb/ft³Ounce/Gallon (US), oz/US gal": "2.139 ", "Kilogram/Liter, kg/LGrams/Meter³, g/m³": "1,000,000 ", "Milligrams/Meter³, mg/m³Milligrams/Centimeter³, mg/cm³": "0 ", "Milligrams/Meter³, mg/m³Ounce/Foot³, oz/ft³": "0 ", "Ounce/Gallon (US), oz/US galGrams/Meter³, g/m³": "7,489 ", "Grams/Centimeter³, g/cm³US Pound/Gallon, lb/US gal": "8.345 ", "Milligrams/Centimeter³, mg/cm³Gram/Liter, g/L": "1 ", "Imperial Pound/Gallon, lb/UK galMilligrams/Millimeter³, mg/m³": "0.1 ", "Grams/Centimeter³, g/cm³Grams/Meter³, g/m³": "1,000,000 ", "Grams/Meter³, g/m³Pound/Foot³, lb/ft³": "0 ", "Milligrams/Centimeter³, mg/cm³Kilogram/Meter³, kg/m³": "1 ", "Ounce/Gallon (US), oz/US galImperial Pound/Gallon, lb/UK gal": "0.075 ", "Milligrams/Centimeter³, mg/cm³Grams/Centimeter³, g/cm³": "0.001 ", "Gram/Liter, g/LImperial Pound/Gallon, lb/UK gal": "0.01 ", "Ounce/Gallon (UK), oz/UK galGrams/Centimeter³, g/cm³": "0.006 ", "US Pound/Gallon, lb/US galKilogram/Meter³, kg/m³": "119.826 ", "Gram/Liter, g/LMilligrams/Meter³, mg/m³": "1,000,000 ", "Kilogram/Liter, kg/LGram/Liter, g/L": "1,000 ", "Ounce/Gallon (UK), oz/UK galMilligrams/Millimeter³, mg/m³": "0.006 ", "Ounce/Gallon (UK), oz/UK galKilogram/Liter, kg/L": "0.006 ", "Kilogram/Meter³, kg/m³Kilogram/Meter³, kg/m³": "1 ", "Grams/Millimeter³, g/mm³Ounce/Gallon (US), oz/US gal": "133,529.176 ", "Imperial Pound/Gallon, lb/UK galUS Pound/Gallon, lb/US gal": "0.833 ", "Kilogram/Meter³, kg/m³Milligrams/Meter³, mg/m³": "1,000,000 ", "Pound/Foot³, lb/ft³Kilogram/Meter³, kg/m³": "16.018 ", "Milligrams/Liter, mg/lMilligrams/Millimeter³, mg/m³": "0 ", "US Pound/Gallon, lb/US galMilligrams/Meter³, mg/m³": "119,826,000 ", "Imperial Pound/Gallon, lb/UK galKilogram/Liter, kg/L": "0.1 ", "Grams/Meter³, g/m³Milligrams/Liter, mg/l": "1 ", "Milligrams/Meter³, mg/m³Milligrams/Liter, mg/l": "0.001 ", "Milligrams/Liter, mg/lGrams/Meter³, g/m³": "1 ", "Ounce/Gallon (US), oz/US galMilligrams/Millimeter³, mg/m³": "0.007 ", "Grams/Centimeter³, g/cm³Pound/Foot³, lb/ft³": "62.43 ", "Pound/Inch³, lb/in³Ounce/Inch³, oz/in³": "16 ", "Ounce/Gallon (UK), oz/UK galGrams/Meter³, g/m³": "6,236 ", "Grams/Centimeter³, g/cm³Imperial Pound/Gallon, lb/UK gal": "10.022 ", "Ounce/Inch³, oz/in³Pound/Inch³, lb/in³": "0.062 ", "Gram/Liter, g/LOunce/Foot³, oz/ft³": "0.999 ", "Kilogram/Liter, kg/LGrams/Millimeter³, g/mm³": "0.001 ", "Gram/Liter, g/LMilligrams/Millimeter³, mg/m³": "0.001 ", "US Pound/Gallon, lb/US galMilligrams/Centimeter³, mg/cm³": "119.826 ", "Pound/Inch³, lb/in³Grams/Millimeter³, g/mm³": "0.028 ", "Imperial Pound/Gallon, lb/UK galImperial Pound/Gallon, lb/UK gal": "1 ", "Milligrams/Centimeter³, mg/cm³Milligrams/Millimeter³, mg/m³": "0.001 ", "Milligrams/Millimeter³, mg/m³Pound/Inch³, lb/in³": "0.036 ", "Ounce/Inch³, oz/in³Kilogram/Liter, kg/L": "1.73 ", "Imperial Pound/Gallon, lb/UK galOunce/Gallon (US), oz/US gal": "13.323 ", "Imperial Pound/Gallon, lb/UK galGrams/Millimeter³, g/mm³": "0 ", "US Pound/Gallon, lb/US galOunce/Gallon (US), oz/US gal": "16 ", "Kilogram/Liter, kg/LPound/Foot³, lb/ft³": "62.43 ", "Milligrams/Millimeter³, mg/m³Grams/Centimeter³, g/cm³": "1 ", "Milligrams/Centimeter³, mg/cm³Grams/Millimeter³, g/mm³": "0 ", "Milligrams/Centimeter³, mg/cm³Milligrams/Centimeter³, mg/cm³": "1 ", "Milligrams/Millimeter³, mg/m³Pound/Foot³, lb/ft³": "62.43 ", "Gram/Liter, g/LPound/Foot³, lb/ft³": "0.062 ", "Milligrams/Millimeter³, mg/m³US Pound/Gallon, lb/US gal": "8.345 ", "Ounce/Gallon (UK), oz/UK galMilligrams/Meter³, mg/m³": "6,236,000 ", "Ounce/Gallon (US), oz/US galPound/Inch³, lb/in³": "0 ", "Pound/Foot³, lb/ft³Gram/Liter, g/L": "16.018 ", "Milligrams/Centimeter³, mg/cm³Milligrams/Meter³, mg/m³": "1,000,000 ", "Pound/Inch³, lb/in³Milligrams/Meter³, mg/m³": "27,679,905,000 ", "Milligrams/Millimeter³, mg/m³Ounce/Gallon (UK), oz/UK gal": "160.359 ", "Milligrams/Millimeter³, mg/m³Kilogram/Liter, kg/L": "1 ", "Grams/Millimeter³, g/mm³Ounce/Gallon (UK), oz/UK gal": "160,359.205 ", "Grams/Centimeter³, g/cm³Ounce/Gallon (UK), oz/UK gal": "160.359 ", "Grams/Millimeter³, g/mm³Ounce/Foot³, oz/ft³": "999,000.999 ", "Imperial Pound/Gallon, lb/UK galMilligrams/Centimeter³, mg/cm³": "99.776 ", "Milligrams/Centimeter³, mg/cm³Ounce/Gallon (US), oz/US gal": "0.134 ", "Ounce/Foot³, oz/ft³Milligrams/Meter³, mg/m³": "1,001,000 ", "Gram/Liter, g/LOunce/Gallon (UK), oz/UK gal": "0.16 ", "Milligrams/Meter³, mg/m³Kilogram/Meter³, kg/m³": "0 ", "Milligrams/Liter, mg/lMilligrams/Meter³, mg/m³": "1,000 ", "Grams/Centimeter³, g/cm³Pound/Inch³, lb/in³": "0.036 ", "Grams/Millimeter³, g/mm³Kilogram/Liter, kg/L": "1,000 ", "Grams/Millimeter³, g/mm³US Pound/Gallon, lb/US gal": "8,345.434 ", "Ounce/Foot³, oz/ft³Ounce/Inch³, oz/in³": "0.001 ", "Milligrams/Liter, mg/lOunce/Inch³, oz/in³": "0 ", "Grams/Millimeter³, g/mm³Milligrams/Liter, mg/l": "1,000,000,000 ", "Grams/Meter³, g/m³Grams/Meter³, g/m³": "1 ", "Ounce/Foot³, oz/ft³Grams/Centimeter³, g/cm³": "0.001 ", "Ounce/Foot³, oz/ft³Grams/Meter³, g/m³": "1,001 ", "Milligrams/Centimeter³, mg/cm³Grams/Meter³, g/m³": "1,000 ", "Ounce/Foot³, oz/ft³Milligrams/Centimeter³, mg/cm³": "1.001 ", "Grams/Centimeter³, g/cm³Grams/Millimeter³, g/mm³": "0.001 ", "Ounce/Foot³, oz/ft³Pound/Inch³, lb/in³": "0 ", "Kilogram/Meter³, kg/m³Pound/Foot³, lb/ft³": "0.062 ", "Milligrams/Meter³, mg/m³Grams/Centimeter³, g/cm³": "0 ", "Ounce/Gallon (UK), oz/UK galOunce/Foot³, oz/ft³": "6.23 ", "Ounce/Gallon (UK), oz/UK galOunce/Inch³, oz/in³": "0.004 ", "Kilogram/Meter³, kg/m³Grams/Millimeter³, g/mm³": "0 ", "Gram/Liter, g/LOunce/Gallon (US), oz/US gal": "0.134 ", "Milligrams/Meter³, mg/m³Ounce/Gallon (UK), oz/UK gal": "0 ", "Milligrams/Centimeter³, mg/cm³Pound/Foot³, lb/ft³": "0.062 ", "Grams/Millimeter³, g/mm³Pound/Inch³, lb/in³": "36.127 ", "Ounce/Gallon (UK), oz/UK galPound/Inch³, lb/in³": "0 ", "Pound/Inch³, lb/in³Pound/Foot³, lb/ft³": "1,728.05 ", "US Pound/Gallon, lb/US galGrams/Meter³, g/m³": "119,826 ", "Milligrams/Meter³, mg/m³Kilogram/Liter, kg/L": "0 ", "US Pound/Gallon, lb/US galKilogram/Liter, kg/L": "0.12 ", "Milligrams/Centimeter³, mg/cm³Ounce/Foot³, oz/ft³": "0.999 ", "Pound/Inch³, lb/in³Milligrams/Millimeter³, mg/m³": "27.68 ", "US Pound/Gallon, lb/US galOunce/Gallon (UK), oz/UK gal": "19.215 ", "Grams/Centimeter³, g/cm³Ounce/Foot³, oz/ft³": "999.001 ", "Grams/Meter³, g/m³Ounce/Foot³, oz/ft³": "0.001 ", "Pound/Inch³, lb/in³Ounce/Foot³, oz/ft³": "27,652.253 ", "Ounce/Gallon (US), oz/US galGrams/Millimeter³, g/mm³": "0 ", "Ounce/Inch³, oz/in³Ounce/Foot³, oz/ft³": "1,728.262 ", "Grams/Centimeter³, g/cm³Gram/Liter, g/L": "1,000 ", "Kilogram/Meter³, kg/m³Kilogram/Liter, kg/L": "0.001 ", "Ounce/Gallon (US), oz/US galGram/Liter, g/L": "7.489 ", "Pound/Foot³, lb/ft³Milligrams/Liter, mg/l": "16,018 ", "Gram/Liter, g/LPound/Inch³, lb/in³": "0 ", "Ounce/Gallon (UK), oz/UK galOunce/Gallon (UK), oz/UK gal": "1 ", "Ounce/Gallon (UK), oz/UK galMilligrams/Centimeter³, mg/cm³": "6.236 ", "Imperial Pound/Gallon, lb/UK galGrams/Centimeter³, g/cm³": "0.1 ", "Pound/Foot³, lb/ft³Grams/Millimeter³, g/mm³": "0 ", "Gram/Liter, g/LMilligrams/Centimeter³, mg/cm³": "1 ", "Grams/Millimeter³, g/mm³Ounce/Inch³, oz/in³": "578.038 ", "Kilogram/Meter³, kg/m³Gram/Liter, g/L": "1 ", "Grams/Millimeter³, g/mm³Grams/Millimeter³, g/mm³": "1 ", "Milligrams/Meter³, mg/m³Ounce/Inch³, oz/in³": "0 ", "Ounce/Foot³, oz/ft³Gram/Liter, g/L": "1.001 ", "Ounce/Gallon (US), oz/US galMilligrams/Liter, mg/l": "7,489 ", "Gram/Liter, g/LGrams/Millimeter³, g/mm³": "0 ", "Imperial Pound/Gallon, lb/UK galKilogram/Meter³, kg/m³": "99.776 ", "Gram/Liter, g/LUS Pound/Gallon, lb/US gal": "0.008 ", "Grams/Meter³, g/m³Ounce/Inch³, oz/in³": "0 ", "Milligrams/Centimeter³, mg/cm³Pound/Inch³, lb/in³": "0 ", "Milligrams/Meter³, mg/m³Pound/Foot³, lb/ft³": "0 ", "Pound/Inch³, lb/in³Ounce/Gallon (US), oz/US gal": "3,696.075 ", "Pound/Inch³, lb/in³Pound/Inch³, lb/in³": "1 ", "US Pound/Gallon, lb/US galPound/Foot³, lb/ft³": "7.481 "]
    
    
//    let keys1 =
//    ["Gram/Liter, g/L", "Grams/Centimeter³, g/cm³", "Grams/Meter³, g/m³", "Grams/Millimeter³, g/mm³", "Imperial Pound/Gallon, lb/UK gal", "Kilogram/Liter, kg/L", "Kilogram/Meter³, kg/m³", "Milligrams/Centimeter³, mg/cm³", "Milligrams/Liter, mg/l", "Milligrams/Meter³, mg/m³", "Milligrams/Millimeter³, mg/m³", "Ounce/Foot³, oz/ft³", "Ounce/Gallon (UK), oz/UK gal", "Ounce/Gallon (US), oz/US gal", "Ounce/Inch³, oz/in³", "Pound/Foot³, lb/ft³", "Pound/Inch³, lb/in³", "US Pound/Gallon, lb/US gal"]
//
//    let keys2 =
//    ["Gram/Liter, g/L", "Grams/Centimeter³, g/cm³", "Grams/Meter³, g/m³", "Grams/Millimeter³, g/mm³", "Imperial Pound/Gallon, lb/UK gal", "Kilogram/Liter, kg/L", "Kilogram/Meter³, kg/m³", "Milligrams/Centimeter³, mg/cm³", "Milligrams/Liter, mg/l", "Milligrams/Meter³, mg/m³", "Milligrams/Millimeter³, mg/m³", "Ounce/Foot³, oz/ft³", "Ounce/Gallon (UK), oz/UK gal", "Ounce/Gallon (US), oz/US gal", "Ounce/Inch³, oz/in³", "Pound/Foot³, lb/ft³", "Pound/Inch³, lb/in³", "US Pound/Gallon, lb/US gal"]
//
//                init () {
//
//
//                    let formatter = MeasurementFormatter()
//                    formatter.unitOptions = .providedUnit
//                    for itema in keys1 {
//                        for itemb in keys2 {
//                            let itemc = itema + itemb
//                            let val1 = Measurement(value: 1.0 , unit: type(itema))
//                            let val2 = val1.converted(to: type(itemb))
//                            let storeval =  formatter.string(from: val2)
//                            densitydict[itemc] = storeval
//                        }
//                    }
//
//                    print ("Final Dict :", densitydict)
//                }
        
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
                    
    Text(viewRouter.currentPage)
    .font(.system(size: 40))
    .foregroundColor(.white)
    .padding(.all)
                                Button(action: {
                                    self.ShowUnit1.toggle()
                                }) {
                                    Text(self.DisplayUnit1 + "  "  + env.displayconvertdens)
                                    }
                                .sheet(isPresented: $ShowUnit1) {
                                    ModalDensity(isPresented: self.$ShowUnit1, isPresented1: self.$ShowUnit1, isPresented2: self.$ShowUnit2, currentUnit1: self.$DisplayUnit1, currentUnit2: self.$DisplayUnit2)
                                }
                                    .font(.system(size: 40))
                                    .frame(width: (UIScreen.main.bounds.width - 2 * 12), height: UIScreen.main.bounds.height / 10)
                                    .foregroundColor(.white)
                                    .background(Color.gray)
                                    .cornerRadius(UIScreen.main.bounds.width - 2 * 12)
                        
                                Button(action: {
                                    self.ShowUnit2.toggle()
                                }) {
                                                                        Text(self.DisplayUnit2 + "  " + calc(env.displayconvertdens , self.DisplayUnit1, self.DisplayUnit2))
//                                    Text(self.DisplayUnit2 + "  ")
                                    }
                                    .sheet(isPresented: $ShowUnit2) {
                                        ModalDensity(isPresented: self.$ShowUnit1, isPresented1: self.$ShowUnit1, isPresented2: self.$ShowUnit2, currentUnit1: self.$DisplayUnit1, currentUnit2: self.$DisplayUnit2)
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
                                    ConvertorButtonRounded(button: button, buttonconvertor: self.viewRouter.currentPage)
                                }
                            } else if self.viewRouter.currentButtonDesign == "Square" {
                                ForEach(row, id: \.self) { button in
                                    ConvertorButtonSquare(button: button, buttonconvertor: self.viewRouter.currentPage)
                                }
                            } else {
                                ForEach(row, id: \.self) { button in
                                    ConvertorButtonCircle(button: button, buttonconvertor: self.viewRouter.currentPage)
                                }
                            }

                        }
                    }
                    
                    HStack (alignment: .bottom) {
                                Text("Settings").font(.system(size: 14))
                        
                                Button(action: {self.viewRouter.currentPage = "Currency Convert"}) {
                                Text("Currency Convert")
                                }.font(.system(size: 18))
                                .frame(width: (UIScreen.main.bounds.width - 5 * 12)/4, height: ((UIScreen.main.bounds.width - 5 * 12)/4)*0.5)
                                .foregroundColor(.white)
                                .background(Color.gray)
                                .cornerRadius((UIScreen.main.bounds.width - 5 * 12)/4)

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
    
//    let densityarray =
//    ["Gram/Liter, g/L", "Grams/Centimeter³, g/cm³", "Grams/Meter³, g/m³", "Grams/Millimeter³, g/mm³", "Imperial Pound/Gallon, lb/UK gal", "Kilogram/Liter, kg/L", "Kilogram/Meter³, kg/m³", "Milligrams/Centimeter³, mg/cm³", "Milligrams/Liter, mg/l", "Milligrams/Meter³, mg/m³", "Milligrams/Millimeter³, mg/mm³", "Ounce/Foot³, oz/ft³", "Ounce/Gallon (UK), oz/UK gal", "Ounce/Gallon (US), oz/US gal", "Ounce/Inch³, oz/in³", "Pound/Foot³, lb/ft³", "Pound/Inch³, lb/in³", "US Pound/Gallon, lb/US gal"]
//
    
    private func calc(_ unit1val: String, _ unit1: String, _ unit2: String) -> String{
        let formatter = MeasurementFormatter()
        let stringval: String = unit1  +  unit2
        let storedval = (densitydict[stringval, default: "1"])
        let operand1 = (unit1val as NSString).doubleValue
        let operand2 = (storedval as NSString).doubleValue
        return String(operand1 * operand2)
        
    }
    
    private func type(_ unit: String) -> UnitDensity {
    if unit == "Gram/Liter, g/L" {
        return UnitDensity.gramperliter
    }
    else if unit == "Grams/Centimeter³, g/cm³" {
        return UnitDensity.grampercm3
    }
    else if unit == "Grams/Meter³, g/m³" {
        return UnitDensity.grampermeter3
    }
    else if unit == "Grams/Millimeter³, g/mm³" {
        return UnitDensity.grampermm3
    }
    else if unit == "Imperial Pound/Gallon, lb/UK gal" {
        return UnitDensity.implbpergallon
    }
    else if unit == "Kilogram/Liter, kg/L" {
        return UnitDensity.kgperliter
    }
    else if unit == "Kilogram/Meter³, kg/m³" {
        return UnitDensity.kgperm3
    }
    else if unit == "Milligrams/Centimeter³, mg/cm³" {
        return UnitDensity.mgpercm3
    }
    else if unit == "Milligrams/Liter, mg/l" {
        return UnitDensity.mgperl
    }
    else if unit == "Milligrams/Meter³, mg/m³" {
        return UnitDensity.mgperm3
    }
    else if unit == "Milligrams/Millimeter³, mg/mm³" {
        return UnitDensity.mgpermm3
    }
    else if unit == "Ounce/Foot³, oz/ft³" {
        return UnitDensity.ozperft3
    }
    else if unit == "Ounce/Gallon (UK), oz/UK gal" {
        return UnitDensity.ozperukgal
    }
    else if unit == "Ounce/Gallon (US), oz/US gal" {
        return UnitDensity.ozperusgal
    }
    else if unit == "Ounce/Inch³, oz/in³" {
        return UnitDensity.ozperin3
    }
    else if unit == "Pound/Foot³, lb/ft³" {
        return UnitDensity.lbperft3
    }
    else if unit == "Pound/Inch³, lb/in³" {
        return UnitDensity.lbperin3
    }
    else if unit == "US Pound/Gallon, lb/US gal" {
        return UnitDensity.lbperusgal
    }
    
        return UnitDensity.kgperm3
    }

    

}

struct Density_Previews: PreviewProvider {
    static var previews: some View {
        Density()
        .environmentObject(ViewRouter())
        .environmentObject(GlobalEnvironment())
    }
}

public final class UnitDensity : Dimension {
    
//    ["Gram/Liter, g/L", "Grams/Centimeter³, g/cm³", "Grams/Meter³, g/m³", "Grams/Millimeter³, g/mm³", "Imperial Pound/Gallon, lb/UK gal", "Kilogram/Liter, kg/L", "Kilogram/Meter³, kg/m³", "Milligrams/Centimeter³, mg/cm³", "Milligrams/Liter, mg/l", "Milligrams/Meter³, mg/m³", "Milligrams/Millimeter³, mg/m³", "Ounce/Foot³, oz/ft³", "Ounce/Gallon (UK), oz/UK gal", "Ounce/Gallon (US), oz/US gal", "Ounce/Inch³, oz/in³", "Pound/Foot³, lb/ft³", "Pound/Inch³, lb/in³", "US Pound/Gallon, lb/US gal"]
//
    
    
    static let gramperliter = UnitDensity(symbol: "", converter: UnitConverterLinear(coefficient: 1))
    static let grampercm3 = UnitDensity(symbol: "", converter: UnitConverterLinear(coefficient: 1000))
    static let grampermeter3 = UnitDensity(symbol: "", converter: UnitConverterLinear(coefficient: 0.001))
    static let grampermm3 = UnitDensity(symbol: "", converter: UnitConverterLinear(coefficient: 1000000))
    static let implbpergallon = UnitDensity(symbol: "", converter: UnitConverterLinear(coefficient: 99.776))
    static let kgperliter = UnitDensity(symbol: "", converter: UnitConverterLinear(coefficient: 1000))
    static let kgperm3 = UnitDensity(symbol: "", converter: UnitConverterLinear(coefficient: 1))
    static let mgpercm3 = UnitDensity(symbol: "", converter: UnitConverterLinear(coefficient: 1))
    static let mgperl = UnitDensity(symbol: "", converter: UnitConverterLinear(coefficient: 0.001))
    static let mgperm3 = UnitDensity(symbol: "", converter: UnitConverterLinear(coefficient: 0.000001))
    static let mgpermm3 = UnitDensity(symbol: "", converter: UnitConverterLinear(coefficient: 1000))
    static let ozperft3 = UnitDensity(symbol: "", converter: UnitConverterLinear(coefficient: 1.001))
    static let ozperukgal = UnitDensity(symbol: "", converter: UnitConverterLinear(coefficient: 6.236))
    static let ozperusgal = UnitDensity(symbol: "", converter: UnitConverterLinear(coefficient: 7.489))
    static let ozperin3 = UnitDensity(symbol: "", converter: UnitConverterLinear(coefficient: 1729.99))
    static let lbperft3 = UnitDensity(symbol: "", converter: UnitConverterLinear(coefficient: 16.018))
    static let lbperin3 = UnitDensity(symbol: "", converter: UnitConverterLinear(coefficient: 27679.905))
    static let lbperusgal = UnitDensity(symbol: "", converter: UnitConverterLinear(coefficient: 119.826))
    
    public override class func baseUnit() -> UnitDensity {
        return kgperm3
    }
}

