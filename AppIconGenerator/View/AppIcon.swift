//
//  AppIcon.swift
//  AppIconGenerator
//
//  Created by zhangfuxing on 2024/9/1.
//

import Foundation
import SwiftUI

struct AppIcon: View {
    var body: some View {
        VStack(spacing: 0) {
            Image(systemName: "map.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 260, height: 260)
                .font(.headline)
                .foregroundColor(.accentColor)
                .padding(50)
                .background(Color.white)
                .cornerRadius(300)
                .padding(.top, -10)
            
            Image(systemName: "triangle.fill")
                .resizable()
                .scaledToFit()
                .foregroundColor(.white)
                .frame(width: 80, height: 80)
                .rotationEffect(Angle(degrees: 180))
                .offset(y: -30)
                //.padding(.bottom, 30)
        }
        .frame(width: 512, height: 512)
        .background(Color.accentColor)
    }
}

struct AppIconWhite: View {
    var body: some View {
        VStack(spacing: 0) {
            Image(systemName: "map.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 260, height: 260)
                .font(.headline)
                .foregroundColor(.white)
                .padding(50)
                .background(Color.accentColor)
                .cornerRadius(300)
                .padding(.top, -10)
            
            Image(systemName: "triangle.fill")
                .resizable()
                .scaledToFit()
                .foregroundColor(.accentColor)
                .frame(width: 80, height: 80)
                .rotationEffect(Angle(degrees: 180))
                .offset(y: -30)
                //.padding(.bottom, 30)
        }
        //.frame(width: 512, height: 512)
        //.background(Color.white)
    }
}

#Preview("AppIcon") {
    AppIcon()
}

#Preview("AppIconWhite") {
    AppIconWhite()
}
