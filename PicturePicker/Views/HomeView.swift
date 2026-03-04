//
//  ContentView.swift
//  PicturePicker
//
//  Created by Justin Bushfield on 2026-03-03.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack{
            VStack {
                Image("camera_icon")
                    .resizable()
                    .scaledToFit()
                    .containerRelativeFrame(.horizontal) { size, axis in
                        size * 0.5
                    }
                Text("Welcome To")
                    .bold()
                Text("Picture Picker").font(.largeTitle)
                NavigationLink ("Get Started") {
                    CriterionView()
                }
            }
            .padding()
        }
    }
}

#Preview {
    HomeView()
}
