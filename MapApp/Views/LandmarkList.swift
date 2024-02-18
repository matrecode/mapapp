//
//  LandmarkList.swift
//  MapApp
//
//  Created by Hemant Rajkumar Pancheshwar on 17/02/24.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationSplitView{
            List(landmarks, id: \.id){
                landmark in
                NavigationLink{
                    LandmarkDetail(landmark: landmark)
                }label:{
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmark")
        }detail:{
            
        }
            
    }
}

#Preview {
    LandmarkList()
}
