//
//  LandmarkList.swift
//  MapApp
//
//  Created by Hemant Rajkumar Pancheshwar on 17/02/24.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List(landmarks, id: \.id){
            landmark in
            LandmarkRow(landmark: landmark)
        }
    }
}

#Preview {
    LandmarkList()
}
