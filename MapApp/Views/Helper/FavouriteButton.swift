//
//  FavouriteButton.swift
//  MapApp
//
//  Created by Hemant Rajkumar Pancheshwar on 04/03/24.
//

import SwiftUI

struct FavouriteButton: View {
    @Binding var isSet:Bool
    
    var body: some View {
        Button{
            isSet.toggle()
        } label: {
            Label("TOggle Favourite", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundStyle(isSet ? .yellow : .gray)
        }
    }
}

#Preview {
    FavouriteButton(isSet: .constant(true))
}
