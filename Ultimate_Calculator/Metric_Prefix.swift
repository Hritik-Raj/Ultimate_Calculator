//
//  Metric_Prefix.swift
//  Ultimate_Calculator
//
//  Created by Hritik Raj on 8/14/20.
//  Copyright © 2020 Hritik Raj. All rights reserved.
//

import SwiftUI

struct Metric_Prefix: View {
        @State var ShowUnit1 = false
        @State var ShowUnit2 = false
        @State var DisplayUnit1 = "Angle"
        @State var DisplayUnit2 = "Angle"
        @EnvironmentObject var viewRouter: ViewRouter
        @EnvironmentObject var env: GlobalEnvironment
    
    var metricdict : [String : String] = ["Acto, aYotta, Y": "0 ", "One, OneTera, T": "0 ", "Peta, PCenti, c": "0 ", "Mega, MMega, M": "1 ", "Exa, EYotta, Y": "0 ", "Femto, fDeci, d": "0 ", "Nano, nFemto, f": "1,000,000 ", "Femto, fZetta, Z": "0 ", "Pico, pYotta, Y": "0 ", "Hecto, hYocto, y": "100,000,000,000,000,000,000,000,000 ", "Yotta, YZetta, Z": "1,000 ", "Centi, cMega, M": "0 ", "One, OneExa, E": "0 ", "Yotta, YDeca, da": "100,000,000,000,000,000,000,000 ", "Nano, nYotta, Y": "0 ", "Yocto, yCenti, c": "0 ", "Deci, dCenti, c": "10 ", "Nano, nDeci, d": "0 ", "Giga, GYotta, Y": "0 ", "Yocto, yHecto, h": "0 ", "Pico, pGiga, G": "0 ", "Femto, fYocto, y": "1,000,000,000 ", "Deci, dTera, T": "0 ", "Micro, μPeta, P": "1,000,000 ", "Deca, daNano, n": "10,000,000,000 ", "Yocto, yNano, n": "0 ", "Milli, mFemto, f": "1,000,000,000,000 ", "Peta, PPeta, P": "1 ", "Deci, dHecto, h": "0.001 ", "Deci, dKilo, k": "0 ", "One, OneOne, One": "1 ", "Deca, daYotta, Y": "0 ", "Tera, TKilo, k": "1,000,000,000 ", "Pico, pDeci, d": "0 ", "Yotta, YTera, T": "1,000,000,000,000 ", "Yocto, yTera, T": "0 ", "Zepta, zExa, E": "1,000 ", "One, OneYocto, y": "1,000,000,000,000,000,100,000,000 ", "Yocto, yDeci, d": "0 ", "Peta, POne, One": "0 ", "Zetta, ZYotta, Y": "0.001 ", "Yocto, yGiga, G": "0 ", "Pico, pYocto, y": "1,000,000,000,000 ", "Pico, pKilo, k": "0 ", "Nano, nPico, p": "1,000 ", "Kilo, kActo, a": "1,000 ", "Deca, daMicro, μ": "10,000,000 ", "Giga, GYocto, y": "1,000,000,000,000,000,100,000,000,000,000,000 ", "Pico, pOne, One": "0 ", "One, OneMilli, m": "1,000 ", "Centi, cNano, n": "10,000,000 ", "Zepta, zFemto, f": "999,999,999,999,999,900,000,000,000,000,000,000 ", "Zetta, ZCenti, c": "100,000,000,000,000,000,000,000 ", "Femto, fPico, p": "0.001 ", "Zetta, ZOne, One": "1,000,000,000,000,000,000,000 ", "Micro, μOne, One": "0 ", "Zetta, ZTera, T": "1,000,000,000 ", "Mega, MMicro, μ": "1,000,000,000,000 ", "Femto, fMega, M": "0 ", "Hecto, hFemto, f": "100,000,000,000,000,000 ", "Deci, dYotta, Y": "0 ", "Deci, dMilli, m": "100 ", "Exa, EFemto, f": "1,000,000,000,000,000,000,000,000,000,000,000 ", "Exa, EMilli, m": "1,000,000,000,000,000,000,000 ", "Milli, mDeci, d": "0.01 ", "One, OneGiga, G": "0 ", "One, OnePeta, P": "1,000,000,000,000 ", "Tera, TYotta, Y": "0 ", "Femto, fCenti, c": "0 ", "Micro, μPico, p": "1,000,000 ", "Nano, nDeca, da": "0 ", "Yocto, yPeta, P": "0 ", "Kilo, kPico, p": "1,000,000,000,000,000 ", "One, OneYotta, Y": "0 ", "Exa, ENano, n": "999,999,999,999,999,900,000,000,000 ", "One, OneMicro, μ": "1,000,000 ", "Pico, pPeta, P": "1 ", "Giga, GNano, n": "1,000,000,000,000,000,000 ", "Exa, EPico, p": "1,000,000,000,000,000,000,000,000,000,000 ", "Deca, daActo, a": "10 ", "Acto, aZepta, z": "0 ", "Nano, nMicro, μ": "0.001 ", "Nano, nOne, One": "0 ", "Exa, EPeta, P": "1,000,000,000,000,000,000,000,000,000,000 ", "Kilo, kDeca, da": "100 ", "Giga, GZetta, Z": "0 ", "Zetta, ZMega, M": "1,000,000,000,000,000 ", "Micro, μZepta, z": "0 ", "Hecto, hPico, p": "100,000,000,000,000 ", "Hecto, hPeta, P": "100,000,000,000,000 ", "Tera, TMicro, μ": "1,000,000,000,000,000,000 ", "Kilo, kZetta, Z": "0 ", "Acto, aMicro, μ": "1,000,000 ", "Giga, GFemto, f": "1,000,000,000,000,000,000,000,000 ", "Kilo, kMicro, μ": "1,000,000,000 ", "Tera, TMega, M": "1,000,000 ", "Micro, μTera, T": "0 ", "Centi, cFemto, f": "10,000,000,000,000 ", "Zepta, zHecto, h": "10,000,000,000,000,000,000 ", "Deca, daDeci, d": "100 ", "Centi, cActo, a": "0.01 ", "Hecto, hHecto, h": "1 ", "Nano, nExa, E": "0 ", "Deci, dActo, a": "0.1 ", "Acto, aFemto, f": "999,999,999,999,999.9 ", "Hecto, hKilo, k": "0.1 ", "Giga, GActo, a": "1,000,000,000 ", "Peta, PFemto, f": "1,000 ", "Zetta, ZKilo, k": "1,000,000,000,000,000,000 ", "Exa, EHecto, h": "10,000,000,000,000,000 ", "Deci, dPico, p": "100,000,000,000 ", "Deci, dPeta, P": "100,000,000,000 ", "Milli, mZetta, Z": "0 ", "Zetta, ZGiga, G": "1,000,000,000,000 ", "Kilo, kFemto, f": "999,999,999,999,999,900 ", "Mega, MPico, p": "1,000,000,000,000,000,000 ", "Zepta, zOne, One": "1,000,000,000,000,000,000,000 ", "Mega, MTera, T": "0 ", "Peta, PHecto, h": "0 ", "Zetta, ZMilli, m": "1,000,000,000,000,000,000,000,000 ", "Peta, PYocto, y": "1,000,000,000,000 ", "Acto, aGiga, G": "0 ", "Zepta, zKilo, k": "1,000,000,000,000,000,000 ", "Exa, EOne, One": "1,000,000,000,000,000,000 ", "Tera, TGiga, G": "1,000 ", "One, OneHecto, h": "0.01 ", "Femto, fOne, One": "0 ", "Femto, fExa, E": "0 ", "Milli, mHecto, h": "0 ", "Hecto, hExa, E": "0 ", "Micro, μGiga, G": "0 ", "Yotta, YOne, One": "1,000,000,000,000,000,000,000,000 ", "Zetta, ZDeci, d": "10,000,000,000,000,000,000,000 ", "Deci, dMega, M": "0 ", "Hecto, hZepta, z": "0 ", "Mega, MPeta, P": "1,000,000,000,000,000,000 ", "Micro, μActo, a": "0 ", "Zepta, zMilli, m": "1,000,000,000,000,000,000,000,000 ", "Femto, fTera, T": "0 ", "Exa, EZetta, Z": "0.001 ", "Giga, GHecto, h": "10,000,000 ", "Micro, μYocto, y": "1,000,000,000,000,000,000 ", "Pico, pZetta, Z": "0 ", "Tera, TZetta, Z": "0 ", "Giga, GDeca, da": "100,000,000 ", "Yocto, yOne, One": "0 ", "One, OneZepta, z": "0 ", "Peta, PZetta, Z": "0 ", "Yocto, yYocto, y": "1 ", "Peta, PPico, p": "1 ", "Peta, PNano, n": "0.001 ", "Femto, fZepta, z": "0 ", "Exa, EDeci, d": "10,000,000,000,000,000,000 ", "Deca, daKilo, k": "0.01 ", "Acto, aDeci, d": "10 ", "Deca, daDeca, da": "1 ", "Milli, mOne, One": "0.001 ", "Exa, EZepta, z": "0.001 ", "Kilo, kKilo, k": "1 ", "Kilo, kZepta, z": "0 ", "Hecto, hDeca, da": "10 ", "One, OneFemto, f": "999,999,999,999,999.9 ", "Zepta, zYotta, Y": "0.001 ", "Mega, MOne, One": "1,000,000 ", "Deca, daHecto, h": "0.1 ", "Pico, pActo, a": "0 ", "Acto, aExa, E": "0 ", "Acto, aPeta, P": "1,000,000,000,000 ", "One, OneMega, M": "0 ", "Yocto, yMilli, m": "0 ", "Centi, cPico, p": "10,000,000,000 ", "Centi, cDeca, da": "0.001 ", "Yocto, yDeca, da": "0 ", "Yotta, YYocto, y": "1,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000,000 ", "Mega, MDeci, d": "10,000,000 ", "Kilo, kDeci, d": "10,000 ", "Zepta, zDeca, da": "100,000,000,000,000,000,000 ", "Zetta, ZDeca, da": "100,000,000,000,000,000,000 ", "Mega, MZetta, Z": "0 ", "Kilo, kOne, One": "1,000 ", "Mega, MCenti, c": "100,000,000 ", "Nano, nKilo, k": "0 ", "Femto, fGiga, G": "0 ", "Yotta, YFemto, f": "1,000,000,000,000,000,000,000,000,000,000,000,000,000 ", "Yotta, YNano, n": "1,000,000,000,000,000,000,000,000,000,000,000 ", "Yotta, YCenti, c": "100,000,000,000,000,000,000,000,000 ", "Deca, daFemto, f": "10,000,000,000,000,000 ", "Centi, cZepta, z": "0 ", "Femto, fFemto, f": "1 ", "Exa, EMega, M": "1,000,000,000,000 ", "Nano, nNano, n": "1 ", "Giga, GPico, p": "1,000,000,000,000,000,000,000 ", "Yotta, YMilli, m": "1,000,000,000,000,000,000,000,000,000 ", "Mega, MNano, n": "1,000,000,000,000,000 ", "Micro, μFemto, f": "1,000,000,000 ", "Micro, μNano, n": "1,000 ", "Giga, GMicro, μ": "1,000,000,000,000,000 ", "Yocto, yMega, M": "0 ", "Giga, GCenti, c": "100,000,000,000 ", "Hecto, hYotta, Y": "0 ", "Yotta, YHecto, h": "10,000,000,000,000,000,000,000 ", "Yocto, yActo, a": "0 ", "Hecto, hDeci, d": "1,000 ", "Tera, TActo, a": "1,000,000,000,000 ", "Peta, PMicro, μ": "0 ", "One, OneCenti, c": "100 ", "Hecto, hMicro, μ": "100,000,000 ", "Exa, EDeca, da": "100,000,000,000,000,000 ", "Hecto, hNano, n": "100,000,000,000 ", "Giga, GTera, T": "0.001 ", "Nano, nMega, M": "0 ", "Tera, TOne, One": "1,000,000,000,000 ", "Centi, cKilo, k": "0 ", "Hecto, hMega, M": "0 ", "Zepta, zYocto, y": "1,000,000,000,000,000,100,000,000,000,000,000,000,000,000,000 ", "Centi, cOne, One": "0.01 ", "Zepta, zZetta, Z": "1 ", "Nano, nActo, a": "0 ", "Zetta, ZHecto, h": "10,000,000,000,000,000,000 ", "Exa, EExa, E": "1 ", "Zetta, ZPico, p": "1,000,000,000,000,000,100,000,000,000,000,000 ", "Tera, TTera, T": "1 ", "Milli, mPeta, P": "1,000,000,000 ", "Zepta, zPico, p": "1,000,000,000,000,000,100,000,000,000,000,000 ", "Kilo, kPeta, P": "1,000,000,000,000,000 ", "Milli, mYotta, Y": "0 ", "Micro, μCenti, c": "0 ", "Zepta, zCenti, c": "100,000,000,000,000,000,000,000 ", "Femto, fPeta, P": "0.001 ", "Zepta, zMicro, μ": "1,000,000,000,000,000,000,000,000,000 ", "Tera, TExa, E": "0 ", "Peta, PMega, M": "0 ", "Hecto, hMilli, m": "100,000 ", "Mega, MMilli, m": "1,000,000,000 ", "Micro, μMega, M": "0 ", "Zepta, zNano, n": "999,999,999,999,999,900,000,000,000,000 ", "Zetta, ZYocto, y": "1,000,000,000,000,000,100,000,000,000,000,000,000,000,000,000 ", "Yotta, YYotta, Y": "1 ", "Centi, cGiga, G": "0 ", "Mega, MDeca, da": "100,000 ", "Nano, nGiga, G": "0 ", "Zepta, zZepta, z": "1 ", "Zetta, ZExa, E": "1,000 ", "Acto, aYocto, y": "1,000,000,000,000,000,100,000,000 ", "Milli, mZepta, z": "0 ", "Mega, MGiga, G": "0.001 ", "Micro, μDeci, d": "0 ", "Zepta, zActo, a": "1,000,000,000,000,000,000,000 ", "Giga, GGiga, G": "1 ", "Zetta, ZPeta, P": "1,000,000,000,000,000,100,000,000,000,000,000 ", "Mega, MFemto, f": "999,999,999,999,999,900,000 ", "Femto, fMilli, m": "0 ", "Milli, mPico, p": "1,000,000,000 ", "Acto, aDeca, da": "0.1 ", "Peta, PTera, T": "0 ", "Deca, daZetta, Z": "0 ", "Kilo, kExa, E": "0 ", "Deca, daCenti, c": "1,000 ", "Exa, EYocto, y": "1,000,000,000,000,000,000,000,000,000,000,000,000,000,000 ", "Pico, pZepta, z": "0 ", "Yocto, yExa, E": "0 ", "Exa, ECenti, c": "100,000,000,000,000,000,000 ", "One, OneDeca, da": "0.1 ", "Deci, dDeci, d": "1 ", "Tera, TDeca, da": "100,000,000,000 ", "Kilo, kYocto, y": "1,000,000,000,000,000,000,000,000,000 ", "Centi, cYotta, Y": "0 ", "Yocto, yZetta, Z": "0 ", "Zetta, ZZetta, Z": "1 ", "Kilo, kHecto, h": "10 ", "Micro, μMicro, μ": "1 ", "Peta, PActo, a": "0 ", "Nano, nMilli, m": "0 ", "Pico, pDeca, da": "0 ", "Femto, fKilo, k": "0 ", "Peta, PZepta, z": "0 ", "Pico, pNano, n": "0.001 ", "Deca, daPico, p": "10,000,000,000,000 ", "Tera, TZepta, z": "0 ", "Femto, fHecto, h": "0 ", "Centi, cMilli, m": "10 ", "Pico, pHecto, h": "0 ", "One, OneKilo, k": "0.001 ", "Milli, mMega, M": "0 ", "Deca, daGiga, G": "0 ", "Acto, aPico, p": "1,000,000,000,000 ", "Giga, GPeta, P": "1,000,000,000,000,000,000,000 ", "Femto, fNano, n": "0 ", "Pico, pPico, p": "1 ", "Kilo, kGiga, G": "0 ", "Milli, mTera, T": "0 ", "Peta, PYotta, Y": "0 ", "Micro, μMilli, m": "0.001 ", "Centi, cZetta, Z": "0 ", "Yotta, YMega, M": "1,000,000,000,000,000,000 ", "Milli, mExa, E": "0 ", "Giga, GKilo, k": "1,000,000 ", "Yocto, yZepta, z": "0 ", "Micro, μZetta, Z": "0 ", "Centi, cMicro, μ": "10,000 ", "Femto, fDeca, da": "0 ", "Pico, pMega, M": "0 ", "Yocto, yYotta, Y": "0 ", "One, OneZetta, Z": "0 ", "Peta, PDeci, d": "0 ", "Giga, GZepta, z": "0 ", "One, OneDeci, d": "10 ", "Hecto, hZetta, Z": "0 ", "Zepta, zMega, M": "1,000,000,000,000,000 ", "Yocto, yMicro, μ": "0 ", "Tera, TPico, p": "1,000,000,000,000,000,000,000,000 ", "Pico, pExa, E": "0 ", "Exa, EActo, a": "1,000,000,000,000,000,000 ", "Milli, mActo, a": "0.001 ", "Acto, aKilo, k": "0.001 ", "Micro, μKilo, k": "0 ", "Centi, cCenti, c": "1 ", "Zepta, zTera, T": "1,000,000,000 ", "Peta, PDeca, da": "0 ", "Kilo, kTera, T": "0 ", "Nano, nPeta, P": "1,000 ", "Giga, GOne, One": "1,000,000,000 ", "Yocto, yKilo, k": "0 ", "Deca, daOne, One": "10 ", "Acto, aOne, One": "1 ", "Deci, dZepta, z": "0 ", "Acto, aNano, n": "1,000,000,000 ", "Deci, dDeca, da": "0.01 ", "Acto, aZetta, Z": "0 ", "Acto, aActo, a": "1 ", "Deci, dFemto, f": "100,000,000,000,000 ", "One, OnePico, p": "1,000,000,000,000 ", "Exa, EMicro, μ": "1,000,000,000,000,000,000,000,000 ", "Zetta, ZZepta, z": "1 ", "Deci, dOne, One": "0.1 ", "Milli, mNano, n": "1,000,000 ", "Centi, cExa, E": "0 ", "Hecto, hGiga, G": "0 ", "Hecto, hTera, T": "0 ", "Milli, mCenti, c": "0.1 ", "Pico, pFemto, f": "1,000 ", "Deca, daMilli, m": "10,000 ", "Pico, pCenti, c": "0 ", "Micro, μDeca, da": "0 ", "Milli, mKilo, k": "0 ", "Centi, cPeta, P": "10,000,000,000 ", "Giga, GDeci, d": "10,000,000,000 ", "Mega, MActo, a": "1,000,000 ", "Centi, cYocto, y": "10,000,000,000,000,000,000,000 ", "Milli, mGiga, G": "0 ", "Milli, mYocto, y": "1,000,000,000,000,000,100,000 ", "Deci, dMicro, μ": "100,000 ", "Deca, daZepta, z": "0 ", "Nano, nZetta, Z": "0 ", "Kilo, kNano, n": "1,000,000,000,000 ", "One, OneNano, n": "1,000,000,000 ", "Deci, dExa, E": "0 ", "Deci, dGiga, G": "0 ", "Exa, EGiga, G": "1,000,000,000 ", "Exa, EKilo, k": "1,000,000,000,000,000 ", "Pico, pTera, T": "0 ", "Deci, dZetta, Z": "0 ", "Deca, daTera, T": "0 ", "Centi, cTera, T": "0 ", "Tera, TNano, n": "1,000,000,000,000,000,000,000 ", "Zetta, ZNano, n": "999,999,999,999,999,900,000,000,000,000 ", "Hecto, hCenti, c": "10,000 ", "Mega, MExa, E": "0 ", "Kilo, kCenti, c": "100,000 ", "Zepta, zPeta, P": "1,000,000,000,000,000,100,000,000,000,000,000 ", "Zepta, zGiga, G": "1,000,000,000,000 ", "Nano, nYocto, y": "1,000,000,000,000,000.1 ", "Tera, TFemto, f": "999,999,999,999,999,900,000,000,000 ", "Peta, PExa, E": "0 ", "Mega, MYocto, y": "1,000,000,000,000,000,000,000,000,000,000 ", "Yotta, YExa, E": "1,000,000 ", "Yotta, YKilo, k": "1,000,000,000,000,000,000,000 ", "Hecto, hActo, a": "100 ", "Peta, PKilo, k": "0 ", "Mega, MZepta, z": "0 ", "Centi, cHecto, h": "0 ", "Milli, mDeca, da": "0 ", "Nano, nZepta, z": "0 ", "Acto, aMega, M": "0 ", "Hecto, hOne, One": "100 ", "Femto, fActo, a": "0 ", "Mega, MKilo, k": "1,000 ", "Deca, daYocto, y": "10,000,000,000,000,000,000,000,000 ", "Centi, cDeci, d": "0.1 ", "Nano, nHecto, h": "0 ", "Milli, mMilli, m": "1 ", "Yotta, YPeta, P": "1,000,000,000,000,000,000,000,000,000,000,000,000 ", "Yotta, YZepta, z": "1,000 ", "Deca, daPeta, P": "10,000,000,000,000 ", "Tera, THecto, h": "10,000,000,000 ", "Zetta, ZActo, a": "1,000,000,000,000,000,000,000 ", "Zetta, ZFemto, f": "999,999,999,999,999,900,000,000,000,000,000,000 ", "Femto, fYotta, Y": "0 ", "Mega, MHecto, h": "10,000 ", "Micro, μHecto, h": "0 ", "Acto, aHecto, h": "0.01 ", "Tera, TYocto, y": "1,000,000,000,000,000,000,000,000,000,000,000,000 ", "Yotta, YActo, a": "1,000,000,000,000,000,000,000,000 ", "Pico, pMicro, μ": "0 ", "Tera, TCenti, c": "100,000,000,000,000 ", "Nano, nTera, T": "0 ", "Mega, MYotta, Y": "0 ", "Milli, mMicro, μ": "1,000 ", "Yotta, YDeci, d": "9,999,999,999,999,999,000,000,000 ", "Tera, TDeci, d": "10,000,000,000,000 ", "Zepta, zDeci, d": "10,000,000,000,000,000,000,000 ", "Deca, daExa, E": "0 ", "Tera, TPeta, P": "1,000,000,000,000,000,000,000,000 ", "Kilo, kMega, M": "0.001 ", "Nano, nCenti, c": "0 ", "Femto, fMicro, μ": "0 ", "Exa, ETera, T": "1,000,000 ", "Yotta, YPico, p": "1,000,000,000,000,000,000,000,000,000,000,000,000 ", "Giga, GExa, E": "0 ", "Giga, GMega, M": "1,000 ", "One, OneActo, a": "1 ", "Peta, PGiga, G": "0 ", "Kilo, kMilli, m": "1,000,000 ", "Acto, aTera, T": "0 ", "Pico, pMilli, m": "0 ", "Acto, aMilli, m": "1,000 ", "Yotta, YMicro, μ": "1,000,000,000,000,000,000,000,000,000,000 ", "Deci, dNano, n": "100,000,000 ", "Micro, μExa, E": "0 ", "Peta, PMilli, m": "0 ", "Deca, daMega, M": "0 ", "Yocto, yFemto, f": "0 ", "Kilo, kYotta, Y": "0 ", "Zetta, ZMicro, μ": "1,000,000,000,000,000,000,000,000,000 ", "Acto, aCenti, c": "100 ", "Tera, TMilli, m": "1,000,000,000,000,000 ", "Micro, μYotta, Y": "0 ", "Deci, dYocto, y": "100,000,000,000,000,010,000,000 ", "Yocto, yPico, p": "0 ", "Giga, GMilli, m": "1,000,000,000,000 ", "Yotta, YGiga, G": "1,000,000,000,000,000 "]

