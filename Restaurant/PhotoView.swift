//
//  PhotoView.swift
//  Restaurant
//
//  Created by Javier Alaves on 25/6/23.
//

import SwiftUI

struct PhotoView: View {
    
    @Binding var selectedPhoto: String
    @Binding var sheetVisible: Bool
    
    var body: some View {
        ZStack {
            Image(selectedPhoto)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            VStack {
                HStack {
                    Spacer()
                    Button {
                        sheetVisible = false
                    } label: {
                        Image(systemName: "x.circle")
                            .foregroundColor(.black)
                    }
                    .padding(32)
                    .scaleEffect(2)
                }
                Spacer()
            }
        }
        
        
    }
}

struct PhotoView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoView(selectedPhoto: Binding.constant("gallery2"),
                  sheetVisible: Binding.constant(true))
    }
}
