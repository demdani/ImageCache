//
//  ImageCache.swift
//  ImageCache
//
//  Created by Demjen Daniel on 2022. 01. 04..
//

import UIKit

class ImageCache {
    
    static let cache = NSCache<NSURL, UIImage>()
    private var task: URLSessionDataTask?
    
    func load(url: NSURL, placeholder: UIImage? = nil, completion: @escaping (UIImage?) -> Void) {
        if let cachedImage = Self.cache.object(forKey: url) {
            completion(cachedImage)
            return
        }
        
        task?.cancel()
        task = nil
        
        completion(placeholder)
        print("cancel task, returning placeholder")
        
        task = URLSession.shared.dataTask(with: url as URL, completionHandler: { data, response, error in
            guard let data = data, let image = UIImage(data: data) else {
                DispatchQueue.main.async {
                    completion(placeholder)
                }
                return
            }
            
            Self.cache.setObject(image, forKey: url, cost: data.count)
            
            DispatchQueue.main.async {
                completion(image)
            }
        })
        
        task?.resume()
    }
}
