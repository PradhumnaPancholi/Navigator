//
//  MapView.swift
//  Navigator
//
//  Created by Pradhumna Pancholi on 2019-06-11.
//  Copyright © 2019 Pradhumna Pancholi. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView : UIViewRepresentable{
    //to create and return an empty mapView//
    func makeUIView(context: Context) -> MKMapView{
        MKMapView(frame: .zero)
    }
    //to update map view//
    func updateUIView(_ view: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(
            latitude: 43.0896, longitude: 79.0849)
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        view.setRegion(region, animated: true)
    }
    
}

#if DEBUG
struct MapView_Previews : PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
#endif
