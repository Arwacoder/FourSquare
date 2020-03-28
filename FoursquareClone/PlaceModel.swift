//
//  PlaceModel.swift
//  FoursquareClone
//
//  Created by Arwa Mahdai on 3/9/20.
//  Copyright © 2020 Arwa Mahdai. All rights reserved.
//

import Foundation
import UIKit

class PlaceModel {

    static let sharedInstance = PlaceModel()

    var placeName = ""
    var placeType = ""
    var placeAtmosphere = ""
    var placeImage = UIImage()
    var placeLatitude = ""
    var placeLongitude = ""
    
    
    private init(){}
}
