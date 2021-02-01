//
//  ContentView.swift
//  Pagination
//
//  Created by Philip Davis on 2/1/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.blue.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            TabView {
                ForEach(0..<30) { i in
                    ZStack {
                        Color.black.opacity(0.4)
                        Text("Page \(i)").foregroundColor(.white)
                        
                    }.cornerRadius(12)
                    
                }.padding(.all, 10)
            }
            .frame(width: UIScreen.main.bounds.width, height: 400)
            .tabViewStyle(PageTabViewStyle())
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
