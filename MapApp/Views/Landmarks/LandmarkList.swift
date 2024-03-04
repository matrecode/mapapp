//
//  LandmarkList.swift
//  MapApp
//
//  Created by Hemant Rajkumar Pancheshwar on 17/02/24.
//

import SwiftUI

struct LandmarkList: View {
    @Environment(ModelData.self) var modelData
    @State private var showFavouritesOnly = false
    
    
    var filteredlandmarks: [Landmark] {
        modelData.landmarks.filter{
            landmark in
            (!showFavouritesOnly || landmark.isFavorite)
        }
    }
    var body: some View {
        NavigationSplitView{
            List{
                Toggle(isOn: $showFavouritesOnly) {
                    Text("Favourites only")
                }
                ForEach(filteredlandmarks){
                    landmark in
                    NavigationLink{
                        LandmarkDetail(landmark: landmark)
                    }label:{
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .animation(.default, value: filteredlandmarks)
            .navigationTitle("Landmark")
        }detail:{
            
        }
            
    }
}

#Preview {
    LandmarkList()
        .environment(ModelData())
}
