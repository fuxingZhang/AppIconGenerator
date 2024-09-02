//
//  StockCircle.swift
//  AppIconGenerator
//
//  Created by zhangfuxing on 2024/9/2.
//

import Foundation
import SwiftUI

struct StockCircle: View {
    //let accentColor = Color(red: 107/255, green: 115/255, blue: 219/255)
    
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            
            Image(systemName: "chart.line.uptrend.xyaxis.circle")
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)
                .font(.headline)
                .foregroundColor(.accentColor)
                .background(Color.white)
                //.cornerRadius(300)
                .padding(.top, -50)
            
            Spacer()
        }
        .frame(width: 512, height: 512)
        .background(Color.white)
    }
}

struct StockCircleWhite: View {
    //let accentColor = Color(red: 107/255, green: 115/255, blue: 219/255)
    var body: some View {
        VStack(spacing: 0) {
            Spacer()

            Image(systemName: "chart.line.uptrend.xyaxis.circle")
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)
                .font(.headline)
                .foregroundColor(.white)
                //.padding(10)
                .background(Color.accentColor)
                //.cornerRadius(300)
                .padding(.top, -50)
            
            Spacer()
        }
        .frame(width: 512, height: 512)
        .background(Color.accentColor)
    }
}

#Preview("StockIcon") {
    StockCircle()
}

#Preview("StockIconWhite") {
    StockCircleWhite()
}
