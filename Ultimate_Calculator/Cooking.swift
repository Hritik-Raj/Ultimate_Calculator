//
//  Cooking.swift
//  Ultimate_Calculator
//
//  Created by Hritik Raj on 8/14/20.
//  Copyright © 2020 Hritik Raj. All rights reserved.
//

import SwiftUI
import Foundation

struct Cooking: View {
        @State var ShowUnit1 = false
        @State var ShowUnit2 = false
        @State var DisplayUnit1 = "Angle"
        @State var DisplayUnit2 = "Angle"
        @EnvironmentObject var viewRouter: ViewRouter
        @EnvironmentObject var env: GlobalEnvironment
    
    var cookingdict : [String: String] = ["Deciliters, dlTablespoons (UK), UK tbsp": "7.143 Ci", "Fluid Ounces (US), US fl ozCups (Canada), Can cup": "0.132 Ci", "Pints (US Liquid), liquid US ptPints (US Dry), dry US pt": "0.858 Ci", "Liters, lCups (Canada), Can cup": "4.405 Ci", "Tablespoons (UK), UK tbspTablespoons (US), US tbsp": "0.933 Ci", "Gills, gillPints, pt": "0.208 Ci", "Centiliters, clPints (US Liquid), liquid US pt": "0.021 Ci", "Tablespoons, tbspCentiliters, cl": "1.5 ", "Tablespoons, tbspFluid Ounces (UK), UK fl oz": "0.536 Ci", "Teaspoons, tspnCentiliters, cl": "0.5 ", "Cups (UK), UK cupFifths, fifth": "0.375 Ci", "Fifths, fifthQuarts, qt": "0.8 Ci", "Gallons (UK), UK galFifths, fifth": "6.005 Ci", "Jiggers, jiggerTeaspoons, tspn": "8.8 Ci", "Cups, cupPints (US Liquid), liquid US pt": "0.529 Ci", "Bushels, buCups, cup": "75.708 ", "Gallons (US), US galCentiliters, cl": "378.5 ", "Cups, cupPecks, peck": "0.028 Ci", "Pints, ptTablespoons (US), US tbsp": "37.867 Ci", "Fifths, fifthTeaspoons (US), US tspn": "154.49 Ci", "Teaspoons (UK), UK tspnCups (Canada), Can cup": "0.015 Ci", "Pecks, peckDeciliters, dl": "88.1 Ci", "Milliliters, mlCups (Canada), Can cup": "0.004 Ci", "Cups (UK), UK cupTeaspoons (UK), UK tspn": "81.143 Ci", "Fluid Ounces (US), US fl ozJiggers, jigger": "0.682 Ci", "Teaspoons (US), US tspnCentiliters, cl": "0.49 ", "Cups, cupTablespoons (UK), UK tbsp": "17.857 Ci", "Tablespoons, tbspMilliliters, ml": "15 Ci", "Pints (US Liquid), liquid US ptFluid Ounces (UK), UK fl oz": "16.893 Ci", "Pecks, peckQuarts, qt": "9.313 Ci", "Pints (US Dry), dry US ptLiters, l": "0.551 Ci", "Fluid Ounces (US), US fl ozCentiliters, cl": "3 ", "Teaspoons (US), US tspnCups (Canada), Can cup": "0.022 Ci", "Pints, ptPints (US Dry), dry US pt": "1.031 Ci", "Jiggers, jiggerLiters, l": "0.044 Ci", "Pecks, peckMilliliters, ml": "8,810 Ci", "Tablespoons (US), US tbspFluid Ounces (US), US fl oz": "0.5 Ci", "Gallons (US), US galTablespoons (UK), UK tbsp": "270.357 Ci", "Tablespoons (US), US tbspCentiliters, cl": "1.5 ", "Cups (Canada), Can cupDeciliters, dl": "2.27 Ci", "Fifths, fifthPints (US Liquid), liquid US pt": "1.6 Ci", "Deciliters, dlGallons (US), US gal": "0.026 Ci", "Centiliters, clGallons (UK), UK gal": "0.002 Ci", "Tablespoons (UK), UK tbspGills, gill": "0.119 Ci", "Tablespoons (US), US tbspTablespoons, tbsp": "1 Ci", "Cups (Canada), Can cupFluid Ounces (US), US fl oz": "7.567 Ci", "Gills, gillTablespoons (UK), UK tbsp": "8.429 Ci", "Fluid Ounces (US), US fl ozPecks, peck": "0.003 Ci", "Milliliters, mlFifths, fifth": "0.001 Ci", "Pints (US Dry), dry US ptTablespoons (US), US tbsp": "36.733 Ci", "Quarts, qtCups, cup": "3.784 ", "Quarts, qtPints (US Liquid), liquid US pt": "2 Ci", "Fluid Ounces (US), US fl ozFluid Ounces (US), US fl oz": "1 Ci", "Teaspoons (UK), UK tspnGills, gill": "0.03 Ci", "Milliliters, mlDrops, Drop": "19.608 Ci", "Fluid Ounces (UK), UK fl ozBushels, bu": "0.001 ", "Gills, gillCentiliters, cl": "11.8 ", "Gallons (UK), UK galPecks, peck": "0.516 Ci", "Milliliters, mlDeciliters, dl": "0.01 Ci", "Deciliters, dlDeciliters, dl": "1 Ci", "Gallons (UK), UK galTeaspoons (US), US tspn": "927.755 Ci", "Pints (US Dry), dry US ptFluid Ounces (US), US fl oz": "18.367 Ci", "Tablespoons (US), US tbspJiggers, jigger": "0.341 Ci", "Teaspoons (UK), UK tspnDrops, Drop": "68.627 Ci", "Gallons (UK), UK galTeaspoons, tspn": "909.2 Ci", "Pints (US Liquid), liquid US ptDeciliters, dl": "4.73 Ci", "Cups, cupGallons (US), US gal": "0.066 Ci", "Centiliters, clTablespoons (US), US tbsp": "0.667 Ci", "Teaspoons (US), US tspnFluid Ounces (UK), UK fl oz": "0.175 Ci", "Teaspoons (US), US tspnTeaspoons (UK), UK tspn": "1.4 Ci", "Cups (UK), UK cupPecks, peck": "0.032 Ci", "Fluid Ounces (US), US fl ozFifths, fifth": "0.04 Ci", "Fifths, fifthDrops, Drop": "14,843.137 Ci", "Quarts, qtDeciliters, dl": "9.46 Ci", "Milliliters, mlFluid Ounces (UK), UK fl oz": "0.036 Ci", "Jiggers, jiggerGallons (US), US gal": "0.012 Ci", "Milliliters, mlGills, gill": "0.008 Ci", "Quarts, qtGallons (US), US gal": "0.25 Ci", "Deciliters, dlPecks, peck": "0.011 Ci", "Tablespoons (US), US tbspFifths, fifth": "0.02 Ci", "Pints, ptGallons (UK), UK gal": "0.125 Ci", "Cups (Canada), Can cupTeaspoons (UK), UK tspn": "64.857 Ci", "Tablespoons (US), US tbspDeciliters, dl": "0.15 Ci", "Liters, lBushels, bu": "0.053 ", "Drops, DropCentiliters, cl": "0.005 ", "Fluid Ounces (US), US fl ozGills, gill": "0.254 Ci", "Teaspoons, tspnFluid Ounces (US), US fl oz": "0.167 Ci", "Teaspoons (UK), UK tspnTeaspoons (UK), UK tspn": "1 Ci", "Bushels, buLiters, l": "18.927 Ci", "Tablespoons, tbspQuarts, qt": "0.016 Ci", "Liters, lPints, pt": "1.761 Ci", "Fluid Ounces (US), US fl ozTeaspoons, tspn": "6 Ci", "Jiggers, jiggerFifths, fifth": "0.058 Ci", "Teaspoons (UK), UK tspnTablespoons (UK), UK tbsp": "0.25 Ci", "Fluid Ounces (UK), UK fl ozPints (US Liquid), liquid US pt": "0.059 Ci", "Centiliters, clJiggers, jigger": "0.227 Ci", "Gallons (UK), UK galTablespoons (US), US tbsp": "303.067 Ci", "Jiggers, jiggerFluid Ounces (US), US fl oz": "1.467 Ci", "Bushels, buQuarts, qt": "20.007 Ci", "Bushels, buCentiliters, cl": "1,892.7 ", "Centiliters, clGills, gill": "0.085 Ci", "Deciliters, dlPints (US Liquid), liquid US pt": "0.211 Ci", "Fifths, fifthJiggers, jigger": "17.205 Ci", "Drops, DropQuarts, qt": "0 Ci", "Gallons (UK), UK galPints (US Liquid), liquid US pt": "9.611 Ci", "Tablespoons (US), US tbspPints (US Dry), dry US pt": "0.027 Ci", "Gallons (US), US galBushels, bu": "0.2 ", "Drops, DropCups (US), US cup": "0 Ci", "Gills, gillGills, gill": "1 Ci", "Fluid Ounces (US), US fl ozCups, cup": "0.12 ", "Jiggers, jiggerFluid Ounces (UK), UK fl oz": "1.571 Ci", "Gallons (US), US galPecks, peck": "0.43 Ci", "Teaspoons, tspnFluid Ounces (UK), UK fl oz": "0.179 Ci", "Fluid Ounces (US), US fl ozTablespoons, tbsp": "2 Ci", "Gallons (US), US galDrops, Drop": "74,215.686 Ci", "Milliliters, mlBushels, bu": "0 ", "Pecks, peckCups (UK), UK cup": "31.021 Ci", "Fluid Ounces (US), US fl ozCups (UK), UK cup": "0.106 Ci", "Teaspoons (UK), UK tspnPints (US Liquid), liquid US pt": "0.007 Ci", "Jiggers, jiggerDeciliters, dl": "0.44 Ci", "Quarts, qtPints, pt": "1.665 Ci", "Pints (US Dry), dry US ptCups (UK), UK cup": "1.94 Ci", "Pints, ptMilliliters, ml": "568 Ci", "Jiggers, jiggerMilliliters, ml": "44 Ci", "Gallons (US), US galGallons (UK), UK gal": "0.833 Ci", "Milliliters, mlLiters, l": "0.001 Ci", "Bushels, buGallons (US), US gal": "5.001 Ci", "Drops, DropLiters, l": "0 Ci", "Tablespoons (UK), UK tbspTeaspoons (US), US tspn": "2.857 Ci", "Centiliters, clPints (US Dry), dry US pt": "0.018 Ci", "Tablespoons (UK), UK tbspFluid Ounces (UK), UK fl oz": "0.5 Ci", "Cups, cupCups (Canada), Can cup": "1.101 Ci", "Teaspoons (US), US tspnTeaspoons, tspn": "0.98 Ci", "Cups, cupMilliliters, ml": "250 Ci", "Quarts, qtPecks, peck": "0.107 Ci", "Cups (UK), UK cupTablespoons (UK), UK tbsp": "20.286 Ci", "Drops, DropTeaspoons (UK), UK tspn": "0.015 Ci", "Tablespoons, tbspFifths, fifth": "0.02 Ci", "Tablespoons, tbspFluid Ounces (US), US fl oz": "0.5 Ci", "Jiggers, jiggerCentiliters, cl": "4.4 ", "Teaspoons (US), US tspnPecks, peck": "0.001 Ci", "Teaspoons, tspnCups (US), US cup": "0.021 Ci", "Drops, DropPints, pt": "0 Ci", "Tablespoons (US), US tbspTablespoons (UK), UK tbsp": "1.071 Ci", "Pints, ptTablespoons, tbsp": "37.867 Ci", "Pints, ptGills, gill": "4.814 Ci", "Tablespoons (UK), UK tbspJiggers, jigger": "0.318 Ci", "Cups (US), US cupGallons (US), US gal": "0.063 Ci", "Tablespoons (UK), UK tbspCentiliters, cl": "1.4 ", "Liters, lCups (US), US cup": "4.219 Ci", "Liters, lGallons (US), US gal": "0.264 Ci", "Cups (UK), UK cupGallons (US), US gal": "0.075 Ci", "Jiggers, jiggerCups (UK), UK cup": "0.155 Ci", "Pints (US Liquid), liquid US ptTeaspoons (US), US tspn": "96.531 Ci", "Cups (Canada), Can cupTeaspoons, tspn": "45.4 Ci", "Pints (US Liquid), liquid US ptCentiliters, cl": "47.3 ", "Tablespoons (UK), UK tbspFifths, fifth": "0.018 Ci", "Fluid Ounces (US), US fl ozQuarts, qt": "0.032 Ci", "Tablespoons (US), US tbspGallons (UK), UK gal": "0.003 Ci", "Tablespoons (US), US tbspCups, cup": "0.06 ", "Pints (US Liquid), liquid US ptTablespoons, tbsp": "31.533 Ci", "Deciliters, dlTeaspoons, tspn": "20 Ci", "Gills, gillCups (Canada), Can cup": "0.52 Ci", "Bushels, buPints (US Dry), dry US pt": "34.35 Ci", "Deciliters, dlTablespoons, tbsp": "6.667 Ci", "Gallons (UK), UK galPints (US Dry), dry US pt": "8.25 Ci", "Tablespoons (US), US tbspCups (US), US cup": "0.063 Ci", "Drops, DropDeciliters, dl": "0.001 Ci", "Deciliters, dlMilliliters, ml": "100 Ci", "Milliliters, mlCups (US), US cup": "0.004 Ci", "Cups (US), US cupCentiliters, cl": "23.7 ", "Fluid Ounces (US), US fl ozGallons (UK), UK gal": "0.007 Ci", "Pints (US Liquid), liquid US ptPints (US Liquid), liquid US pt": "1 Ci", "Pints (US Dry), dry US ptBushels, bu": "0.029 ", "Cups, cupFifths, fifth": "0.33 Ci", "Cups, cupGallons (UK), UK gal": "0.055 Ci", "Pints (US Dry), dry US ptFluid Ounces (UK), UK fl oz": "19.679 Ci", "Gallons (UK), UK galCups, cup": "18.184 ", "Teaspoons (US), US tspnCups (UK), UK cup": "0.017 Ci", "Gallons (US), US galMilliliters, ml": "3,785 Ci", "Drops, DropCups (UK), UK cup": "0 Ci", "Gallons (UK), UK galCups (US), US cup": "19.181 Ci", "Quarts, qtMilliliters, ml": "946 Ci", "Jiggers, jiggerPints, pt": "0.077 Ci", "Tablespoons (US), US tbspPints, pt": "0.026 Ci", "Fifths, fifthTeaspoons (UK), UK tspn": "216.286 Ci", "Tablespoons (UK), UK tbspPints (US Liquid), liquid US pt": "0.03 Ci", "Pints (US Dry), dry US ptCups (US), US cup": "2.325 Ci", "Fluid Ounces (UK), UK fl ozGills, gill": "0.237 Ci", "Tablespoons (US), US tbspTablespoons (US), US tbsp": "1 Ci", "Gills, gillTeaspoons (UK), UK tspn": "33.714 Ci", "Fifths, fifthBushels, bu": "0.04 ", "Pints, ptJiggers, jigger": "12.909 Ci", "Milliliters, mlTeaspoons, tspn": "0.2 Ci", "Tablespoons (UK), UK tbspFluid Ounces (US), US fl oz": "0.467 Ci", "Pints (US Liquid), liquid US ptGallons (US), US gal": "0.125 Ci", "Tablespoons (US), US tbspGallons (US), US gal": "0.004 Ci", "Gills, gillTablespoons, tbsp": "7.867 Ci", "Teaspoons (UK), UK tspnTablespoons (US), US tbsp": "0.233 Ci", "Pints, ptDrops, Drop": "11,137.255 Ci", "Pecks, peckTablespoons (UK), UK tbsp": "629.286 Ci", "Fluid Ounces (US), US fl ozTeaspoons (UK), UK tspn": "8.571 Ci", "Tablespoons, tbspTeaspoons (US), US tspn": "3.061 Ci", "Quarts, qtLiters, l": "0.946 Ci", "Cups (UK), UK cupTeaspoons (US), US tspn": "57.959 Ci", "Teaspoons (US), US tspnCups (US), US cup": "0.021 Ci", "Pints (US Dry), dry US ptPints, pt": "0.97 Ci", "Teaspoons, tspnCups (UK), UK cup": "0.018 Ci", "Liters, lGallons (UK), UK gal": "0.22 Ci", "Drops, DropFluid Ounces (US), US fl oz": "0.002 Ci", "Tablespoons, tbspPecks, peck": "0.002 Ci", "Pints (US Dry), dry US ptCups (Canada), Can cup": "2.427 Ci", "Cups (US), US cupTablespoons (UK), UK tbsp": "16.929 Ci", "Milliliters, mlTeaspoons (UK), UK tspn": "0.286 Ci", "Fluid Ounces (US), US fl ozCups (US), US cup": "0.127 Ci", "Liters, lGills, gill": "8.475 Ci", "Teaspoons (US), US tspnJiggers, jigger": "0.111 Ci", "Pints (US Dry), dry US ptTablespoons (UK), UK tbsp": "39.357 Ci", "Liters, lTablespoons, tbsp": "66.667 Ci", "Fluid Ounces (US), US fl ozDrops, Drop": "588.235 Ci", "Jiggers, jiggerGills, gill": "0.373 Ci", "Teaspoons, tspnJiggers, jigger": "0.114 Ci", "Teaspoons (UK), UK tspnCups (UK), UK cup": "0.012 Ci", "Fluid Ounces (UK), UK fl ozTeaspoons (UK), UK tspn": "8 Ci", "Pints (US Dry), dry US ptGallons (UK), UK gal": "0.121 Ci", "Cups (UK), UK cupCups, cup": "1.136 ", "Fluid Ounces (US), US fl ozFluid Ounces (UK), UK fl oz": "1.071 Ci", "Deciliters, dlGills, gill": "0.847 Ci", "Fluid Ounces (UK), UK fl ozDeciliters, dl": "0.28 Ci", "Fluid Ounces (UK), UK fl ozTeaspoons, tspn": "5.6 Ci", "Cups (US), US cupTeaspoons (US), US tspn": "48.367 Ci", "Cups (Canada), Can cupCups (US), US cup": "0.958 Ci", "Pecks, peckGills, gill": "74.661 Ci", "Cups (US), US cupPints (US Dry), dry US pt": "0.43 Ci", "Milliliters, mlTablespoons (UK), UK tbsp": "0.071 Ci", "Milliliters, mlTablespoons (US), US tbsp": "0.067 Ci", "Pints (US Liquid), liquid US ptGallons (UK), UK gal": "0.104 Ci", "Teaspoons (UK), UK tspnCups, cup": "0.014 ", "Gills, gillMilliliters, ml": "118 Ci", "Fluid Ounces (US), US fl ozPints (US Dry), dry US pt": "0.054 Ci", "Bushels, buDeciliters, dl": "189.27 Ci", "Fifths, fifthCups (Canada), Can cup": "3.335 Ci", "Teaspoons (UK), UK tspnGallons (US), US gal": "0.001 Ci", "Pints (US Dry), dry US ptMilliliters, ml": "551 Ci", "Teaspoons (UK), UK tspnTablespoons, tbsp": "0.233 Ci", "Fluid Ounces (US), US fl ozMilliliters, ml": "30 Ci", "Fluid Ounces (UK), UK fl ozPints, pt": "0.049 Ci", "Drops, DropTablespoons (UK), UK tbsp": "0.004 Ci", "Jiggers, jiggerTeaspoons (UK), UK tspn": "12.571 Ci", "Drops, DropCups, cup": "0 ", "Fluid Ounces (UK), UK fl ozTablespoons, tbsp": "1.867 Ci", "Jiggers, jiggerPints (US Liquid), liquid US pt": "0.093 Ci", "Drops, DropGallons (US), US gal": "0 Ci", "Fluid Ounces (UK), UK fl ozPints (US Dry), dry US pt": "0.051 Ci", "Cups (US), US cupFluid Ounces (US), US fl oz": "7.9 Ci", "Quarts, qtTablespoons (UK), UK tbsp": "67.571 Ci", "Teaspoons, tspnCups (Canada), Can cup": "0.022 Ci", "Cups (US), US cupLiters, l": "0.237 Ci", "Liters, lFluid Ounces (UK), UK fl oz": "35.714 Ci", "Pints, ptFluid Ounces (US), US fl oz": "18.933 Ci", "Teaspoons, tspnTeaspoons (UK), UK tspn": "1.429 Ci", "Pecks, peckGallons (US), US gal": "2.328 Ci", "Pints (US Liquid), liquid US ptPints, pt": "0.833 Ci", "Tablespoons, tbspTeaspoons (UK), UK tspn": "4.286 Ci", "Teaspoons, tspnPints (US Dry), dry US pt": "0.009 Ci", "Cups, cupTeaspoons, tspn": "50 Ci", "Milliliters, mlTeaspoons (US), US tspn": "0.204 Ci", "Teaspoons, tspnDeciliters, dl": "0.05 Ci", "Tablespoons (US), US tbspTeaspoons (UK), UK tspn": "4.286 Ci", "Drops, DropJiggers, jigger": "0.001 Ci", "Gallons (UK), UK galTablespoons, tbsp": "303.067 Ci", "Deciliters, dlLiters, l": "0.1 Ci", "Pecks, peckBushels, bu": "0.465 ", "Tablespoons (US), US tbspGills, gill": "0.127 Ci", "Tablespoons, tbspGallons (US), US gal": "0.004 Ci", "Pints (US Liquid), liquid US ptDrops, Drop": "9,274.51 Ci", "Cups (US), US cupDrops, Drop": "4,647.059 Ci", "Pints (US Liquid), liquid US ptTeaspoons (UK), UK tspn": "135.143 Ci", "Fluid Ounces (US), US fl ozDeciliters, dl": "0.3 Ci", "Teaspoons (UK), UK tspnPints, pt": "0.006 Ci", "Bushels, buPecks, peck": "2.148 Ci", "Teaspoons (UK), UK tspnCups (US), US cup": "0.015 Ci", "Tablespoons, tbspTablespoons (UK), UK tbsp": "1.071 Ci", "Teaspoons, tspnFifths, fifth": "0.007 Ci", "Deciliters, dlDrops, Drop": "1,960.784 Ci", "Cups (US), US cupDeciliters, dl": "2.37 Ci", "Cups (US), US cupBushels, bu": "0.013 ", "Cups (UK), UK cupPints (US Liquid), liquid US pt": "0.6 Ci", "Jiggers, jiggerCups (US), US cup": "0.186 Ci", "Bushels, buPints (US Liquid), liquid US pt": "40.015 Ci", "Fifths, fifthFluid Ounces (UK), UK fl oz": "27.036 Ci", "Pints (US Dry), dry US ptGills, gill": "4.669 Ci", "Cups (Canada), Can cupQuarts, qt": "0.24 Ci", "Fluid Ounces (US), US fl ozTablespoons (UK), UK tbsp": "2.143 Ci", "Teaspoons, tspnDrops, Drop": "98.039 Ci", "Cups (UK), UK cupCentiliters, cl": "28.4 ", "Quarts, qtFluid Ounces (UK), UK fl oz": "33.786 Ci", "Gallons (UK), UK galBushels, bu": "0.24 ", "Tablespoons (UK), UK tbspTablespoons, tbsp": "0.933 Ci", "Drops, DropFifths, fifth": "0 Ci", "Gallons (US), US galPints, pt": "6.664 Ci", "Pecks, peckTeaspoons, tspn": "1,762 Ci", "Tablespoons (US), US tbspCups (Canada), Can cup": "0.066 Ci", "Gallons (US), US galFluid Ounces (US), US fl oz": "126.167 Ci", "Drops, DropTablespoons, tbsp": "0.003 Ci", "Tablespoons (UK), UK tbspGallons (UK), UK gal": "0.003 Ci", "Teaspoons (US), US tspnDrops, Drop": "96.078 Ci", "Milliliters, mlPints (US Liquid), liquid US pt": "0.002 Ci", "Tablespoons (US), US tbspQuarts, qt": "0.016 Ci", "Fluid Ounces (UK), UK fl ozCups (UK), UK cup": "0.099 Ci", "Gills, gillDeciliters, dl": "1.18 Ci", "Pints, ptLiters, l": "0.568 Ci", "Drops, DropFluid Ounces (UK), UK fl oz": "0.002 Ci", "Liters, lJiggers, jigger": "22.727 Ci", "Cups (US), US cupCups, cup": "0.948 ", "Gallons (US), US galQuarts, qt": "4.001 Ci", "Gills, gillTablespoons (US), US tbsp": "7.867 Ci", "Cups (UK), UK cupCups (Canada), Can cup": "1.251 Ci", "Fifths, fifthTablespoons (US), US tbsp": "50.467 Ci", "Tablespoons (US), US tbspCups (UK), UK cup": "0.053 Ci", "Cups, cupQuarts, qt": "0.264 Ci", "Cups (Canada), Can cupMilliliters, ml": "227 Ci", "Tablespoons (UK), UK tbspPints (US Dry), dry US pt": "0.025 Ci", "Cups (US), US cupTeaspoons (UK), UK tspn": "67.714 Ci", "Teaspoons (US), US tspnMilliliters, ml": "4.9 Ci", "Pints (US Liquid), liquid US ptGills, gill": "4.008 Ci", "Gallons (UK), UK galDeciliters, dl": "45.46 Ci", "Tablespoons, tbspTablespoons (US), US tbsp": "1 Ci", "Centiliters, clBushels, bu": "0.001 ", "Fifths, fifthGills, gill": "6.415 Ci", "Quarts, qtCentiliters, cl": "94.6 ", "Teaspoons, tspnPints (US Liquid), liquid US pt": "0.011 Ci", "Pecks, peckJiggers, jigger": "200.227 Ci", "Pints (US Liquid), liquid US ptCups (UK), UK cup": "1.665 Ci", "Pecks, peckPints, pt": "15.511 Ci", "Bushels, buTeaspoons (US), US tspn": "3,862.653 Ci", "Pecks, peckFluid Ounces (US), US fl oz": "293.667 Ci", "Cups (US), US cupQuarts, qt": "0.251 Ci", "Bushels, buTablespoons (UK), UK tbsp": "1,351.929 Ci", "Cups (UK), UK cupLiters, l": "0.284 Ci", "Teaspoons, tspnTablespoons (US), US tbsp": "0.333 Ci", "Fluid Ounces (UK), UK fl ozLiters, l": "0.028 Ci", "Pints (US Liquid), liquid US ptFluid Ounces (US), US fl oz": "15.767 Ci", "Liters, lTablespoons (US), US tbsp": "66.667 Ci", "Tablespoons, tbspPints, pt": "0.026 Ci", "Tablespoons (UK), UK tbspTeaspoons (UK), UK tspn": "4 Ci", "Jiggers, jiggerTablespoons, tbsp": "2.933 Ci", "Teaspoons, tspnGallons (US), US gal": "0.001 Ci", "Cups, cupPints (US Dry), dry US pt": "0.454 Ci", "Centiliters, clDeciliters, dl": "0.1 Ci", "Fluid Ounces (UK), UK fl ozTablespoons (US), US tbsp": "1.867 Ci", "Fifths, fifthCups, cup": "3.028 ", "Fifths, fifthPints, pt": "1.333 Ci", "Cups (Canada), Can cupPints, pt": "0.4 Ci", "Tablespoons (UK), UK tbspPecks, peck": "0.002 Ci", "Gills, gillPints (US Dry), dry US pt": "0.214 Ci", "Jiggers, jiggerBushels, bu": "0.002 ", "Tablespoons, tbspCups (US), US cup": "0.063 Ci", "Gills, gillDrops, Drop": "2,313.725 Ci", "Deciliters, dlCentiliters, cl": "10 ", "Tablespoons (UK), UK tbspTeaspoons, tspn": "2.8 Ci", "Teaspoons (UK), UK tspnTeaspoons, tspn": "0.7 Ci", "Deciliters, dlCups (Canada), Can cup": "0.441 Ci", "Teaspoons (UK), UK tspnPints (US Dry), dry US pt": "0.006 Ci", "Teaspoons (US), US tspnPints, pt": "0.009 Ci", "Milliliters, mlPecks, peck": "0 Ci", "Cups, cupFluid Ounces (US), US fl oz": "8.333 Ci", "Cups, cupFluid Ounces (UK), UK fl oz": "8.929 Ci", "Milliliters, mlMilliliters, ml": "1 Ci", "Gills, gillCups, cup": "0.472 ", "Bushels, buFifths, fifth": "25.003 Ci", "Fluid Ounces (UK), UK fl ozCups, cup": "0.112 ", "Pints (US Liquid), liquid US ptTablespoons (US), US tbsp": "31.533 Ci", "Tablespoons (UK), UK tbspTablespoons (UK), UK tbsp": "1 Ci", "Gills, gillTeaspoons (US), US tspn": "24.082 Ci", "Gallons (US), US galGills, gill": "32.076 Ci", "Teaspoons (UK), UK tspnDeciliters, dl": "0.035 Ci", "Pints (US Dry), dry US ptTablespoons, tbsp": "36.733 Ci", "Teaspoons (US), US tspnDeciliters, dl": "0.049 Ci", "Deciliters, dlPints (US Dry), dry US pt": "0.181 Ci", "Liters, lFluid Ounces (US), US fl oz": "33.333 Ci", "Cups (Canada), Can cupGallons (US), US gal": "0.06 Ci", "Cups (Canada), Can cupTablespoons (UK), UK tbsp": "16.214 Ci", "Cups (Canada), Can cupPecks, peck": "0.026 Ci", "Bushels, buTeaspoons (UK), UK tspn": "5,407.714 Ci", "Centiliters, clFluid Ounces (US), US fl oz": "0.333 Ci", "Pints, ptQuarts, qt": "0.6 Ci", "Jiggers, jiggerCups (Canada), Can cup": "0.194 Ci", "Centiliters, clCentiliters, cl": "1 ", "Teaspoons, tspnTeaspoons (US), US tspn": "1.02 Ci", "Cups, cupBushels, bu": "0.013 ", "Liters, lFifths, fifth": "1.321 Ci", "Fifths, fifthCups (UK), UK cup": "2.665 Ci", "Teaspoons (UK), UK tspnFluid Ounces (US), US fl oz": "0.117 Ci", "Cups (US), US cupPecks, peck": "0.027 Ci", "Cups (US), US cupGills, gill": "2.008 Ci", "Pecks, peckTeaspoons (UK), UK tspn": "2,517.143 Ci", "Teaspoons, tspnPints, pt": "0.009 Ci", "Fluid Ounces (US), US fl ozLiters, l": "0.03 Ci", "Bushels, buFluid Ounces (UK), UK fl oz": "675.964 Ci", "Teaspoons, tspnPecks, peck": "0.001 Ci", "Milliliters, mlTablespoons, tbsp": "0.067 Ci", "Gallons (UK), UK galMilliliters, ml": "4,546 Ci", "Pecks, peckPints (US Liquid), liquid US pt": "18.626 Ci", "Milliliters, mlJiggers, jigger": "0.023 Ci", "Centiliters, clTablespoons, tbsp": "0.667 Ci", "Centiliters, clFifths, fifth": "0.013 Ci", "Teaspoons, tspnBushels, bu": "0 ", "Fifths, fifthTablespoons, tbsp": "50.467 Ci", "Gallons (US), US galDeciliters, dl": "37.85 Ci", "Gallons (US), US galFluid Ounces (UK), UK fl oz": "135.179 Ci", "Tablespoons (US), US tbspPecks, peck": "0.002 Ci", "Teaspoons (US), US tspnQuarts, qt": "0.005 Ci", "Quarts, qtCups (UK), UK cup": "3.331 Ci", "Tablespoons (UK), UK tbspCups (Canada), Can cup": "0.062 Ci", "Quarts, qtGills, gill": "8.017 Ci", "Milliliters, mlQuarts, qt": "0.001 Ci", "Quarts, qtPints (US Dry), dry US pt": "1.717 Ci", "Pints, ptTeaspoons (US), US tspn": "115.918 Ci", "Teaspoons (UK), UK tspnGallons (UK), UK gal": "0.001 Ci", "Teaspoons, tspnTablespoons (UK), UK tbsp": "0.357 Ci", "Fifths, fifthLiters, l": "0.757 Ci", "Tablespoons (UK), UK tbspCups (UK), UK cup": "0.049 Ci", "Teaspoons, tspnLiters, l": "0.005 Ci", "Gallons (UK), UK galTablespoons (UK), UK tbsp": "324.714 Ci", "Teaspoons (US), US tspnPints (US Dry), dry US pt": "0.009 Ci", "Pints (US Dry), dry US ptTeaspoons (UK), UK tspn": "157.429 Ci", "Fluid Ounces (UK), UK fl ozCups (US), US cup": "0.118 Ci", "Teaspoons, tspnCups, cup": "0.02 ", "Fluid Ounces (UK), UK fl ozJiggers, jigger": "0.636 Ci", "Pints, ptGallons (US), US gal": "0.15 Ci", "Cups (UK), UK cupGallons (UK), UK gal": "0.062 Ci", "Centiliters, clDrops, Drop": "196.078 Ci", "Fifths, fifthTeaspoons, tspn": "151.4 Ci", "Gills, gillGallons (UK), UK gal": "0.026 Ci", "Bushels, buTablespoons (US), US tbsp": "1,261.8 Ci", "Teaspoons, tspnGills, gill": "0.042 Ci", "Teaspoons (UK), UK tspnFifths, fifth": "0.005 Ci", "Gallons (UK), UK galQuarts, qt": "4.805 Ci", "Pecks, peckFluid Ounces (UK), UK fl oz": "314.643 Ci", "Tablespoons, tbspJiggers, jigger": "0.341 Ci", "Quarts, qtTeaspoons (UK), UK tspn": "270.286 Ci", "Pecks, peckPints (US Dry), dry US pt": "15.989 Ci", "Pints, ptBushels, bu": "0.03 ", "Bushels, buTablespoons, tbsp": "1,261.8 Ci", "Liters, lTeaspoons, tspn": "200 Ci", "Gallons (US), US galCups (Canada), Can cup": "16.674 Ci", "Pecks, peckDrops, Drop": "172,745.098 Ci", "Cups (US), US cupFluid Ounces (UK), UK fl oz": "8.464 Ci", "Tablespoons (UK), UK tbspDeciliters, dl": "0.14 Ci", "Pints (US Liquid), liquid US ptFifths, fifth": "0.625 Ci", "Liters, lCups, cup": "4 ", "Cups (US), US cupCups (Canada), Can cup": "1.044 Ci", "Pints (US Liquid), liquid US ptCups (US), US cup": "1.996 Ci", "Gallons (US), US galCups, cup": "15.14 ", "Pints (US Dry), dry US ptCentiliters, cl": "55.1 ", "Tablespoons (US), US tbspDrops, Drop": "294.118 Ci", "Teaspoons (US), US tspnTablespoons (UK), UK tbsp": "0.35 Ci", "Pints, ptCups (Canada), Can cup": "2.502 Ci", "Gallons (UK), UK galDrops, Drop": "89,137.255 Ci", "Tablespoons (UK), UK tbspCups (US), US cup": "0.059 Ci", "Gallons (US), US galFifths, fifth": "5 Ci", "Cups, cupDrops, Drop": "4,901.961 Ci", "Teaspoons (US), US tspnGallons (US), US gal": "0.001 Ci", "Liters, lCups (UK), UK cup": "3.521 Ci", "Cups, cupCentiliters, cl": "25 ", "Cups (UK), UK cupCups (US), US cup": "1.198 Ci", "Tablespoons (UK), UK tbspDrops, Drop": "274.51 Ci", "Liters, lTeaspoons (UK), UK tspn": "285.714 Ci", "Gallons (US), US galTablespoons (US), US tbsp": "252.333 Ci", "Tablespoons (US), US tbspLiters, l": "0.015 Ci", "Pints, ptPints, pt": "1 Ci", "Cups (US), US cupCups (US), US cup": "1 Ci", "Pints, ptFifths, fifth": "0.75 Ci", "Cups (Canada), Can cupCups (Canada), Can cup": "1 Ci", "Fifths, fifthFluid Ounces (US), US fl oz": "25.233 Ci", "Centiliters, clGallons (US), US gal": "0.003 Ci", "Cups (US), US cupTablespoons, tbsp": "15.8 Ci", "Drops, DropBushels, bu": "0 ", "Gills, gillFifths, fifth": "0.156 Ci", "Cups (Canada), Can cupDrops, Drop": "4,450.98 Ci", "Teaspoons (US), US tspnLiters, l": "0.005 Ci", "Deciliters, dlCups (US), US cup": "0.422 Ci", "Deciliters, dlFluid Ounces (UK), UK fl oz": "3.571 Ci", "Cups (Canada), Can cupTeaspoons (US), US tspn": "46.327 Ci", "Drops, DropPecks, peck": "0 Ci", "Fifths, fifthFifths, fifth": "1 Ci", "Cups (Canada), Can cupFluid Ounces (UK), UK fl oz": "8.107 Ci", "Pints (US Liquid), liquid US ptLiters, l": "0.473 Ci", "Gallons (US), US galJiggers, jigger": "86.023 Ci", "Pints (US Liquid), liquid US ptTeaspoons, tspn": "94.6 Ci", "Cups (Canada), Can cupFifths, fifth": "0.3 Ci", "Cups (Canada), Can cupGills, gill": "1.924 Ci", "Pecks, peckGallons (UK), UK gal": "1.938 Ci", "Cups (Canada), Can cupBushels, bu": "0.012 ", "Drops, DropPints (US Dry), dry US pt": "0 Ci", "Pints (US Dry), dry US ptCups, cup": "2.204 ", "Fluid Ounces (UK), UK fl ozGallons (UK), UK gal": "0.006 Ci", "Cups, cupCups, cup": "1 ", "Cups (Canada), Can cupCentiliters, cl": "22.7 ", "Fluid Ounces (US), US fl ozTeaspoons (US), US tspn": "6.122 Ci", "Centiliters, clTeaspoons (UK), UK tspn": "2.857 Ci", "Milliliters, mlCentiliters, cl": "0.1 ", "Gills, gillTeaspoons, tspn": "23.6 Ci", "Fifths, fifthGallons (US), US gal": "0.2 Ci", "Quarts, qtDrops, Drop": "18,549.02 Ci", "Cups (US), US cupFifths, fifth": "0.313 Ci", "Jiggers, jiggerCups, cup": "0.176 ", "Tablespoons, tbspPints (US Dry), dry US pt": "0.027 Ci", "Gallons (UK), UK galGills, gill": "38.525 Ci", "Pints (US Dry), dry US ptFifths, fifth": "0.728 Ci", "Teaspoons, tspnQuarts, qt": "0.005 Ci", "Deciliters, dlTeaspoons (US), US tspn": "20.408 Ci", "Pints (US Liquid), liquid US ptBushels, bu": "0.025 ", "Liters, lLiters, l": "1 Ci", "Gallons (UK), UK galGallons (US), US gal": "1.201 Ci", "Quarts, qtFluid Ounces (US), US fl oz": "31.533 Ci", "Centiliters, clFluid Ounces (UK), UK fl oz": "0.357 Ci", "Cups (UK), UK cupPints, pt": "0.5 Ci", "Liters, lCentiliters, cl": "100 ", "Gallons (UK), UK galFluid Ounces (US), US fl oz": "151.533 Ci", "Cups (Canada), Can cupPints (US Dry), dry US pt": "0.412 Ci", "Tablespoons, tbspTeaspoons, tspn": "3 Ci", "Pints (US Dry), dry US ptDeciliters, dl": "5.51 Ci", "Teaspoons (UK), UK tspnMilliliters, ml": "3.5 Ci", "Fluid Ounces (UK), UK fl ozTablespoons (UK), UK tbsp": "2 Ci", "Quarts, qtBushels, bu": "0.05 ", "Teaspoons (US), US tspnGills, gill": "0.042 Ci", "Fluid Ounces (UK), UK fl ozTeaspoons (US), US tspn": "5.714 Ci", "Teaspoons, tspnTablespoons, tbsp": "0.333 Ci", "Milliliters, mlPints (US Dry), dry US pt": "0.002 Ci", "Teaspoons (UK), UK tspnLiters, l": "0.004 Ci", "Pints, ptCups, cup": "2.272 ", "Pecks, peckTablespoons (US), US tbsp": "587.333 Ci", "Tablespoons, tbspLiters, l": "0.015 Ci", "Gallons (US), US galPints (US Dry), dry US pt": "6.869 Ci", "Teaspoons (UK), UK tspnCentiliters, cl": "0.35 ", "Jiggers, jiggerTablespoons (UK), UK tbsp": "3.143 Ci", "Fluid Ounces (UK), UK fl ozDrops, Drop": "549.02 Ci", "Teaspoons (US), US tspnTablespoons, tbsp": "0.327 Ci", "Tablespoons (US), US tbspPints (US Liquid), liquid US pt": "0.032 Ci", "Liters, lDrops, Drop": "19,607.843 Ci", "Cups, cupDeciliters, dl": "2.5 Ci", "Bushels, buJiggers, jigger": "430.159 Ci", "Teaspoons, tspnTeaspoons, tspn": "1 Ci", "Bushels, buCups (Canada), Can cup": "83.379 Ci", "Tablespoons (US), US tbspMilliliters, ml": "15 Ci", "Tablespoons (UK), UK tbspLiters, l": "0.014 Ci", "Cups (US), US cupPints, pt": "0.417 Ci", "Bushels, buTeaspoons, tspn": "3,785.4 Ci", "Gallons (US), US galGallons (US), US gal": "1 Ci", "Milliliters, mlGallons (US), US gal": "0 Ci", "Fluid Ounces (UK), UK fl ozPecks, peck": "0.003 Ci", "Cups (UK), UK cupJiggers, jigger": "6.455 Ci", "Tablespoons, tbspCups (UK), UK cup": "0.053 Ci", "Drops, DropDrops, Drop": "1 Ci", "Quarts, qtJiggers, jigger": "21.5 Ci", "Fluid Ounces (UK), UK fl ozQuarts, qt": "0.03 Ci", "Tablespoons (UK), UK tbspQuarts, qt": "0.015 Ci", "Gills, gillBushels, bu": "0.006 ", "Tablespoons (UK), UK tbspMilliliters, ml": "14 Ci", "Cups (Canada), Can cupCups (UK), UK cup": "0.799 Ci", "Teaspoons (US), US tspnBushels, bu": "0 ", "Cups, cupTeaspoons (US), US tspn": "51.02 Ci", "Bushels, buGills, gill": "160.398 Ci", "Tablespoons (US), US tbspTeaspoons, tspn": "3 Ci", "Cups (Canada), Can cupPints (US Liquid), liquid US pt": "0.48 Ci", "Fifths, fifthDeciliters, dl": "7.57 Ci", "Pints, ptTeaspoons, tspn": "113.6 Ci", "Tablespoons, tbspCups, cup": "0.06 ", "Drops, DropGallons (UK), UK gal": "0 Ci", "Gills, gillCups (UK), UK cup": "0.415 Ci", "Centiliters, clTeaspoons (US), US tspn": "2.041 Ci", "Bushels, buFluid Ounces (US), US fl oz": "630.9 Ci", "Jiggers, jiggerTablespoons (US), US tbsp": "2.933 Ci", "Centiliters, clQuarts, qt": "0.011 Ci", "Liters, lTablespoons (UK), UK tbsp": "71.429 Ci", "Tablespoons, tbspTablespoons, tbsp": "1 Ci", "Bushels, buCups (UK), UK cup": "66.644 Ci", "Deciliters, dlCups (UK), UK cup": "0.352 Ci", "Fluid Ounces (US), US fl ozPints (US Liquid), liquid US pt": "0.063 Ci", "Cups (UK), UK cupFluid Ounces (US), US fl oz": "9.467 Ci", "Pints (US Liquid), liquid US ptTablespoons (UK), UK tbsp": "33.786 Ci", "Gallons (US), US galTablespoons, tbsp": "252.333 Ci", "Gallons (UK), UK galGallons (UK), UK gal": "1 Ci", "Pints, ptFluid Ounces (UK), UK fl oz": "20.286 Ci", "Deciliters, dlFluid Ounces (US), US fl oz": "3.333 Ci", "Fifths, fifthMilliliters, ml": "757 Ci", "Cups (UK), UK cupCups (UK), UK cup": "1 Ci", "Pints (US Liquid), liquid US ptJiggers, jigger": "10.75 Ci", "Gills, gillPecks, peck": "0.013 Ci", "Gallons (US), US galCups (US), US cup": "15.97 Ci", "Pecks, peckCups, cup": "35.24 ", "Centiliters, clMilliliters, ml": "10 Ci", "Cups (UK), UK cupTablespoons, tbsp": "18.933 Ci", "Gills, gillPints (US Liquid), liquid US pt": "0.249 Ci", "Cups (Canada), Can cupJiggers, jigger": "5.159 Ci", "Fifths, fifthPecks, peck": "0.086 Ci", "Gills, gillFluid Ounces (UK), UK fl oz": "4.214 Ci", "Liters, lPints (US Liquid), liquid US pt": "2.114 Ci", "Tablespoons (US), US tbspFluid Ounces (UK), UK fl oz": "0.536 Ci", "Cups (Canada), Can cupTablespoons (US), US tbsp": "15.133 Ci", "Pints, ptCentiliters, cl": "56.8 ", "Cups, cupCups (US), US cup": "1.055 Ci", "Quarts, qtTablespoons, tbsp": "63.067 Ci", "Gallons (UK), UK galJiggers, jigger": "103.318 Ci", "Liters, lTeaspoons (US), US tspn": "204.082 Ci", "Fifths, fifthCentiliters, cl": "75.7 ", "Pecks, peckCentiliters, cl": "881 ", "Cups (UK), UK cupFluid Ounces (UK), UK fl oz": "10.143 Ci", "Drops, DropTeaspoons, tspn": "0.01 Ci", "Cups (Canada), Can cupGallons (UK), UK gal": "0.05 Ci", "Milliliters, mlPints, pt": "0.002 Ci", "Pints, ptTeaspoons (UK), UK tspn": "162.286 Ci", "Liters, lPecks, peck": "0.114 Ci", "Teaspoons (US), US tspnPints (US Liquid), liquid US pt": "0.01 Ci", "Cups (UK), UK cupDrops, Drop": "5,568.627 Ci", "Centiliters, clCups (Canada), Can cup": "0.044 Ci", "Tablespoons, tbspBushels, bu": "0.001 ", "Tablespoons, tbspDeciliters, dl": "0.15 Ci", "Cups, cupGills, gill": "2.119 Ci", "Pints (US Dry), dry US ptPints (US Liquid), liquid US pt": "1.165 Ci", "Jiggers, jiggerPints (US Dry), dry US pt": "0.08 Ci", "Deciliters, dlPints, pt": "0.176 Ci", "Fluid Ounces (US), US fl ozTablespoons (US), US tbsp": "2 Ci", "Pecks, peckPecks, peck": "1 Ci", "Gallons (US), US galTeaspoons (US), US tspn": "772.449 Ci", "Quarts, qtGallons (UK), UK gal": "0.208 Ci", "Tablespoons, tbspGills, gill": "0.127 Ci", "Cups (US), US cupPints (US Liquid), liquid US pt": "0.501 Ci", "Pints (US Liquid), liquid US ptQuarts, qt": "0.5 Ci", "Teaspoons (US), US tspnFifths, fifth": "0.006 Ci", "Gills, gillGallons (US), US gal": "0.031 Ci", "Quarts, qtCups (Canada), Can cup": "4.167 Ci", "Cups (UK), UK cupBushels, bu": "0.015 ", "Quarts, qtQuarts, qt": "1 Ci", "Fifths, fifthPints (US Dry), dry US pt": "1.374 Ci", "Teaspoons (UK), UK tspnTeaspoons (US), US tspn": "0.714 Ci", "Pints, ptPecks, peck": "0.064 Ci", "Drops, DropCups (Canada), Can cup": "0 Ci", "Bushels, buMilliliters, ml": "18,927 Ci", "Milliliters, mlCups (UK), UK cup": "0.004 Ci", "Gallons (UK), UK galPints, pt": "8.004 Ci", "Gills, gillLiters, l": "0.118 Ci", "Teaspoons (US), US tspnTablespoons (US), US tbsp": "0.327 Ci", "Pints (US Dry), dry US ptQuarts, qt": "0.582 Ci", "Jiggers, jiggerJiggers, jigger": "1 Ci", "Pints (US Dry), dry US ptJiggers, jigger": "12.523 Ci", "Cups, cupJiggers, jigger": "5.682 Ci", "Teaspoons (US), US tspnCups, cup": "0.02 ", "Pecks, peckFifths, fifth": "11.638 Ci", "Bushels, buGallons (UK), UK gal": "4.163 Ci", "Cups, cupTeaspoons (UK), UK tspn": "71.429 Ci", "Teaspoons (UK), UK tspnBushels, bu": "0 ", "Cups (US), US cupTeaspoons, tspn": "47.4 Ci", "Cups, cupTablespoons, tbsp": "16.667 Ci", "Quarts, qtTablespoons (US), US tbsp": "63.067 Ci", "Centiliters, clCups, cup": "0.04 ", "Teaspoons (US), US tspnFluid Ounces (US), US fl oz": "0.163 Ci", "Deciliters, dlBushels, bu": "0.005 ", "Fluid Ounces (UK), UK fl ozFifths, fifth": "0.037 Ci", "Quarts, qtTeaspoons, tspn": "189.2 Ci", "Liters, lQuarts, qt": "1.057 Ci", "Pints, ptPints (US Liquid), liquid US pt": "1.201 Ci", "Pints, ptDeciliters, dl": "5.68 Ci", "Gallons (UK), UK galCups (UK), UK cup": "16.007 Ci", "Gallons (UK), UK galCups (Canada), Can cup": "20.026 Ci", "Gills, gillQuarts, qt": "0.125 Ci", "Drops, DropTablespoons (US), US tbsp": "0.003 Ci", "Tablespoons, tbspGallons (UK), UK gal": "0.003 Ci", "Pints (US Liquid), liquid US ptCups (Canada), Can cup": "2.084 Ci", "Pecks, peckCups (US), US cup": "37.173 Ci", "Pecks, peckTeaspoons (US), US tspn": "1,797.959 Ci", "Quarts, qtTeaspoons (US), US tspn": "193.061 Ci", "Cups (US), US cupTablespoons (US), US tbsp": "15.8 Ci", "Cups, cupTablespoons (US), US tbsp": "16.667 Ci", "Tablespoons (UK), UK tbspBushels, bu": "0.001 ", "Drops, DropTeaspoons (US), US tspn": "0.01 Ci", "Gallons (US), US galTeaspoons, tspn": "757 Ci", "Cups (UK), UK cupGills, gill": "2.407 Ci", "Fluid Ounces (US), US fl ozPints, pt": "0.053 Ci", "Cups (US), US cupJiggers, jigger": "5.386 Ci", "Gallons (US), US galLiters, l": "3.785 Ci", "Quarts, qtFifths, fifth": "1.25 Ci", "Centiliters, clCups (UK), UK cup": "0.035 Ci", "Drops, DropMilliliters, ml": "0.051 Ci", "Liters, lDeciliters, dl": "10 Ci", "Cups, cupCups (UK), UK cup": "0.88 Ci", "Milliliters, mlFluid Ounces (US), US fl oz": "0.033 Ci", "Fluid Ounces (UK), UK fl ozFluid Ounces (US), US fl oz": "0.933 Ci", "Cups (UK), UK cupTeaspoons, tspn": "56.8 Ci", "Teaspoons (UK), UK tspnFluid Ounces (UK), UK fl oz": "0.125 Ci", "Tablespoons, tbspDrops, Drop": "294.118 Ci", "Cups (US), US cupGallons (UK), UK gal": "0.052 Ci", "Teaspoons, tspnGallons (UK), UK gal": "0.001 Ci", "Bushels, buCups (US), US cup": "79.861 Ci", "Cups (UK), UK cupPints (US Dry), dry US pt": "0.515 Ci", "Tablespoons (UK), UK tbspCups, cup": "0.056 ", "Centiliters, clCups (US), US cup": "0.042 Ci", "Gallons (UK), UK galFluid Ounces (UK), UK fl oz": "162.357 Ci", "Fluid Ounces (US), US fl ozGallons (US), US gal": "0.008 Ci", "Pints (US Liquid), liquid US ptPecks, peck": "0.054 Ci", "Pecks, peckLiters, l": "8.81 Ci", "Centiliters, clTablespoons (UK), UK tbsp": "0.714 Ci", "Fluid Ounces (UK), UK fl ozCentiliters, cl": "2.8 ", "Gallons (UK), UK galTeaspoons (UK), UK tspn": "1,298.857 Ci", "Teaspoons, tspnMilliliters, ml": "5 Ci", "Bushels, buDrops, Drop": "371,117.647 Ci", "Cups (Canada), Can cupCups, cup": "0.908 ", "Fluid Ounces (UK), UK fl ozMilliliters, ml": "28 Ci", "Pints (US Dry), dry US ptTeaspoons, tspn": "110.2 Ci", "Tablespoons (US), US tbspTeaspoons (US), US tspn": "3.061 Ci", "Fifths, fifthGallons (UK), UK gal": "0.167 Ci", "Liters, lMilliliters, ml": "1,000 Ci", "Pints (US Liquid), liquid US ptMilliliters, ml": "473 Ci", "Jiggers, jiggerPecks, peck": "0.005 Ci", "Pints (US Dry), dry US ptTeaspoons (US), US tspn": "112.449 Ci", "Pecks, peckCups (Canada), Can cup": "38.811 Ci", "Fifths, fifthTablespoons (UK), UK tbsp": "54.071 Ci", "Deciliters, dlTeaspoons (UK), UK tspn": "28.571 Ci", "Tablespoons (US), US tbspBushels, bu": "0.001 ", "Deciliters, dlCups, cup": "0.4 ", "Drops, DropPints (US Liquid), liquid US pt": "0 Ci", "Cups (US), US cupCups (UK), UK cup": "0.835 Ci", "Fluid Ounces (UK), UK fl ozFluid Ounces (UK), UK fl oz": "1 Ci", "Tablespoons (UK), UK tbspPints, pt": "0.025 Ci", "Centiliters, clTeaspoons, tspn": "2 Ci", "Cups (UK), UK cupQuarts, qt": "0.3 Ci", "Cups, cupLiters, l": "0.25 Ci", "Deciliters, dlGallons (UK), UK gal": "0.022 Ci", "Pints, ptCups (UK), UK cup": "2 Ci", "Tablespoons, tbspPints (US Liquid), liquid US pt": "0.032 Ci", "Drops, DropGills, gill": "0 Ci", "Centiliters, clPecks, peck": "0.001 Ci", "Tablespoons (UK), UK tbspGallons (US), US gal": "0.004 Ci", "Jiggers, jiggerGallons (UK), UK gal": "0.01 Ci", "Jiggers, jiggerDrops, Drop": "862.745 Ci", "Pints (US Dry), dry US ptPecks, peck": "0.063 Ci", "Deciliters, dlFifths, fifth": "0.132 Ci", "Pints, ptTablespoons (UK), UK tbsp": "40.571 Ci", "Milliliters, mlGallons (UK), UK gal": "0 Ci", "Deciliters, dlTablespoons (US), US tbsp": "6.667 Ci", "Gallons (US), US galTeaspoons (UK), UK tspn": "1,081.429 Ci", "Gallons (UK), UK galCentiliters, cl": "454.6 ", "Teaspoons (US), US tspnGallons (UK), UK gal": "0.001 Ci", "Gills, gillCups (US), US cup": "0.498 Ci", "Teaspoons (UK), UK tspnPecks, peck": "0 Ci", "Pints (US Liquid), liquid US ptCups, cup": "1.892 ", "Deciliters, dlJiggers, jigger": "2.273 Ci", "Pints, ptCups (US), US cup": "2.397 Ci", "Pecks, peckTablespoons, tbsp": "587.333 Ci", "Fluid Ounces (UK), UK fl ozGallons (US), US gal": "0.007 Ci", "Centiliters, clPints, pt": "0.018 Ci", "Cups (US), US cupMilliliters, ml": "237 Ci", "Cups (Canada), Can cupLiters, l": "0.227 Ci", "Fifths, fifthCups (US), US cup": "3.194 Ci", "Cups, cupPints, pt": "0.44 Ci", "Jiggers, jiggerQuarts, qt": "0.047 Ci", "Fluid Ounces (UK), UK fl ozCups (Canada), Can cup": "0.123 Ci", "Gills, gillJiggers, jigger": "2.682 Ci", "Milliliters, mlCups, cup": "0.004 ", "Bushels, buPints, pt": "33.322 Ci", "Gallons (UK), UK galLiters, l": "4.546 Ci", "Teaspoons (UK), UK tspnQuarts, qt": "0.004 Ci", "Cups (UK), UK cupTablespoons (US), US tbsp": "18.933 Ci", "Cups (UK), UK cupDeciliters, dl": "2.84 Ci", "Quarts, qtCups (US), US cup": "3.992 Ci", "Jiggers, jiggerTeaspoons (US), US tspn": "8.98 Ci", "Pints (US Dry), dry US ptDrops, Drop": "10,803.922 Ci", "Gallons (US), US galPints (US Liquid), liquid US pt": "8.002 Ci", "Centiliters, clLiters, l": "0.01 Ci", "Deciliters, dlQuarts, qt": "0.106 Ci", "Pints (US Dry), dry US ptGallons (US), US gal": "0.146 Ci", "Teaspoons (UK), UK tspnJiggers, jigger": "0.08 Ci", "Gallons (US), US galCups (UK), UK cup": "13.327 Ci", "Liters, lPints (US Dry), dry US pt": "1.815 Ci", "Cups (UK), UK cupMilliliters, ml": "284 Ci", "Fluid Ounces (US), US fl ozBushels, bu": "0.002 ", "Gills, gillFluid Ounces (US), US fl oz": "3.933 Ci", "Cups (Canada), Can cupTablespoons, tbsp": "15.133 Ci", "Pints (US Dry), dry US ptPints (US Dry), dry US pt": "1 Ci", "Bushels, buBushels, bu": "1 ", "Tablespoons, tbspCups (Canada), Can cup": "0.066 Ci", "Teaspoons (US), US tspnTeaspoons (US), US tspn": "1 Ci"]

    
    

//    init () {
//
//
//        let formatter = MeasurementFormatter()
//        formatter.unitOptions = .providedUnit
//        for itema in keys1 {
//            for itemb in keys2 {
//                let itemc = itema + itemb
//                let val1 = Measurement(value: 1.0 , unit: type(itema))
//                let val2 = val1.converted(to: type(itemb))
//                let storeval =  formatter.string(from: val2)
//                cookingdict[itemc] = storeval
//            }
//        }
//
//        print ("Final Dict :", cookingdict)
//    }
    
    
    
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
                                    Text(self.DisplayUnit1 + "  "  + env.displayconvertcook)
                                    }
                                .sheet(isPresented: $ShowUnit1) {
                                    ModalCooking(isPresented: self.$ShowUnit1, isPresented1: self.$ShowUnit1, isPresented2: self.$ShowUnit2, currentUnit1: self.$DisplayUnit1, currentUnit2: self.$DisplayUnit2)
                                }
                                    .font(.system(size: 40))
                                    .frame(width: (UIScreen.main.bounds.width - 2 * 12), height: UIScreen.main.bounds.height / 10)
                                    .foregroundColor(.white)
                                    .background(Color.gray)
                                    .cornerRadius(UIScreen.main.bounds.width - 2 * 12)
                        
                                Button(action: {
                                    self.ShowUnit2.toggle()
                                }) {
                                    //                                    Text(self.DisplayUnit2 + "  " + type(env.displayconvertacc, self.DisplayUnit1, self.DisplayUnit2))
                                    Text(self.DisplayUnit2 + "  " + calc(env.displayconvertcook, self.DisplayUnit1, self.DisplayUnit2))
                                    }
                                    .sheet(isPresented: $ShowUnit2) {
                                        ModalCooking(isPresented: self.$ShowUnit1, isPresented1: self.$ShowUnit1, isPresented2: self.$ShowUnit2, currentUnit1: self.$DisplayUnit1, currentUnit2: self.$DisplayUnit2)
                                }
                                    .font(.system(size: 40))
                                    .frame(width: (UIScreen.main.bounds.width - 2 * 12), height: UIScreen.main.bounds.height / 10)
                                    .foregroundColor(.white)
                                    .background(Color.gray)
                                    .cornerRadius(UIScreen.main.bounds.width - 2 * 12)
                    Spacer()
                    
                    
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
    
       
    private func calc(_ unit1val: String, _ unit1: String, _ unit2: String) -> String{
        let formatter = MeasurementFormatter()
        let stringval: String = unit1  +  unit2
        let storedval = (cookingdict[stringval, default: "1"])
        let operand1 = (unit1val as NSString).doubleValue
        let operand2 = (storedval as NSString).doubleValue
        return String(operand1 * operand2)
        
    }
    
    private func type(_ unit: String) -> UnitCooking {
        if unit == "Bushels, bu" {
            return UnitCooking.bushels
        }
        else if unit == "Centiliters, cl" {
            return UnitCooking.centiliters
        }
        else if unit == "Cups, cup" {
            return UnitCooking.cups
        }
        else if unit == "Cups (Canada), Can cup" {
            return UnitCooking.cancup
        }
        else if unit == "Cups (UK), UK cup" {
            return UnitCooking.ukcup
        }
        else if unit == "Cups (US), US cup" {
            return UnitCooking.uscup
        }
        else if unit == "Deciliters, dl" {
            return UnitCooking.deciliters
        }
        else if unit == "Drops, Drop" {
            return UnitCooking.drops
        }
        else if unit == "Fifths, fifth" {
            return UnitCooking.fifths
        }
        else if unit == "Fluid Ounces (UK), UK fl oz" {
            return UnitCooking.ukfloz
        }
        else if unit == "Fluid Ounces (US), US fl oz" {
            return UnitCooking.usfloz
        }
        else if unit == "Gallons (UK), UK gal" {
            return UnitCooking.ukgal
        }
        else if unit == "Gallons (US), US gal" {
            return UnitCooking.usgal
        }
        else if unit == "Gills, gill" {
            return UnitCooking.gills
        }
        else if unit == "Jiggers, jigger" {
            return UnitCooking.jigger
        }
        else if unit == "Liters, l" {
            return UnitCooking.liters
        }
        else if unit == "Milliliters, ml" {
            return UnitCooking.mliters
        }
        else if unit == "Pecks, peck" {
            return UnitCooking.pecks
        }
        else if unit == "Pints, pt" {
            return UnitCooking.pints
        }
        else if unit == "Pints (US Dry), dry US pt" {
            return UnitCooking.usdrypint
        }
        else if unit == "Pints (US Liquid), liquid US pt" {
            return UnitCooking.usliqpint
        }
        else if unit == "Quarts, qt" {
            return UnitCooking.quart
        }
        else if unit == "Tablespoons, tbsp" {
            return UnitCooking.tbsp
        }
        else if unit == "Tablespoons (UK), UK tbsp" {
            return UnitCooking.uktbsp
        }
        else if unit == "Tablespoons (US), US tbsp" {
            return UnitCooking.ustbsp
        }
        else if unit == "Teaspoons, tspn" {
            return UnitCooking.tspn
        }
        else if unit == "Teaspoons (UK), UK tspn" {
            return UnitCooking.uktspn
        }
        else if unit == "Teaspoons (US), US tspn" {
            return UnitCooking.ustspn
        }
        else {
            return UnitCooking.liters
        }
    }
}

