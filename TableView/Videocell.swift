//
//  Videocell.swift
//  TableView
//
//  Created by U.M. Hamidul islam on 1/1/20.
//  Copyright © 2020 U.M. Hamidul islam. All rights reserved.
//

import UIKit

class Videocell: UITableViewCell {
    
    @IBOutlet weak var videoImageView: UIImageView!
    
    @IBOutlet weak var videoTitleLabel: UILabel!
    
    func setVideo(video: Video){
        videoImageView.image = video.image
        videoTitleLabel.text = video.title
    }
}
