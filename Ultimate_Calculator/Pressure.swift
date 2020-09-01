//
//  Pressure.swift
//  Ultimate_Calculator
//
//  Created by Hritik Raj on 8/14/20.
//  Copyright © 2020 Hritik Raj. All rights reserved.
//

import SwiftUI

struct Pressure: View {
        @State var ShowUnit1 = false
        @State var ShowUnit2 = false
        @State var DisplayUnit1 = "Angle"
        @State var DisplayUnit2 = "Angle"
        @EnvironmentObject var viewRouter: ViewRouter
        @EnvironmentObject var env: GlobalEnvironment
    
    
    var pressuredict : [String : String] = ["Centimeters of Mercury, cmHgCentimeters of Water, cmH2O": "13.595 cmH2O", "Kilograms/Square Centimeter, kg/cm²Centimeters of Mercury, cmHg": "73.556 cmHg", "Atmospheres, atmCentimeters of Water, cmH2O": "0.01 cmH2O", "Hectopascal, hPaMillimeters of Mercury, mmHg": "0.75 mmHg", "Hectobar, hbarMeganewton/Meter², MN/m²": "10 MN/m²", "Kilograms/Square Meter, kg/m²Torr, Torr": "0.074 Torr", "Pascals, PaPascals, Pa": "1 Pa", "Inches of Mercury, inHgPascals, Pa": "3,386.39 Pa", "Inches of Water, inH2OKilograms/Square Centimeter, kg/cm²": "0.003 kg/cm²", "Pounds/Square Foot, psfMillimeters of Mercury, mmHg": "0.359 mmHg", "Kilograms/Square Meter, kg/m²Kilograms/Square Meter, kg/m²": "1 kg/m²", "Kilonewton/Square Centimeter, kN/cm²Newton/Millimeter², N/mm²": "10 N/mm²", "Hectopascal, hPaTorr, Torr": "0.75 Torr", "Inches of Water, inH2OMegapascal, Mpa": "0 MPa", "Kilograms/Square Meter, kg/m²Pascals, Pa": "9.81 Pa", "Bars, bPascals, Pa": "100,000 Pa", "Meganewton/Meter², MN/m²Inches of Mercury, inHg": "295.3 inHg", "Kilopascal, kPaMeganewton/Meter², MN/m²": "0.001 MN/m²", "Newton/Millimeter², N/mm²Kilograms/Square Meter, kg/m²": "101,936.799 kg/m²", "Kilograms/Square Meter, kg/m²Meganewton/Meter², MN/m²": "0 MN/m²", "Kilonewton/Square Centimeter, kN/cm²Inches of Mercury, inHg": "2,952.997 inHg", "Millibar, mBarCentimeters of Mercury, cmHg": "0.075 cmHg", "Inches of Mercury, inHgCentimeters of Mercury, cmHg": "2.54 cmHg", "Centimeters of Mercury, cmHgInches of Water, inH2O": "5.358 inH2O", "Newton/Millimeter², N/mm²Centimeters of Water, cmH2O": "10,197.162 cmH2O", "Kilonewton/Square Centimeter, kN/cm²Meganewton/Meter², MN/m²": "10 MN/m²", "Pounds/Square Inch, psiKilograms/Square Centimeter, kg/cm²": "0.07 kg/cm²", "Torr, TorrKilograms/Square Centimeter, kg/cm²": "0.001 kg/cm²", "Torr, TorrKilograms/Square Meter, kg/m²": "13.59 kg/m²", "Bars, bKilonewton/Square Centimeter, kN/cm²": "0.01 kN/cm²", "Bars, bHectobar, hbar": "0.01 hbar", "Centimeters of Water, cmH2OBars, b": "0.001 bar", "Torr, TorrNewton/Meter², N/m²": "133.32 N/m²", "Kilograms/Square Centimeter, kg/cm²Hectobar, hbar": "0.01 hbar", "Pounds/Square Inch, psiKilopascal, kPa": "6.895 kPa", "Atmospheres, atmAtmospheres, atm": "1 N/m²", "Megapascal, MpaKilograms/Square Centimeter, kg/cm²": "10.197 kg/cm²", "Pascals, PaBars, b": "0 bar", "Megapascal, MpaNewton/Meter², N/m²": "1,000,000 N/m²", "Hectopascal, hPaKilopascal, kPa": "0.1 kPa", "Meganewton/Meter², MN/m²Pounds/Square Inch, psi": "145.038 psi", "Kilopascal, kPaPounds/Square Inch, psi": "0.145 psi", "Kilonewton/Square Centimeter, kN/cm²Kilograms/Square Centimeter, kg/cm²": "101.972 kg/cm²", "Centimeters of Water, cmH2OTorr, Torr": "0.736 Torr", "Millibar, mBarHectopascal, hPa": "1 hPa", "Kilopascal, kPaMegapascal, Mpa": "0.001 MPa", "Kilonewton/Square Centimeter, kN/cm²Pascals, Pa": "10,000,000 Pa", "Hectobar, hbarCentimeters of Mercury, cmHg": "7,500.638 cmHg", "Hectopascal, hPaKilograms/Square Centimeter, kg/cm²": "0.001 kg/cm²", "Kilograms/Square Meter, kg/m²Pounds/Square Foot, psf": "0.205 psf", "Pascals, PaCentimeters of Water, cmH2O": "0.01 cmH2O", "Millimeters of Mercury, mmHgPounds/Square Foot, psf": "2.785 psf", "Millibar, mBarPounds/Square Foot, psf": "2.089 psf", "Megapascal, MpaNewton/Millimeter², N/mm²": "1 N/mm²", "Kilograms/Square Centimeter, kg/cm²Inches of Water, inH2O": "394.095 inH2O", "Inches of Water, inH2ONewton/Meter², N/m²": "248.84 N/m²", "Newton/Meter², N/m²Hectobar, hbar": "0 hbar", "Hectobar, hbarHectopascal, hPa": "100,000 hPa", "Inches of Mercury, inHgInches of Water, inH2O": "13.609 inH2O", "Kilonewton/Square Centimeter, kN/cm²Millimeters of Mercury, mmHg": "75,006.376 mmHg", "Kilonewton/Square Centimeter, kN/cm²Kilonewton/Square Centimeter, kN/cm²": "1 kN/cm²", "Bars, bPounds/Square Foot, psf": "2,088.555 psf", "Newton/Millimeter², N/mm²Bars, b": "10 bar", "Atmospheres, atmTorr, Torr": "0.008 Torr", "Meganewton/Meter², MN/m²Centimeters of Mercury, cmHg": "750.064 cmHg", "Centimeters of Water, cmH2ONewton/Meter², N/m²": "98.066 N/m²", "Centimeters of Mercury, cmHgAtmospheres, atm": "1,333.22 N/m²", "Torr, TorrHectopascal, hPa": "1.333 hPa", "Pounds/Square Inch, psiCentimeters of Water, cmH2O": "70.307 cmH2O", "Newton/Meter², N/m²Torr, Torr": "0.008 Torr", "Kilonewton/Square Centimeter, kN/cm²Centimeters of Water, cmH2O": "101,971.621 cmH2O", "Newton/Millimeter², N/mm²Kilograms/Square Centimeter, kg/cm²": "10.197 kg/cm²", "Meganewton/Meter², MN/m²Hectobar, hbar": "0.1 hbar", "Inches of Mercury, inHgNewton/Meter², N/m²": "3,386.39 N/m²", "Megapascal, MpaMillibar, mBar": "10,000 mbar", "Pascals, PaMegapascal, Mpa": "0 MPa", "Kilograms/Square Centimeter, kg/cm²Millimeters of Mercury, mmHg": "735.561 mmHg", "Centimeters of Water, cmH2OKilograms/Square Meter, kg/m²": "9.997 kg/m²", "Inches of Mercury, inHgCentimeters of Water, cmH2O": "34.532 cmH2O", "Megapascal, MpaKilonewton/Square Centimeter, kN/cm²": "0.1 kN/cm²", "Kilograms/Square Centimeter, kg/cm²Inches of Mercury, inHg": "28.959 inHg", "Megapascal, MpaPascals, Pa": "1,000,000 Pa", "Meganewton/Meter², MN/m²Centimeters of Water, cmH2O": "10,197.162 cmH2O", "Pounds/Square Foot, psfKilograms/Square Centimeter, kg/cm²": "0 kg/cm²", "Torr, TorrNewton/Millimeter², N/mm²": "0 N/mm²", "Megapascal, MpaAtmospheres, atm": "1,000,000 N/m²", "Inches of Mercury, inHgAtmospheres, atm": "3,386.39 N/m²", "Inches of Water, inH2OCentimeters of Water, cmH2O": "2.537 cmH2O", "Inches of Water, inH2OKilonewton/Square Centimeter, kN/cm²": "0 kN/cm²", "Millimeters of Mercury, mmHgHectopascal, hPa": "1.333 hPa", "Centimeters of Mercury, cmHgNewton/Meter², N/m²": "1,333.22 N/m²", "Pascals, PaKilonewton/Square Centimeter, kN/cm²": "0 kN/cm²", "Torr, TorrPounds/Square Inch, psi": "0.019 psi", "Pounds/Square Inch, psiPounds/Square Inch, psi": "1 psi", "Atmospheres, atmNewton/Meter², N/m²": "1 N/m²", "Kilograms/Square Meter, kg/m²Inches of Water, inH2O": "0.039 inH2O", "Meganewton/Meter², MN/m²Kilopascal, kPa": "1,000 kPa", "Newton/Millimeter², N/mm²Meganewton/Meter², MN/m²": "1 MN/m²", "Hectobar, hbarKilograms/Square Centimeter, kg/cm²": "101.972 kg/cm²", "Newton/Meter², N/m²Newton/Meter², N/m²": "1 N/m²", "Millimeters of Mercury, mmHgKilograms/Square Meter, kg/m²": "13.59 kg/m²", "Kilonewton/Square Centimeter, kN/cm²Atmospheres, atm": "10,000,000 N/m²", "Millimeters of Mercury, mmHgKilograms/Square Centimeter, kg/cm²": "0.001 kg/cm²", "Kilograms/Square Centimeter, kg/cm²Kilopascal, kPa": "98.066 kPa", "Inches of Water, inH2OInches of Water, inH2O": "1 inH2O", "Inches of Mercury, inHgBars, b": "0.034 bar", "Kilograms/Square Centimeter, kg/cm²Newton/Millimeter², N/mm²": "0.098 N/mm²", "Centimeters of Water, cmH2OInches of Water, inH2O": "0.394 inH2O", "Millimeters of Mercury, mmHgBars, b": "0.001 bar", "Millimeters of Mercury, mmHgMillibar, mBar": "1.333 mbar", "Inches of Mercury, inHgMeganewton/Meter², MN/m²": "0.003 MN/m²", "Hectopascal, hPaNewton/Meter², N/m²": "100 N/m²", "Bars, bMillimeters of Mercury, mmHg": "750.064 mmHg", "Torr, TorrKilopascal, kPa": "0.133 kPa", "Newton/Meter², N/m²Centimeters of Mercury, cmHg": "0.001 cmHg", "Millibar, mBarKilopascal, kPa": "0.1 kPa", "Kilopascal, kPaPascals, Pa": "1,000 Pa", "Hectobar, hbarMegapascal, Mpa": "10 MPa", "Pascals, PaKilopascal, kPa": "0.001 kPa", "Millimeters of Mercury, mmHgKilopascal, kPa": "0.133 kPa", "Meganewton/Meter², MN/m²Newton/Meter², N/m²": "1,000,000 N/m²", "Pounds/Square Foot, psfPounds/Square Inch, psi": "0.007 psi", "Torr, TorrInches of Water, inH2O": "0.536 inH2O", "Meganewton/Meter², MN/m²Torr, Torr": "7,500.75 Torr", "Hectobar, hbarKilonewton/Square Centimeter, kN/cm²": "1 kN/cm²", "Kilonewton/Square Centimeter, kN/cm²Kilograms/Square Meter, kg/m²": "1,019,367.992 kg/m²", "Kilonewton/Square Centimeter, kN/cm²Inches of Water, inH2O": "40,186.465 inH2O", "Millimeters of Mercury, mmHgNewton/Millimeter², N/mm²": "0 N/mm²", "Centimeters of Mercury, cmHgPounds/Square Inch, psi": "0.193 psi", "Kilograms/Square Meter, kg/m²Millibar, mBar": "0.098 mbar", "Bars, bKilograms/Square Meter, kg/m²": "10,193.68 kg/m²", "Megapascal, MpaCentimeters of Mercury, cmHg": "750.064 cmHg", "Kilopascal, kPaNewton/Meter², N/m²": "1,000 N/m²", "Millibar, mBarTorr, Torr": "0.75 Torr", "Hectobar, hbarCentimeters of Water, cmH2O": "101,971.621 cmH2O", "Newton/Millimeter², N/mm²Millibar, mBar": "10,000 mbar", "Kilograms/Square Centimeter, kg/cm²Centimeters of Water, cmH2O": "1,000 cmH2O", "Inches of Mercury, inHgKilograms/Square Centimeter, kg/cm²": "0.035 kg/cm²", "Bars, bKilopascal, kPa": "100 kPa", "Meganewton/Meter², MN/m²Hectopascal, hPa": "10,000 hPa", "Kilograms/Square Centimeter, kg/cm²Megapascal, Mpa": "0.098 MPa", "Pascals, PaCentimeters of Mercury, cmHg": "0.001 cmHg", "Hectobar, hbarKilopascal, kPa": "10,000 kPa", "Torr, TorrPounds/Square Foot, psf": "2.784 psf", "Millibar, mBarInches of Water, inH2O": "0.402 inH2O", "Centimeters of Mercury, cmHgKilograms/Square Centimeter, kg/cm²": "0.014 kg/cm²", "Centimeters of Water, cmH2OKilopascal, kPa": "0.098 kPa", "Millibar, mBarNewton/Millimeter², N/mm²": "0 N/mm²", "Pounds/Square Foot, psfKilograms/Square Meter, kg/m²": "4.881 kg/m²", "Kilograms/Square Meter, kg/m²Kilograms/Square Centimeter, kg/cm²": "0 kg/cm²", "Hectobar, hbarPounds/Square Foot, psf": "208,855.472 psf", "Kilograms/Square Centimeter, kg/cm²Pascals, Pa": "98,066.5 Pa", "Millibar, mBarBars, b": "0.001 bar", "Newton/Millimeter², N/mm²Hectopascal, hPa": "10,000 hPa", "Millimeters of Mercury, mmHgMegapascal, Mpa": "0 MPa", "Megapascal, MpaCentimeters of Water, cmH2O": "10,197.162 cmH2O", "Centimeters of Mercury, cmHgPascals, Pa": "1,333.22 Pa", "Pascals, PaKilograms/Square Centimeter, kg/cm²": "0 kg/cm²", "Pascals, PaHectobar, hbar": "0 hbar", "Torr, TorrAtmospheres, atm": "133.32 N/m²", "Megapascal, MpaHectopascal, hPa": "10,000 hPa", "Pounds/Square Inch, psiMillimeters of Mercury, mmHg": "51.715 mmHg", "Pounds/Square Foot, psfHectobar, hbar": "0 hbar", "Millimeters of Mercury, mmHgPounds/Square Inch, psi": "0.019 psi", "Kilonewton/Square Centimeter, kN/cm²Hectopascal, hPa": "100,000 hPa", "Newton/Meter², N/m²Millibar, mBar": "0.01 mbar", "Kilograms/Square Centimeter, kg/cm²Bars, b": "0.981 bar", "Newton/Millimeter², N/mm²Centimeters of Mercury, cmHg": "750.064 cmHg", "Atmospheres, atmBars, b": "0 bar", "Bars, bKilograms/Square Centimeter, kg/cm²": "1.02 kg/cm²", "Centimeters of Mercury, cmHgKilonewton/Square Centimeter, kN/cm²": "0 kN/cm²", "Pounds/Square Inch, psiTorr, Torr": "51.716 Torr", "Kilograms/Square Centimeter, kg/cm²Pounds/Square Foot, psf": "2,048.173 psf", "Atmospheres, atmKilograms/Square Centimeter, kg/cm²": "0 kg/cm²", "Hectobar, hbarInches of Water, inH2O": "40,186.465 inH2O", "Hectobar, hbarTorr, Torr": "75,007.501 Torr", "Megapascal, MpaTorr, Torr": "7,500.75 Torr", "Millibar, mBarKilonewton/Square Centimeter, kN/cm²": "0 kN/cm²", "Meganewton/Meter², MN/m²Kilonewton/Square Centimeter, kN/cm²": "0.1 kN/cm²", "Pounds/Square Foot, psfHectopascal, hPa": "0.479 hPa", "Centimeters of Mercury, cmHgKilopascal, kPa": "1.333 kPa", "Centimeters of Water, cmH2OAtmospheres, atm": "98.066 N/m²", "Inches of Water, inH2OCentimeters of Mercury, cmHg": "0.187 cmHg", "Centimeters of Mercury, cmHgCentimeters of Mercury, cmHg": "1 cmHg", "Meganewton/Meter², MN/m²Newton/Millimeter², N/mm²": "1 N/mm²", "Meganewton/Meter², MN/m²Pascals, Pa": "1,000,000 Pa", "Millimeters of Mercury, mmHgCentimeters of Water, cmH2O": "1.36 cmH2O", "Megapascal, MpaHectobar, hbar": "0.1 hbar", "Centimeters of Mercury, cmHgHectobar, hbar": "0 hbar", "Hectobar, hbarKilograms/Square Meter, kg/m²": "1,019,367.992 kg/m²", "Newton/Millimeter², N/mm²Kilonewton/Square Centimeter, kN/cm²": "0.1 kN/cm²", "Atmospheres, atmInches of Mercury, inHg": "0 inHg", "Bars, bMillibar, mBar": "1,000 mbar", "Inches of Water, inH2OAtmospheres, atm": "248.84 N/m²", "Centimeters of Mercury, cmHgPounds/Square Foot, psf": "27.845 psf", "Newton/Millimeter², N/mm²Millimeters of Mercury, mmHg": "7,500.638 mmHg", "Newton/Millimeter², N/mm²Megapascal, Mpa": "1 MPa", "Pounds/Square Inch, psiInches of Water, inH2O": "27.708 inH2O", "Atmospheres, atmPounds/Square Inch, psi": "0 psi", "Newton/Meter², N/m²Kilograms/Square Centimeter, kg/cm²": "0 kg/cm²", "Kilopascal, kPaTorr, Torr": "7.501 Torr", "Kilopascal, kPaPounds/Square Foot, psf": "20.886 psf", "Hectopascal, hPaBars, b": "0.001 bar", "Atmospheres, atmKilopascal, kPa": "0.001 kPa", "Newton/Millimeter², N/mm²Inches of Water, inH2O": "4,018.647 inH2O", "Kilograms/Square Centimeter, kg/cm²Kilonewton/Square Centimeter, kN/cm²": "0.01 kN/cm²", "Hectopascal, hPaPascals, Pa": "100 Pa", "Inches of Water, inH2OInches of Mercury, inHg": "0.073 inHg", "Hectopascal, hPaKilograms/Square Meter, kg/m²": "10.194 kg/m²", "Newton/Millimeter², N/mm²Inches of Mercury, inHg": "295.3 inHg", "Kilograms/Square Meter, kg/m²Newton/Meter², N/m²": "9.81 N/m²", "Millimeters of Mercury, mmHgMillimeters of Mercury, mmHg": "1 mmHg", "Torr, TorrCentimeters of Mercury, cmHg": "0.1 cmHg", "Inches of Water, inH2OKilopascal, kPa": "0.249 kPa", "Newton/Millimeter², N/mm²Newton/Meter², N/m²": "1,000,000 N/m²", "Torr, TorrKilonewton/Square Centimeter, kN/cm²": "0 kN/cm²", "Hectopascal, hPaMillibar, mBar": "1 mbar", "Millimeters of Mercury, mmHgCentimeters of Mercury, cmHg": "0.1 cmHg", "Megapascal, MpaPounds/Square Foot, psf": "20,885.547 psf", "Pounds/Square Foot, psfBars, b": "0 bar", "Kilopascal, kPaKilograms/Square Meter, kg/m²": "101.937 kg/m²", "Inches of Mercury, inHgInches of Mercury, inHg": "1 inHg", "Meganewton/Meter², MN/m²Meganewton/Meter², MN/m²": "1 MN/m²", "Pounds/Square Foot, psfCentimeters of Water, cmH2O": "0.488 cmH2O", "Pounds/Square Inch, psiHectopascal, hPa": "68.948 hPa", "Newton/Millimeter², N/mm²Kilopascal, kPa": "1,000 kPa", "Kilopascal, kPaNewton/Millimeter², N/mm²": "0.001 N/mm²", "Pounds/Square Inch, psiKilonewton/Square Centimeter, kN/cm²": "0.001 kN/cm²", "Kilograms/Square Centimeter, kg/cm²Pounds/Square Inch, psi": "14.223 psi", "Newton/Meter², N/m²Pascals, Pa": "1 Pa", "Kilograms/Square Meter, kg/m²Inches of Mercury, inHg": "0.003 inHg", "Kilonewton/Square Centimeter, kN/cm²Newton/Meter², N/m²": "10,000,000 N/m²", "Newton/Meter², N/m²Kilograms/Square Meter, kg/m²": "0.102 kg/m²", "Millibar, mBarNewton/Meter², N/m²": "100 N/m²", "Kilograms/Square Meter, kg/m²Atmospheres, atm": "9.81 N/m²", "Pounds/Square Inch, psiMeganewton/Meter², MN/m²": "0.007 MN/m²", "Bars, bTorr, Torr": "750.075 Torr", "Hectopascal, hPaInches of Water, inH2O": "0.402 inH2O", "Millimeters of Mercury, mmHgNewton/Meter², N/m²": "133.322 N/m²", "Hectopascal, hPaCentimeters of Water, cmH2O": "1.02 cmH2O", "Torr, TorrMillibar, mBar": "1.333 mbar", "Newton/Millimeter², N/mm²Atmospheres, atm": "1,000,000 N/m²", "Newton/Meter², N/m²Meganewton/Meter², MN/m²": "0 MN/m²", "Pounds/Square Foot, psfPounds/Square Foot, psf": "1 psf", "Newton/Meter², N/m²Pounds/Square Inch, psi": "0 psi", "Centimeters of Mercury, cmHgMillibar, mBar": "13.332 mbar", "Centimeters of Water, cmH2OHectobar, hbar": "0 hbar", "Millibar, mBarMeganewton/Meter², MN/m²": "0 MN/m²", "Hectobar, hbarNewton/Millimeter², N/mm²": "10 N/mm²", "Pounds/Square Foot, psfMillibar, mBar": "0.479 mbar", "Pounds/Square Foot, psfNewton/Meter², N/m²": "47.88 N/m²", "Pounds/Square Foot, psfInches of Mercury, inHg": "0.014 inHg", "Hectopascal, hPaCentimeters of Mercury, cmHg": "0.075 cmHg", "Bars, bAtmospheres, atm": "100,000 N/m²", "Inches of Mercury, inHgTorr, Torr": "25.4 Torr", "Kilonewton/Square Centimeter, kN/cm²Hectobar, hbar": "1 hbar", "Meganewton/Meter², MN/m²Atmospheres, atm": "1,000,000 N/m²", "Pounds/Square Foot, psfMeganewton/Meter², MN/m²": "0 MN/m²", "Pascals, PaInches of Mercury, inHg": "0 inHg", "Pounds/Square Inch, psiMegapascal, Mpa": "0.007 MPa", "Centimeters of Water, cmH2OMegapascal, Mpa": "0 MPa", "Pounds/Square Foot, psfKilopascal, kPa": "0.048 kPa", "Millimeters of Mercury, mmHgAtmospheres, atm": "133.322 N/m²", "Kilograms/Square Meter, kg/m²Centimeters of Water, cmH2O": "0.1 cmH2O", "Centimeters of Water, cmH2OKilonewton/Square Centimeter, kN/cm²": "0 kN/cm²", "Pounds/Square Inch, psiKilograms/Square Meter, kg/m²": "702.83 kg/m²", "Megapascal, MpaInches of Mercury, inHg": "295.3 inHg", "Millibar, mBarInches of Mercury, inHg": "0.03 inHg", "Centimeters of Water, cmH2OCentimeters of Mercury, cmHg": "0.074 cmHg", "Centimeters of Water, cmH2OMillibar, mBar": "0.981 mbar", "Centimeters of Water, cmH2OPascals, Pa": "98.066 Pa", "Kilonewton/Square Centimeter, kN/cm²Pounds/Square Inch, psi": "1,450.377 psi", "Millimeters of Mercury, mmHgMeganewton/Meter², MN/m²": "0 MN/m²", "Pascals, PaPounds/Square Inch, psi": "0 psi", "Pascals, PaMeganewton/Meter², MN/m²": "0 MN/m²", "Kilopascal, kPaKilopascal, kPa": "1 kPa", "Bars, bNewton/Millimeter², N/mm²": "0.1 N/mm²", "Kilopascal, kPaInches of Mercury, inHg": "0.295 inHg", "Pounds/Square Foot, psfAtmospheres, atm": "47.88 N/m²", "Pounds/Square Foot, psfMegapascal, Mpa": "0 MPa", "Pounds/Square Inch, psiPounds/Square Foot, psf": "144.001 psf", "Kilopascal, kPaHectopascal, hPa": "10 hPa", "Kilograms/Square Meter, kg/m²Bars, b": "0 bar", "Pascals, PaMillibar, mBar": "0.01 mbar", "Millibar, mBarAtmospheres, atm": "100 N/m²", "Newton/Millimeter², N/mm²Hectobar, hbar": "0.1 hbar", "Millimeters of Mercury, mmHgInches of Water, inH2O": "0.536 inH2O", "Hectobar, hbarMillimeters of Mercury, mmHg": "75,006.376 mmHg", "Pascals, PaNewton/Meter², N/m²": "1 N/m²", "Newton/Meter², N/m²Hectopascal, hPa": "0.01 hPa", "Inches of Water, inH2OHectobar, hbar": "0 hbar", "Atmospheres, atmKilonewton/Square Centimeter, kN/cm²": "0 kN/cm²", "Atmospheres, atmInches of Water, inH2O": "0.004 inH2O", "Kilograms/Square Meter, kg/m²Pounds/Square Inch, psi": "0.001 psi", "Centimeters of Water, cmH2OHectopascal, hPa": "0.981 hPa", "Pounds/Square Inch, psiNewton/Millimeter², N/mm²": "0.007 N/mm²", "Millimeters of Mercury, mmHgKilonewton/Square Centimeter, kN/cm²": "0 kN/cm²", "Pounds/Square Inch, psiHectobar, hbar": "0.001 hbar", "Bars, bCentimeters of Water, cmH2O": "1,019.716 cmH2O", "Hectobar, hbarMillibar, mBar": "100,000 mbar", "Hectopascal, hPaNewton/Millimeter², N/mm²": "0 N/mm²", "Centimeters of Mercury, cmHgMeganewton/Meter², MN/m²": "0.001 MN/m²", "Megapascal, MpaInches of Water, inH2O": "4,018.647 inH2O", "Kilonewton/Square Centimeter, kN/cm²Pounds/Square Foot, psf": "208,855.472 psf", "Atmospheres, atmMillibar, mBar": "0.01 mbar", "Millibar, mBarCentimeters of Water, cmH2O": "1.02 cmH2O", "Millimeters of Mercury, mmHgTorr, Torr": "1 Torr", "Bars, bNewton/Meter², N/m²": "100,000 N/m²", "Kilograms/Square Centimeter, kg/cm²Kilograms/Square Meter, kg/m²": "9,996.585 kg/m²", "Pounds/Square Inch, psiInches of Mercury, inHg": "2.036 inHg", "Centimeters of Water, cmH2OKilograms/Square Centimeter, kg/cm²": "0.001 kg/cm²", "Kilonewton/Square Centimeter, kN/cm²Bars, b": "100 bar", "Newton/Meter², N/m²Newton/Millimeter², N/mm²": "0 N/mm²", "Kilopascal, kPaMillimeters of Mercury, mmHg": "7.501 mmHg", "Bars, bBars, b": "1 bar", "Hectobar, hbarAtmospheres, atm": "10,000,000 N/m²", "Megapascal, MpaKilopascal, kPa": "1,000 kPa", "Pascals, PaHectopascal, hPa": "0.01 hPa", "Meganewton/Meter², MN/m²Kilograms/Square Centimeter, kg/cm²": "10.197 kg/cm²", "Torr, TorrInches of Mercury, inHg": "0.039 inHg", "Hectobar, hbarNewton/Meter², N/m²": "10,000,000 N/m²", "Kilograms/Square Centimeter, kg/cm²Hectopascal, hPa": "980.665 hPa", "Bars, bMegapascal, Mpa": "0.1 MPa", "Kilograms/Square Centimeter, kg/cm²Torr, Torr": "735.572 Torr", "Atmospheres, atmMegapascal, Mpa": "0 MPa", "Pounds/Square Foot, psfTorr, Torr": "0.359 Torr", "Meganewton/Meter², MN/m²Megapascal, Mpa": "1 MPa", "Hectobar, hbarBars, b": "100 bar", "Kilopascal, kPaAtmospheres, atm": "1,000 N/m²", "Hectopascal, hPaInches of Mercury, inHg": "0.03 inHg", "Newton/Meter², N/m²Centimeters of Water, cmH2O": "0.01 cmH2O", "Centimeters of Water, cmH2OPounds/Square Foot, psf": "2.048 psf", "Inches of Water, inH2OKilograms/Square Meter, kg/m²": "25.366 kg/m²", "Inches of Mercury, inHgKilopascal, kPa": "3.386 kPa", "Pascals, PaAtmospheres, atm": "1 N/m²", "Kilograms/Square Centimeter, kg/cm²Atmospheres, atm": "98,066.5 N/m²", "Pounds/Square Foot, psfNewton/Millimeter², N/mm²": "0 N/mm²", "Millibar, mBarKilograms/Square Centimeter, kg/cm²": "0.001 kg/cm²", "Newton/Meter², N/m²Bars, b": "0 bar", "Millimeters of Mercury, mmHgInches of Mercury, inHg": "0.039 inHg", "Pascals, PaPounds/Square Foot, psf": "0.021 psf", "Millimeters of Mercury, mmHgPascals, Pa": "133.322 Pa", "Kilonewton/Square Centimeter, kN/cm²Megapascal, Mpa": "10 MPa", "Bars, bInches of Water, inH2O": "401.865 inH2O", "Inches of Water, inH2ONewton/Millimeter², N/mm²": "0 N/mm²", "Hectobar, hbarHectobar, hbar": "1 hbar", "Atmospheres, atmPounds/Square Foot, psf": "0.021 psf", "Centimeters of Water, cmH2OMeganewton/Meter², MN/m²": "0 MN/m²", "Millibar, mBarMegapascal, Mpa": "0 MPa", "Kilograms/Square Meter, kg/m²Newton/Millimeter², N/mm²": "0 N/mm²", "Hectopascal, hPaPounds/Square Inch, psi": "0.015 psi", "Pounds/Square Inch, psiBars, b": "0.069 bar", "Meganewton/Meter², MN/m²Kilograms/Square Meter, kg/m²": "101,936.799 kg/m²", "Newton/Meter², N/m²Kilopascal, kPa": "0.001 kPa", "Kilograms/Square Centimeter, kg/cm²Meganewton/Meter², MN/m²": "0.098 MN/m²", "Millibar, mBarPascals, Pa": "100 Pa", "Kilograms/Square Centimeter, kg/cm²Kilograms/Square Centimeter, kg/cm²": "1 kg/cm²", "Pascals, PaKilograms/Square Meter, kg/m²": "0.102 kg/m²", "Centimeters of Water, cmH2OPounds/Square Inch, psi": "0.014 psi", "Centimeters of Water, cmH2OCentimeters of Water, cmH2O": "1 cmH2O", "Centimeters of Mercury, cmHgMillimeters of Mercury, mmHg": "10 mmHg", "Pascals, PaNewton/Millimeter², N/mm²": "0 N/mm²", "Newton/Meter², N/m²Inches of Mercury, inHg": "0 inHg", "Inches of Mercury, inHgMillibar, mBar": "33.864 mbar", "Hectopascal, hPaHectobar, hbar": "0 hbar", "Kilopascal, kPaKilonewton/Square Centimeter, kN/cm²": "0 kN/cm²", "Kilograms/Square Meter, kg/m²Millimeters of Mercury, mmHg": "0.074 mmHg", "Torr, TorrBars, b": "0.001 bar", "Hectobar, hbarPounds/Square Inch, psi": "1,450.377 psi", "Meganewton/Meter², MN/m²Bars, b": "10 bar", "Torr, TorrTorr, Torr": "1 Torr", "Kilograms/Square Meter, kg/m²Kilopascal, kPa": "0.01 kPa", "Atmospheres, atmKilograms/Square Meter, kg/m²": "0.102 kg/m²", "Kilopascal, kPaCentimeters of Mercury, cmHg": "0.75 cmHg", "Pascals, PaTorr, Torr": "0.008 Torr", "Inches of Water, inH2OMillibar, mBar": "2.488 mbar", "Millibar, mBarMillibar, mBar": "1 mbar", "Atmospheres, atmCentimeters of Mercury, cmHg": "0.001 cmHg", "Kilonewton/Square Centimeter, kN/cm²Centimeters of Mercury, cmHg": "7,500.638 cmHg", "Inches of Mercury, inHgMegapascal, Mpa": "0.003 MPa", "Hectobar, hbarPascals, Pa": "10,000,000 Pa", "Atmospheres, atmMeganewton/Meter², MN/m²": "0 MN/m²", "Centimeters of Mercury, cmHgMegapascal, Mpa": "0.001 MPa", "Centimeters of Mercury, cmHgBars, b": "0.013 bar", "Newton/Meter², N/m²Kilonewton/Square Centimeter, kN/cm²": "0 kN/cm²", "Inches of Mercury, inHgPounds/Square Inch, psi": "0.491 psi", "Millimeters of Mercury, mmHgHectobar, hbar": "0 hbar", "Kilograms/Square Meter, kg/m²Megapascal, Mpa": "0 MPa", "Kilopascal, kPaMillibar, mBar": "10 mbar", "Atmospheres, atmNewton/Millimeter², N/mm²": "0 N/mm²", "Kilopascal, kPaHectobar, hbar": "0 hbar", "Atmospheres, atmMillimeters of Mercury, mmHg": "0.008 mmHg", "Megapascal, MpaMegapascal, Mpa": "1 MPa", "Centimeters of Mercury, cmHgNewton/Millimeter², N/mm²": "0.001 N/mm²", "Kilonewton/Square Centimeter, kN/cm²Kilopascal, kPa": "10,000 kPa", "Inches of Mercury, inHgNewton/Millimeter², N/mm²": "0.003 N/mm²", "Torr, TorrCentimeters of Water, cmH2O": "1.359 cmH2O", "Inches of Water, inH2OMeganewton/Meter², MN/m²": "0 MN/m²", "Hectobar, hbarInches of Mercury, inHg": "2,952.997 inHg", "Kilonewton/Square Centimeter, kN/cm²Millibar, mBar": "100,000 mbar", "Inches of Water, inH2OPounds/Square Inch, psi": "0.036 psi", "Kilonewton/Square Centimeter, kN/cm²Torr, Torr": "75,007.501 Torr", "Inches of Mercury, inHgMillimeters of Mercury, mmHg": "25.4 mmHg", "Megapascal, MpaMeganewton/Meter², MN/m²": "1 MN/m²", "Meganewton/Meter², MN/m²Pounds/Square Foot, psf": "20,885.547 psf", "Newton/Millimeter², N/mm²Torr, Torr": "7,500.75 Torr", "Hectopascal, hPaHectopascal, hPa": "1 hPa", "Kilograms/Square Meter, kg/m²Hectopascal, hPa": "0.098 hPa", "Pounds/Square Inch, psiNewton/Meter², N/m²": "6,894.76 N/m²", "Atmospheres, atmHectobar, hbar": "0 hbar", "Kilopascal, kPaKilograms/Square Centimeter, kg/cm²": "0.01 kg/cm²", "Hectopascal, hPaAtmospheres, atm": "100 N/m²", "Kilograms/Square Centimeter, kg/cm²Newton/Meter², N/m²": "98,066.5 N/m²", "Newton/Millimeter², N/mm²Pounds/Square Foot, psf": "20,885.547 psf", "Hectopascal, hPaMeganewton/Meter², MN/m²": "0 MN/m²", "Meganewton/Meter², MN/m²Millimeters of Mercury, mmHg": "7,500.638 mmHg", "Bars, bPounds/Square Inch, psi": "14.504 psi", "Kilograms/Square Centimeter, kg/cm²Millibar, mBar": "980.665 mbar", "Millibar, mBarMillimeters of Mercury, mmHg": "0.75 mmHg", "Hectopascal, hPaKilonewton/Square Centimeter, kN/cm²": "0 kN/cm²", "Atmospheres, atmHectopascal, hPa": "0.01 hPa", "Inches of Mercury, inHgHectobar, hbar": "0 hbar", "Inches of Water, inH2OPascals, Pa": "248.84 Pa", "Pounds/Square Foot, psfPascals, Pa": "47.88 Pa", "Pounds/Square Inch, psiPascals, Pa": "6,894.76 Pa", "Centimeters of Mercury, cmHgHectopascal, hPa": "13.332 hPa", "Millibar, mBarKilograms/Square Meter, kg/m²": "10.194 kg/m²", "Inches of Mercury, inHgPounds/Square Foot, psf": "70.727 psf", "Torr, TorrMegapascal, Mpa": "0 MPa", "Millibar, mBarPounds/Square Inch, psi": "0.015 psi", "Torr, TorrPascals, Pa": "133.32 Pa", "Pascals, PaInches of Water, inH2O": "0.004 inH2O", "Pounds/Square Foot, psfInches of Water, inH2O": "0.192 inH2O", "Newton/Millimeter², N/mm²Pounds/Square Inch, psi": "145.038 psi", "Kilopascal, kPaBars, b": "0.01 bar", "Kilograms/Square Meter, kg/m²Hectobar, hbar": "0 hbar", "Centimeters of Water, cmH2OInches of Mercury, inHg": "0.029 inHg", "Megapascal, MpaKilograms/Square Meter, kg/m²": "101,936.799 kg/m²", "Newton/Meter², N/m²Atmospheres, atm": "1 N/m²", "Millibar, mBarHectobar, hbar": "0 hbar", "Torr, TorrMillimeters of Mercury, mmHg": "1 mmHg", "Inches of Mercury, inHgHectopascal, hPa": "33.864 hPa", "Pounds/Square Inch, psiCentimeters of Mercury, cmHg": "5.172 cmHg", "Inches of Mercury, inHgKilograms/Square Meter, kg/m²": "345.198 kg/m²", "Meganewton/Meter², MN/m²Inches of Water, inH2O": "4,018.647 inH2O", "Centimeters of Mercury, cmHgInches of Mercury, inHg": "0.394 inHg", "Torr, TorrHectobar, hbar": "0 hbar", "Kilopascal, kPaInches of Water, inH2O": "4.019 inH2O", "Bars, bHectopascal, hPa": "1,000 hPa", "Pascals, PaMillimeters of Mercury, mmHg": "0.008 mmHg", "Kilograms/Square Meter, kg/m²Centimeters of Mercury, cmHg": "0.007 cmHg", "Pounds/Square Inch, psiMillibar, mBar": "68.948 mbar", "Hectopascal, hPaMegapascal, Mpa": "0 MPa", "Bars, bMeganewton/Meter², MN/m²": "0.1 MN/m²", "Megapascal, MpaPounds/Square Inch, psi": "145.038 psi", "Bars, bInches of Mercury, inHg": "29.53 inHg", "Centimeters of Water, cmH2ONewton/Millimeter², N/mm²": "0 N/mm²", "Newton/Millimeter², N/mm²Newton/Millimeter², N/mm²": "1 N/mm²", "Pounds/Square Foot, psfCentimeters of Mercury, cmHg": "0.036 cmHg", "Bars, bCentimeters of Mercury, cmHg": "75.006 cmHg", "Inches of Water, inH2OTorr, Torr": "1.866 Torr", "Pounds/Square Foot, psfKilonewton/Square Centimeter, kN/cm²": "0 kN/cm²", "Newton/Meter², N/m²Inches of Water, inH2O": "0.004 inH2O", "Megapascal, MpaBars, b": "10 bar", "Inches of Water, inH2OHectopascal, hPa": "2.488 hPa", "Hectopascal, hPaPounds/Square Foot, psf": "2.089 psf", "Megapascal, MpaMillimeters of Mercury, mmHg": "7,500.638 mmHg", "Meganewton/Meter², MN/m²Millibar, mBar": "10,000 mbar", "Newton/Meter², N/m²Megapascal, Mpa": "0 MPa", "Torr, TorrMeganewton/Meter², MN/m²": "0 MN/m²", "Inches of Water, inH2OMillimeters of Mercury, mmHg": "1.866 mmHg", "Kilograms/Square Meter, kg/m²Kilonewton/Square Centimeter, kN/cm²": "0 kN/cm²", "Newton/Meter², N/m²Millimeters of Mercury, mmHg": "0.008 mmHg", "Inches of Water, inH2OPounds/Square Foot, psf": "5.197 psf", "Centimeters of Mercury, cmHgTorr, Torr": "10 Torr", "Inches of Mercury, inHgKilonewton/Square Centimeter, kN/cm²": "0 kN/cm²", "Inches of Water, inH2OBars, b": "0.002 bar", "Newton/Millimeter², N/mm²Pascals, Pa": "1,000,000 Pa", "Atmospheres, atmPascals, Pa": "1 Pa", "Newton/Meter², N/m²Pounds/Square Foot, psf": "0.021 psf", "Kilopascal, kPaCentimeters of Water, cmH2O": "10.197 cmH2O", "Pounds/Square Inch, psiAtmospheres, atm": "6,894.76 N/m²", "Centimeters of Water, cmH2OMillimeters of Mercury, mmHg": "0.736 mmHg", "Centimeters of Mercury, cmHgKilograms/Square Meter, kg/m²": "135.904 kg/m²"]

    
//        var jointdict : [String : UnitPressure] = [:]
//    
//        let keys1 =
//            ["Atmospheres, atm", "Bars, b", "Centimeters of Mercury, cmHg", "Centimeters of Water, cmH2O", "Hectobar, hbar", "Hectopascal, hPa", "Inches of Mercury, inHg", "Inches of Water, inH2O", "Kilograms/Square Centimeter, kg/cm²", "Kilograms/Square Meter, kg/m²", "Kilonewton/Square Centimeter, kN/cm²", "Kilopascal, kPa", "Meganewton/Meter², MN/m²", "Megapascal, Mpa", "Millibar, mBar", "Millimeters of Mercury, mmHg", "Newton/Millimeter², N/mm²", "Pascals, Pa", "Pounds/Square Foot, psf", "Pounds/Square Inch, psi", "Torr, Torr", "Newton/Meter², N/m²"]
//        let keys2 =
//            ["Atmospheres, atm", "Bars, b", "Centimeters of Mercury, cmHg", "Centimeters of Water, cmH2O", "Hectobar, hbar", "Hectopascal, hPa", "Inches of Mercury, inHg", "Inches of Water, inH2O", "Kilograms/Square Centimeter, kg/cm²", "Kilograms/Square Meter, kg/m²", "Kilonewton/Square Centimeter, kN/cm²", "Kilopascal, kPa", "Meganewton/Meter², MN/m²", "Megapascal, Mpa", "Millibar, mBar", "Millimeters of Mercury, mmHg", "Newton/Millimeter², N/mm²", "Pascals, Pa", "Pounds/Square Foot, psf", "Pounds/Square Inch, psi", "Torr, Torr", "Newton/Meter², N/m²"]
//    
//        
//                                        init () {
//    
//                                            for i in 1..<pressurearray.count {
//                                                jointdict[pressurearray[i]] = array2[i]
//                                            }
//    
//    
//                                            let formatter = MeasurementFormatter()
//                                            formatter.unitOptions = .providedUnit
//                                            for itema in keys1 {
//                                                for itemb in keys2 {
//                                                    let itemc = itema + itemb
//                                                    let val1 = Measurement(value: 1.0 , unit: jointdict[itema] ?? UnitPressure.newtonsPerMetersSquared)
//                                                    let val2 = val1.converted(to: jointdict[itemb] ?? UnitPressure.newtonsPerMetersSquared)
//                                                    let storeval =  formatter.string(from: val2)
//                                                    pressuredict[itemc] = storeval
//                                                }
//                                            }
//    
//                                            print ("Final Dict  power:", pressuredict)
//                                        }
        
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
                                    Text(self.DisplayUnit1 + "  "  + env.displayconvertpress)
                                    }
                                .sheet(isPresented: $ShowUnit1) {
                                    ModalPressure(isPresented: self.$ShowUnit1, isPresented1: self.$ShowUnit1, isPresented2: self.$ShowUnit2, currentUnit1: self.$DisplayUnit1, currentUnit2: self.$DisplayUnit2)
                                }
                                    .font(.system(size: 40))
                                    .frame(width: (UIScreen.main.bounds.width - 2 * 12), height: UIScreen.main.bounds.height / 10)
                                    .foregroundColor(.white)
                                    .background(Color.gray)
                                    .cornerRadius(UIScreen.main.bounds.width - 2 * 12)
                        
                                Button(action: {
                                    self.ShowUnit2.toggle()
                                }) {
                                                                        Text(self.DisplayUnit2 + "  " + calc(env.displayconvertpress, self.DisplayUnit1, self.DisplayUnit2))
//                                    Text(self.DisplayUnit2 + "  ")
                                    }
                                    .sheet(isPresented: $ShowUnit2) {
                                        ModalPressure(isPresented: self.$ShowUnit1, isPresented1: self.$ShowUnit1, isPresented2: self.$ShowUnit2, currentUnit1: self.$DisplayUnit1, currentUnit2: self.$DisplayUnit2)
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
    
    private func calc(_ unit1val: String, _ unit1: String, _ unit2: String) -> String{
        let formatter = MeasurementFormatter()
        let stringval: String = unit1  +  unit2
        let storedval = (pressuredict[stringval, default: "1"])
        let operand1 = (unit1val as NSString).doubleValue
        let operand2 = (storedval as NSString).doubleValue
        return String(operand1 * operand2)
        
    }
    
    let pressurearray =
        ["Atmospheres, atm", "Bars, b", "Centimeters of Mercury, cmHg", "Centimeters of Water, cmH2O", "Hectobar, hbar", "Hectopascal, hPa", "Inches of Mercury, inHg", "Inches of Water, inH2O", "Kilograms/Square Centimeter, kg/cm²", "Kilograms/Square Meter, kg/m²", "Kilonewton/Square Centimeter, kN/cm²", "Kilopascal, kPa", "Meganewton/Meter², MN/m²", "Megapascal, Mpa", "Millibar, mBar", "Millimeters of Mercury, mmHg", "Newton/Millimeter², N/mm²", "Pascals, Pa", "Pounds/Square Foot, psf", "Pounds/Square Inch, psi", "Torr, Torr", "Newton/Meter², N/m²"]
    
    let array2 = [UnitPressure.atmospheres, UnitPressure.bars, UnitPressure.centimetersOfMercury, UnitPressure.centimetersOfWater, UnitPressure.hectobar, UnitPressure.hectopascals, UnitPressure.inchesOfMercury, UnitPressure.inchesOfWater, UnitPressure.kg_cmsq, UnitPressure.kg_metersq, UnitPressure.kilonewton_cmsq, UnitPressure.kilopascals, UnitPressure.meganewton_metersq, UnitPressure.megapascals, UnitPressure.millibars, UnitPressure.millimetersOfMercury, UnitPressure.newtons_mmsq, UnitPressure.pascals, UnitPressure.poundsPerSquareFoot, UnitPressure.poundsForcePerSquareInch, UnitPressure.torr, UnitPressure.newtonsPerMetersSquared]
}

