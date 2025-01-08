//
//  NetworkManager.swift
//  Appetizers
//
//  Created by Abhishek Dilip Dhok on 05/01/25.
//

import UIKit

final class NetworkManager {

    static let shared = NetworkManager()
    private let cache = NSCache<NSString, UIImage>()

    static let baseURL = "https://seanallen-course-backend.herokuapp.com/swiftui-fundamentals/"
    private let appetizerURL = baseURL + "appetizers"

    private init() {}

    func getAppetizers(completion: @escaping (Result<[Appetizer], APError>) -> Void) {

        guard let url = URL(string: appetizerURL) else {
            completion(.failure(.invalidURL))
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in

            guard error == nil else {
                completion(.failure(.unableToComplete))
                return
            }

            guard let response = response as? HTTPURLResponse,
            response.statusCode == 200 else {
                completion(.failure(.invalidResponse))
                return
            }

            guard let data else {
                completion(.failure(.invalidData))
                return
            }

            do {
                let decoder = JSONDecoder()
                let appetizers = try decoder.decode(AppetizerResponse.self, from: data)
                completion(.success(appetizers.request))
            } catch {
                completion(.failure(.invalidData))
            }
        }.resume()

    }

    func downloadImage(fromURLString urlString: String, completion: @escaping (UIImage?) -> ()) {

        let cacheKey = NSString(string: urlString)

        if let image = cache.object(forKey: cacheKey) {
            completion(image)
            return
        }

        guard let url = URL(string: urlString) else {
            completion(nil)
            return
        }

        URLSession.shared.dataTask(with: url) { [weak self] data, response, error in
            guard let self,
                   let data,
                  let image = UIImage(data: data) else {
                completion(nil)
                return
            }

            self.cache.setObject(image, forKey: cacheKey)
            completion(image)
        }.resume()

    }

}
