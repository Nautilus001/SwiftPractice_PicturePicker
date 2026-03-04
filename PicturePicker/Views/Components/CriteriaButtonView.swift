//
//  CriteriaButton.swift
//  PicturePicker
//
//  Created by Justin Bushfield on 2026-03-03.
//

import SwiftUI

struct CriteriaButtonView: View {
    let size: CGFloat
    let resource: String
    var color: Color = .orange
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Image(resource)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: size, height: size)
                .padding(size * 0.1) // Adds that 10% spacing internally
                .background(color)
                .clipShape(Circle())
        }
    }
}
#Preview {
    CriteriaButtonView(size: 32, resource: "dark_icon", action: { print("1")})
}
