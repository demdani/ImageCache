//
//  ImageCell.swift
//  ImageCache
//
//  Created by Demjen Daniel on 2022. 01. 04..
//

import UIKit

class ImageCell: UITableViewCell {

    @IBOutlet private weak var cellImageView: UIImageView!
    private let imageCache = ImageCache()
    
    func setImage(_ urlString: String) {
        guard let url = NSURL(string: urlString) else { return }
        
        imageCache.load(url: url, placeholder: UIImage(systemName: "rectangle")!) { [weak self] image in
            self?.cellImageView.image = image
        }
    }
}
