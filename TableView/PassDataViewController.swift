//
//  PassDataViewController.swift
//  TableView
//
//  Created by U.M. Hamidul islam on 1/2/20.
//  Copyright © 2020 U.M. Hamidul islam. All rights reserved.
//

import UIKit

class PassDataViewController: UIViewController {
    
    var selectedVideo:Video!
    @IBOutlet weak var imageDetail: UIImageView!
    @IBOutlet weak var imageTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageTitle.text = selectedVideo.title
        imageDetail.image = selectedVideo.image
    }
    

}