    var jointdict : [String : UnitMetric] = [:]
//
//    let keys1 =
//    ["Acto, a", "Centi, c", "Deca, da", "Deci, d", "Exa, E", "Femto, f", "Giga, G", "Hecto, h", "Kilo, k", "Mega, M", "Micro, μ", "Milli, m", "Nano, n", "One, One", "Peta, P", "Pico, p", "Tera, T", "Yocto, y", "Yotta, Y", "Zepta, z", "Zetta, Z"]
//
//    let keys2 =
//    ["Acto, a", "Centi, c", "Deca, da", "Deci, d",  "Exa, E", "Femto, f", "Giga, G", "Hecto, h", "Kilo, k", "Mega, M", "Micro, μ", "Milli, m", "Nano, n", "One, One", "Peta, P", "Pico, p", "Tera, T", "Yocto, y", "Yotta, Y", "Zepta, z", "Zetta, Z"]
//
//    init () {
//
//                                    for i in 1..<metricarray.count {
//                                        jointdict[metricarray[i]] = array2[i]
//                                    }
//
//
//                                    let formatter = MeasurementFormatter()
//                                    formatter.unitOptions = .providedUnit
//                                    for itema in keys1 {
//                                        for itemb in keys2 {
//                                            let itemc = itema + itemb
//                                            let val1 = Measurement(value: 1.0 , unit: jointdict[itema] ?? UnitMetric.one)
//                                            let val2 = val1.converted(to: jointdict[itemb] ?? UnitMetric.one)
//                                            let storeval =  formatter.string(from: val2)
//                                            metricdict[itemc] = storeval
//                                        }
//                                    }
//
//                                    print ("Final Dict :", metricdict)
//                                }
    
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
                                    Text(self.DisplayUnit1 + "  "  + env.displayconvertmetr)
                                    }
                                .sheet(isPresented: $ShowUnit1) {
                                    ModalMetric(isPresented: self.$ShowUnit1, isPresented1: self.$ShowUnit1, isPresented2: self.$ShowUnit2, currentUnit1: self.$DisplayUnit1, currentUnit2: self.$DisplayUnit2)
                                }
                                    .font(.system(size: 40))
                                    .frame(width: (UIScreen.main.bounds.width - 2 * 12), height: UIScreen.main.bounds.height / 10)
                                    .foregroundColor(.white)
                                    .background(Color.gray)
                                    .cornerRadius(UIScreen.main.bounds.width - 2 * 12)
                        
                                Button(action: {
                                    self.ShowUnit2.toggle()
                                }) {
                                                                        Text(self.DisplayUnit2 + "  " + calc(env.displayconvertmetr, self.DisplayUnit1, self.DisplayUnit2))
//                                    Text(self.DisplayUnit2 + "  ")
                                    }
                                    .sheet(isPresented: $ShowUnit2) {
                                        ModalMetric(isPresented: self.$ShowUnit1, isPresented1: self.$ShowUnit1, isPresented2: self.$ShowUnit2, currentUnit1: self.$DisplayUnit1, currentUnit2: self.$DisplayUnit2)
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
           let storedval = (metricdict[stringval, default: "1"])
           let operand1 = (unit1val as NSString).doubleValue
           let operand2 = (storedval as NSString).doubleValue
           return String(operand1 * operand2)
           
       }
}
    
    
//    let metricarray =
//    ["Acto, a", "Centi, c", "Deca, da", "Deci, d", "Exa, E", "Femto, f", "Giga, G", "Hecto, h", "Kilo, k", "Mega, M", "Micro, μ", "Milli, m", "Nano, n", "One, One", "Peta, P", "Pico, p", "Tera, T", "Yocto, y", "Yotta, Y", "Zepta, z", "Zetta, Z"]
//    
//    let array2 = [UnitMetric.acto, UnitMetric.centi, UnitMetric.deca, UnitMetric.deci, UnitMetric.exa, UnitMetric.femto, UnitMetric.giga, UnitMetric.hecto, UnitMetric.kilo, UnitMetric.mega, UnitMetric.micro, UnitMetric.milli, UnitMetric.nano, UnitMetric.one, UnitMetric.peta, UnitMetric.pico, UnitMetric.tera, UnitMetric.yocto, UnitMetric.yotta, UnitMetric.zepto, UnitMetric.zetta]


