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
                .frame(width: 400, height: 400)
                .font(.headline)
                .foregroundColor(.accentColor)
                .background(Color.white)
                //.cornerRadius(300)
                .padding(.top, 0)
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
                .frame(width: 400, height: 400)
                .font(.headline)
                .foregroundColor(.white)
                //.padding(10)
                .background(Color.accentColor)
                //.cornerRadius(300)
                .padding(.top, 0)
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
