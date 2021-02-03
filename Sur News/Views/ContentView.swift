//
//  ContentView.swift
//  Sur News
//
//  Created by User on 11/14/20.
//  Copyright © 2020 huseynova. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) {
                post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
            }
            .navigationBarTitle("Sur News")
        }
        .onAppear {
            self.networkManager.fetchData()
        }    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}





//let posts = [
//     Post (id: "1", title: "qw"),
//     Post (id: "2", title: "qwe"),
//     Post (id: "3", title: "qwer"),
//     Post (id: "4", title: "qwerty")
//]
