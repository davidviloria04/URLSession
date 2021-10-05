//
//  ContentView.swift
//  URLSessionSwifUiBeta
//
//  Created by David Viloria Ortega on 26/08/21.
//

import SwiftUI

struct ContentView: View {
    
    private var viewModel: ViewModel = ViewModel()
    
    var body: some View {
        VStack {
            Text("URLSession")
                .padding()
            
            Button("Crear petición HTTP") {
                viewModel.executeApi()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