struct Metric_Prefix_Previews: PreviewProvider {
    static var previews: some View {
        Metric_Prefix()
        .environmentObject(ViewRouter())
        .environmentObject(GlobalEnvironment())
    }
}

public final class UnitMetric: Dimension {
    
    
    static let acto = UnitMetric(symbol: "", converter: UnitConverterLinear(coefficient: 0.000000000000000001))
    static let centi = UnitMetric(symbol: "", converter: UnitConverterLinear(coefficient: 0.01))
    static let deca = UnitMetric(symbol: "", converter: UnitConverterLinear(coefficient: 10))
    static let deci = UnitMetric(symbol: "", converter: UnitConverterLinear(coefficient: 0.1))
    static let exa = UnitMetric(symbol: "", converter: UnitConverterLinear(coefficient: 1000000000000000000))
    static let femto = UnitMetric(symbol: "", converter: UnitConverterLinear(coefficient: 0.000000000000001))
    static let giga = UnitMetric(symbol: "", converter: UnitConverterLinear(coefficient: 1000000000))
    static let hecto =  UnitMetric(symbol: "", converter: UnitConverterLinear(coefficient: 100))
    static let kilo =  UnitMetric(symbol: "", converter: UnitConverterLinear(coefficient: 1000))
    static let mega =  UnitMetric(symbol: "", converter: UnitConverterLinear(coefficient: 1000000))
    static let micro =  UnitMetric(symbol: "", converter: UnitConverterLinear(coefficient: 0.000001))
    static let milli =  UnitMetric(symbol: "", converter: UnitConverterLinear(coefficient: 0.001))
    static let nano =  UnitMetric(symbol: "", converter: UnitConverterLinear(coefficient: 0.000000001))
    static let one =  UnitMetric(symbol: "", converter: UnitConverterLinear(coefficient: 1))
    static let peta =  UnitMetric(symbol: "", converter: UnitConverterLinear(coefficient: 0.000000000001))
    static let pico =  UnitMetric(symbol: "", converter: UnitConverterLinear(coefficient: 0.000000000001))
    static let tera =  UnitMetric(symbol: "", converter: UnitConverterLinear(coefficient: 1000000000000))
    static let yocto =  UnitMetric(symbol: "", converter: UnitConverterLinear(coefficient: 0.000000000000000000000001))
    static let yotta =  UnitMetric(symbol: "", converter: UnitConverterLinear(coefficient: 1000000000000000000000000))
    static let zepto =  UnitMetric(symbol: "", converter: UnitConverterLinear(coefficient: 1000000000000000000000))
    static let zetta =  UnitMetric(symbol: "", converter: UnitConverterLinear(coefficient: 1000000000000000000000))
    
    public override class func baseUnit() -> UnitMetric {
        return one
    }
}


