//
//  LandmarkView.swift
//  SampleApp
//
//  Created by Pulkit Aggarwal on 31/07/19.
//  Copyright © 2019 Pulkit Aggarwal. All rights reserved.
//

import SwiftUI

struct LandmarkView: View {
    
    var landmark: Landmark

    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()

                    if landmark.isFavorite {
                        Image(systemName: "star.fill")
                            .imageScale(.medium)
                            .foregroundColor(.yellow)

                    }
        }
    }
}

#if DEBUG
struct LandmarkView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkView(landmark: landmarkData[0])
            LandmarkView(landmark: landmarkData[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
#endif
