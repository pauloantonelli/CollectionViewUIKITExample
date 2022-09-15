//
//  ExampleCollectionViewCell.swift
//  CollectionViewExample
//
//  Created by Paulo Antonelli on 14/09/22.
//

import UIKit

class ExampleCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var photo: UIImageView!
 
    func updatePhoto(with url: String) {
        let date = NSData(contentsOf: URL(string: url)!)
        photo.image = UIImage(data: date! as Data)
    }
}
