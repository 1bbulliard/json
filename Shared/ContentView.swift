//
//  ContentView.swift
//  Shared
//
//  Created by Bob Bulliard on 10/29/21.
//

import SwiftUI

struct ContentView: View {
 //   @ObservedObject var datas = ReadData()
    var body: some View {
      
        List(users) {user in
            VStack(alignment: .leading) {
                Text(user.name)
                    .font(.title)
                    
                    .fontWeight(.heavy)
            //    print("\(user.name)")
                HStack {
                    Text(user.addr)
                        .font(.title3)
                    Spacer()
                    Text(user.city)
                    Spacer()
                    Text(user.state)
                    Spacer()
                    Text(user.phone)
                    Spacer()
            }
        }
       
    }
}
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewInterfaceOrientation(.portraitUpsideDown)
            ContentView()
                .previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