struct Cooking_Previews: PreviewProvider {
    static var previews: some View {
        Cooking()
        .environmentObject(ViewRouter())
        .environmentObject(GlobalEnvironment())
    }
}


public final class UnitCooking: Dimension {
    
    
    static let bushels = UnitCooking(symbol: "", converter: UnitConverterLinear(coefficient: 18.927))
    static let centiliters = UnitCooking(symbol: "", converter: UnitConverterLinear(coefficient: 0.01))
    static let cups = UnitCooking(symbol: "", converter: UnitConverterLinear(coefficient: 0.25))
    static let cancup = UnitCooking(symbol: "", converter: UnitConverterLinear(coefficient: 0.227))
    static let ukcup = UnitCooking(symbol: "", converter: UnitConverterLinear(coefficient: 0.284))
    static let uscup = UnitCooking(symbol: "", converter: UnitConverterLinear(coefficient: 0.237))
    static let deciliters = UnitCooking(symbol: "", converter: UnitConverterLinear(coefficient: 0.1))
    static let drops = UnitCooking(symbol: "", converter: UnitConverterLinear(coefficient: 0.000051))
    static let fifths = UnitCooking(symbol: "", converter: UnitConverterLinear(coefficient: 0.757))
    static let ukfloz = UnitCooking(symbol: "", converter: UnitConverterLinear(coefficient: 0.028))
    static let usfloz = UnitCooking(symbol: "", converter: UnitConverterLinear(coefficient: 0.03))
    static let ukgal = UnitCooking(symbol: "", converter: UnitConverterLinear(coefficient: 4.546))
    static let usgal = UnitCooking(symbol: "", converter: UnitConverterLinear(coefficient: 3.785))
    static let gills = UnitCooking(symbol: "", converter: UnitConverterLinear(coefficient: 0.118))
    static let jigger = UnitCooking(symbol: "", converter: UnitConverterLinear(coefficient: 0.044))
    static let liters = UnitCooking(symbol: "", converter: UnitConverterLinear(coefficient: 1))
    static let mliters = UnitCooking(symbol: "", converter: UnitConverterLinear(coefficient: 0.001))
    static let pecks = UnitCooking(symbol: "", converter: UnitConverterLinear(coefficient: 8.81))
    static let pints = UnitCooking(symbol: "", converter: UnitConverterLinear(coefficient: 0.568))
    static let usdrypint = UnitCooking(symbol: "", converter: UnitConverterLinear(coefficient: 0.551))
    static let usliqpint = UnitCooking(symbol: "", converter: UnitConverterLinear(coefficient: 0.473))
    static let quart = UnitCooking(symbol: "", converter: UnitConverterLinear(coefficient: 0.946))
    static let tbsp = UnitCooking(symbol: "", converter: UnitConverterLinear(coefficient: 0.015))
    static let uktbsp = UnitCooking(symbol: "", converter: UnitConverterLinear(coefficient: 0.014))
    static let ustbsp = UnitCooking(symbol: "", converter: UnitConverterLinear(coefficient: 0.015))
    static let tspn = UnitCooking(symbol: "", converter: UnitConverterLinear(coefficient: 0.005))
    static let uktspn = UnitCooking(symbol: "", converter: UnitConverterLinear(coefficient: 0.0035))
    static let ustspn = UnitCooking(symbol: "", converter: UnitConverterLinear(coefficient: 0.0049))
    
    public override class func baseUnit() -> UnitCooking {
        return liters
    }
}


