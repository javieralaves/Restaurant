//
//  AboutView.swift
//  Restaurant
//
//  Created by Javier Alaves on 24/6/23.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        
        ScrollView (showsIndicators: false) {
            
            VStack (alignment: .leading) {
                Text("About")
                    .font(.largeTitle)
                    .bold()
                
                Image("restaurant-inside")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.bottom)
                
                Text("Sukiyabashi Jiro is a sushi restaurant in Ginza, Tokyo, Japan. It is owned and operated by sushi master Jiro Ono. It was the first sushi restaurant in the world to receive three stars from the Michelin Guide, although it was removed from the Michelin Guide in November 2019 as it does not receive reservations from the general public, instead requiring reservation to be made through the concierge of a luxury hotel.")
                
                Image("map")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.bottom)
                
                Text("""
    Tsukamoto Sogyo Building
    Basement Floor 1
    2-15, Ginza 4-chome
    Chuo, Tokyo
    """)
                
            }
            .padding(.horizontal)
            
        }
        
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
