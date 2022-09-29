//
//  UserNetworkAPI.swift
//  Test_BabySittor
//
//  Created by Rodolphe Schnetzer on 28/09/2022.
//
//

import Foundation

final class UserNetworkService {
    
    enum Errors: Error {
        case noData, noResponse, undecodable
    }
    // MARK: - properties
    
    private let session : URLSession
    private var task: URLSessionDataTask?
    
    // MARK: - initializer
    
    init(session:URLSession = URLSession(configuration: .default)){
        self.session = session
    }
    // MARK: - Methods
    

    func getUser(callback: @escaping (Result<UserData,Error>) -> Void) {
        
        guard let userAPI = URL(string: "https://preprod-api.bbst.eu/test_tech")
        else { return }
        
        var request = URLRequest(url: userAPI)
        request.setValue("GSsJ5fj5Jgi9rZuyUekmYDQWPrJHiUvS", forHTTPHeaderField: "x-windy-key")
        
        task?.cancel()
        
        task = session.dataTask(with: request) { data, response, error in
            guard let data = data, error == nil else {
                callback(.failure(Errors.noData))
                return
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                callback(.failure(Errors.noResponse))
                return
            }
            
            guard let responseJSON = try? JSONDecoder().decode(UserData.self, from: data) else {
                        callback(.failure(Errors.undecodable))
                        return
                }
            callback(.success(responseJSON))
            
            
        }
        task?.resume()
        
    }
    
    
}
