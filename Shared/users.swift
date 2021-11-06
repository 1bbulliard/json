//
//  users.swift
//  json
//
//  Created by Bob Bulliard on 10/29/21.
//

import Foundation
import SwiftUI
import CoreLocation

struct User: Hashable, Codable, Identifiable {
 //   enum CodingKeys: CodingKey {Case name}
  //  var id = UUID()
    var id: Int
    var name: String
    var addr: String
    var city: String
    var state: String
    var phone: String
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
}
   enum CodingKeys: String, CodingKey {
  //    case id
        case name
        case addr
        case city
        case state
        case phone
        case imagename
    }



 


 