struct Pressure_Previews: PreviewProvider {
    static var previews: some View {
        Pressure()
        .environmentObject(ViewRouter())
        .environmentObject(GlobalEnvironment())
    }
}




extension UnitPressure {
 static let atmospheres = UnitPressure(symbol: "atm", converter: UnitConverterLinear(coefficient: 101325))
 static let centimetersOfMercury = UnitPressure(symbol: "cmHg", converter: UnitConverterLinear(coefficient: 1333.22))
 static let centimetersOfWater = UnitPressure(symbol: "cmH2O", converter: UnitConverterLinear(coefficient: 98.0665))
 static let hectobar = UnitPressure(symbol: "hbar", converter: UnitConverterLinear(coefficient: 10000000))
 static let inchesOfWater = UnitPressure(symbol: "inH2O", converter: UnitConverterLinear(coefficient: 248.84))
 static let kg_cmsq = UnitPressure(symbol: "kg/cm²", converter: UnitConverterLinear(coefficient: 98066.5))
 static let kg_metersq = UnitPressure(symbol: "kg/m²", converter: UnitConverterLinear(coefficient: 9.81))
 static let kilonewton_cmsq = UnitPressure(symbol: "kN/cm²", converter: UnitConverterLinear(coefficient: 10000000))
 static let meganewton_metersq = UnitPressure(symbol: "MN/m²", converter: UnitConverterLinear(coefficient: 1000000))
 static let newtons_mmsq = UnitPressure(symbol: "N/mm²", converter: UnitConverterLinear(coefficient: 1000000))
 static let pascals = UnitPressure(symbol: "Pa", converter: UnitConverterLinear(coefficient: 1))
 static let poundsPerSquareFoot = UnitPressure(symbol: "psf", converter: UnitConverterLinear(coefficient: 47.88))
 static let torr = UnitPressure(symbol: "Torr", converter: UnitConverterLinear(coefficient: 133.32))
}
