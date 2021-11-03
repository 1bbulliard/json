//
//  users.swift
//  json
//
//  Created by Bob Bulliard on 10/29/21.
//

import Foundation
import SwiftUI

struct User: Codable, Identifiable {
 //   enum CodingKeys: CodingKey {Case name}
    var id = UUID()
    var name: String
    var addr: String
    var city: String
    var state: String
    var phone: String
    enum CodingKeys: String, CodingKey {
      //  case UUID()
        case name
        case addr
        case city
        case state
        case phone
    }
}

class ReadData: ObservableObject {
    @Published var users = [User]()
    
    init() {
        loadData()
    }
    func loadData() {
        guard let url = Bundle.main.url(forResource: "userdata", withExtension: "json")
        else {
            print ("Json file not found")
            return
        }
        let data = try? Data(contentsOf: url)
     //   let jsonDecoder = JSONDecoder()
     
        let users = try? JSONDecoder().decode([User].self,from: data!)
        
     
     //   let jstring = String(data: [users], encoding: .utf8)!
     //   for dat in [users.self] {print("\(String(describing: dat?.description))\n\n")  }
        
    }
}
