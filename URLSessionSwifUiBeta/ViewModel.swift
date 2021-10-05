//
//  ViewModel.swift
//  URLSessionSwifUiBeta
//
//  Created by David Viloria Ortega on 26/08/21.
//

import Foundation

final class ViewModel{
    
    func executeApi(){
        let urlSession = URLSession.shared
        let url = URL(string: "https://itunes.apple.com/search/media=music&identity=song&term=avicci")
        
        
        urlSession.dataTask(with: url!){ data, response, error in
            print("Data \(String(describing: data))")
            //print("Responde \(String(describing: response))")
            //print("Error \(String(describing: error))")
            
            if let data = data{
                let json = try?  JSONSerialization.jsonObject(with: data)
                print(String(describing: json))
            }
        }.resume()
    }
}
