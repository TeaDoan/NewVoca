//
//  Networking.swift
//  NewVoca
//
//  Created by Thao Doan on 1/3/19.
//  Copyright © 2019 Thao Doan. All rights reserved.
//

import Foundation


class Networking {
    static let baseURL  = URL(string:"https://wordsapiv1.p.rapidapi.com/words/")

    
    static func wordNetword(word:String,completion: @escaping (Results?) -> Void){
        guard var url = baseURL else {completion(nil); return}
        url.appendPathComponent(word)
        print(url.absoluteString)
        var request = URLRequest(url: url, cachePolicy: .useProtocolCachePolicy, timeoutInterval: 30.0)
        request.httpMethod = "GET"
        request.setValue("application/json", forHTTPHeaderField: "Accept")
        request.setValue("ZNpmW9U4yfmshoLFq3hpzxUheqXZp1r2kjtjsn1jNGcPTtLzyj", forHTTPHeaderField: "X-RapidAPI-Key")
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            if let err = error {
                completion(nil)
                print(err.localizedDescription)
                return
            }
            guard let data = data else {
                completion(nil)
                return
            }
            let jsonDecoder = JSONDecoder()
            do {
                let wordData = try jsonDecoder.decode(Results.self, from: data)
                completion(wordData)
                print(wordData.results?.compactMap({$0}))
                return
            } catch let err {
                print (err.localizedDescription)
                completion(nil)
                return
            }
            
            }.resume()
    }
}

