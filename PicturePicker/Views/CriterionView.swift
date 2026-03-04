//
//  SwiftUIView.swift
//  PicturePicker
//
//  Created by Justin Bushfield on 2026-03-03.
//

import SwiftUI

struct CriterionView: View {
    @State private var viewModel = CriterionViewModel()
    
    var body: some View {
        VStack {
            HStack {
                Text("Pictures!")
                    .font(.title)
                    .padding(.top)
            }
            HStack {
                AsyncImage(url: URL(string: viewModel.getFullURL())) { image in
                    image
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                } placeholder: {
                    Color.gray.opacity(0.1)
                        
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                        .padding()
                }.frame(width: viewModel.width, height: viewModel.height - 25)
                .id(viewModel.imageID)
                    
            }
            HStack {
                CriteriaButtonView(size: 32, resource: "dark_icon") {
                    viewModel.toggleGrayscale()
                }
                    .opacity(viewModel.isGrayscale() ? 1 : 0.5)
                CriteriaButtonView(size: 64, resource: "refresh") {
                    viewModel.refresh()
                }
                CriteriaButtonView(size: 32, resource: "blur") {
                    viewModel.toggleBlur()
                }
                .opacity(viewModel.isBlur() ? 1 : 0.5)
            }
            .padding()
        }
    }
}

#Preview {
    CriterionView()
}
