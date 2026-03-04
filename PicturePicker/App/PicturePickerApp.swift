//
//  PicturePickerApp.swift
//  PicturePicker
//
//  Created by Justin Bushfield on 2026-03-03.
//

import SwiftUI

@main
struct PicturePickerApp: App {
    @State private var path = NavigationPath()
    var body: some Scene {
        WindowGroup {
            HomeView()
        }
    }
}
