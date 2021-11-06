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
                        .font(.system(size: 10))
                    Spacer()
                    Text(user.city)
                        .font(.system(size: 10))
                    Spacer()
                    Text(user.state)
                        .font(.system(size: 10))
                    Spacer()
                    Text(user.phone)
                        .font(.system(size: 10))
                    Spacer()
                }
              //
             //   if (user.id == 1001) {print("hit")}
            //    else {print("no hit")}

                
                VStack(alignment: .leading){
                    user.image
                        .resizable()
                        .frame(width: 150, height: 150)
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

