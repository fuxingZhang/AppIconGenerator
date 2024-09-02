//
//  StockIcon.swift
//  AppIconGenerator
//
//  Created by zhangfuxing on 2024/9/2.
//

import Foundation
import SwiftUI

struct StockIcon: View {
    var body: some View {
        VStack(spacing: 0) {
            // chart.line.uptrend.xyaxis
            Image(systemName: "chart.line.uptrend.xyaxis.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 260, height: 260)
                .font(.headline)
                .foregroundColor(.accentColor)
                .padding(50)
                .background(Color.white)
                //.cornerRadius(300)
                .padding(.top, -10)
        }
        .frame(width: 512, height: 512)
        .background(Color.white)
    }
}

struct StockIconWhite: View {
    var body: some View {
        VStack(spacing: 0) {
            // chart.line.uptrend.xyaxis
            Image(systemName: "chart.line.uptrend.xyaxis.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 230, height: 230)
                .font(.headline)
                .foregroundColor(.white)
                .padding(50)
                .background(Color.accentColor)
                //.cornerRadius(300)
                .padding(.top, -10)
        }
        .frame(width: 512, height: 512)
        .background(Color.accentColor)
    }
}

#Preview("StockIcon") {
    StockIcon()
}

#Preview("StockIconWhite") {
    StockIconWhite()
}
