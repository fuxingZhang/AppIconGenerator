//
//  ContentView.swift
//  AppIconGenerator
//
//  Created by zhangfuxing on 2024/9/1.
//

import SwiftUI
import UIKit

struct ContentView: View {
    @State private var generatedImage: UIImage?
    @State private var generatedImage2: UIImage?

    var body: some View {
        VStack(spacing: 20) {
            if let image = generatedImage {
                Image(uiImage: image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                if let image = generatedImage2 {
                    Image(uiImage: image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
                
                Text("It has been saved to the album")
            } else {
                Text("Tap the button to generate an image")
                Button("Generate Image") {
                    generatedImage = self.generateImage(AppIconView())
                    generatedImage2 = self.generateImage(AppIconViewWhite())
                }
            }
        }
        .padding()
    }

    func generateImage(_ view: some View) -> UIImage {
        let size = CGSize(width: 512, height: 512)

        let hostingController = UIHostingController(rootView: view)
        hostingController.view.frame = CGRect(origin: .zero, size: size)

        let renderer = UIGraphicsImageRenderer(size: size)
        let image = renderer.image(actions: { _ in
            hostingController.view.drawHierarchy(in: hostingController.view.bounds, afterScreenUpdates: true)
        })
        saveImage(image: image)
        return image
    }

    func saveImage(image: UIImage) {
        UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil)
    }
}

#Preview {
    ContentView()
}
