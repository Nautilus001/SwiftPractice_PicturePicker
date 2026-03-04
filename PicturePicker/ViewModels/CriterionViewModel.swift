//
//  CriterionViewModel.swift
//  PicturePicker
//
//  Created by Justin Bushfield on 2026-03-03.
//

import Foundation
import SwiftUI

@Observable
class CriterionViewModel {
    var criterion = CriterionModel()
    var width: CGFloat = 350
    var height: CGFloat = 600
    var baseURL = "https://picsum.photos"
    var imageID = UUID()
    
    func isGrayscale() -> Bool {
        return criterion.grayscale
    }
    func isBlur() -> Bool {
        return criterion.blur
    }
    func toggleGrayscale() {
        criterion.grayscale.toggle()
    }
    func toggleBlur() {
        criterion.blur.toggle()
    }
    func refresh() {
        imageID = UUID()
    }
    func getFullURL() -> String{
        return baseURL + "/" + String(Int(width)) + "/" + String(Int(height)) + "?" + (isGrayscale() ? "grayscale" : "") + (isBlur() ? "&blur" : "")
    }
}


