//
//  LandmarkDetail.swift
//  WatchLandmarks Watch App
//
//  Created by Jose Garcia on 5/8/23.
//

import SwiftUI

struct LandmarkDetail: View {
    @EnvironmentObject var modelData: ModelData
    var landmark: Landmark
    
    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }
    
    var body: some View {
        CircleImage(image: landmark.image.resizable())
            .scaledToFill()
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        let modelData = ModelData()
        return LandmarkDetail(landmark: modelData.landmarks[0])
            .environmentObject(modelData)
    }
}
