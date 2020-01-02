//
//  VideoListViewController.swift
//  TableView
//
//  Created by U.M. Hamidul islam on 1/1/20.
//  Copyright © 2020 U.M. Hamidul islam. All rights reserved.
//

import UIKit

class VideoListViewController: UIViewController {
    
    @IBOutlet weak var hamidTableView: UITableView!
    var videos :[Video] = []
    var selectedVideo:Video?
    override func viewDidLoad() {
        super.viewDidLoad()
        videos = createArray()
        hamidTableView.delegate = self
        hamidTableView.dataSource = self
        
    }
   
    func createArray() -> [Video] {
        var tempVideos: [Video] = []
        let Video1 = Video(image: UIImage(named: "A")!, title: "First Apple")
        let Video2 = Video(image: UIImage(named: "B")!, title: "Second Apple")
        let Video3 = Video(image: UIImage(named: "C")!, title: "Third Apple")
        let Video4 = Video(image: UIImage(named: "D")!, title:"Forth Apple")
        let Video5 = Video(image: UIImage(named: "D")!, title: "Fifth Apple")
        
        tempVideos.append(Video1)
        //tempVideos.append(Video2)
        tempVideos.append(Video2)
        tempVideos.append(Video3)
        tempVideos.append(Video4)
        tempVideos.append(Video5)
        
        return tempVideos
    }
}
extension VideoListViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let video = videos [indexPath.row]
       // selectedVideoint = indexPath.row
        let cell = tableView.dequeueReusableCell(withIdentifier: "Videocell") as! Videocell
        cell.setVideo(video: video)
        return cell
    }
    //func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        //print(videos[indexPath.row].title)
    
func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    selectedVideo = videos[indexPath.row]
    performSegue(withIdentifier: "PassData", sender: self)
}


override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "PassData" {
            if let nextViewController =  segue.destination as? PassDataViewController {
                nextViewController.selectedVideo = selectedVideo
            }
        }
    }
}
