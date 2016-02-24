//
//  BusinessCell.swift
//  Yelp
//
//  Created by Denzel Ketter on 2/20/16.
//  Copyright © 2016 Timothy Lee. All rights reserved.
//

import UIKit

class BusinessCell: UITableViewCell {

    
    @IBOutlet weak var priceLabel: UILabel!
    
    @IBOutlet weak var distanceLabel: UILabel!
    
    @IBOutlet weak var reviewsLabel: UILabel!
    
    @IBOutlet weak var categoriesLabel: UILabel!
    
    @IBOutlet weak var addressLabel: UILabel!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var thumbnailImageView: UIImageView!
    
    @IBOutlet weak var ratingsImageView: UIImageView!
    
    var business: Business! {
        didSet {
            nameLabel.text = business.name
            thumbnailImageView.setImageWithURL(business.imageURL!)
            categoriesLabel.text = business.categories
            addressLabel.text = business.address
            reviewsLabel.text = "\(business.reviewCount!) Reviews"
            ratingsImageView.setImageWithURL(business.ratingImageURL!)
            distanceLabel.text = business.distance
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        thumbnailImageView.layer.cornerRadius = 3
        thumbnailImageView.clipsToBounds = true
        nameLabel.preferredMaxLayoutWidth = nameLabel.frame.size.width
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        nameLabel.preferredMaxLayoutWidth = nameLabel.frame.size.width
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
