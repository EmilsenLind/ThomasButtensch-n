//
//  MainVC.swift
//  ParyRockMansion
//
//  Created by Emil Møller Lind on 17/11/2016.
//  Copyright © 2016 Emil Møller Lind. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    
    var musicModels = [MusicModel]()
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? VideoVC {
            
            if let music = sender as? MusicModel {
            destination.musicModel = music
            }
        }
    
    }
    override func viewDidLoad() {
        
     
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let m1 = MusicModel(imageURL: "http://img.youtube.com/vi/NcXfph3jPKQ/2.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/NcXfph3jPKQ\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Comedy AID", lenght: "7:31", year: "2014")
        let m2 = MusicModel(imageURL: "http://img.youtube.com/vi/bmwXzcwayC0/2.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/bmwXzcwayC0\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "TV Scenen", lenght: "50:46", year: "2014")
        let m3 = MusicModel(imageURL: "http://img.youtube.com/vi/rj8hcWNckLw/2.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/rj8hcWNckLw\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "God Damn", lenght: "3:34", year: "2010")
        let m4 = MusicModel(imageURL: "http://img.youtube.com/vi/EG6fTRJJrL0/2.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/EG6fTRJJrL0\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Min Kvinde", lenght: "3:05", year: "2013")
        let m5 = MusicModel(imageURL: "http://img.youtube.com/vi/b1VHYD8NIfk/2.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/b1VHYD8NIfk\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Løb Ibrahim", lenght: "3:48", year: "2011")
        let m6 = MusicModel(imageURL: "http://img.youtube.com/vi/P_TVOP7jtVs/2.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/P_TVOP7jtVs\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Præsident i USA", lenght: "3:09", year: "2007")
       musicModels.append(m1)
        musicModels.append(m2)
        musicModels.append(m3)
        musicModels.append(m4)
        musicModels.append(m5)
        musicModels.append(m6)
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "MusicID", for: indexPath) as? MusicCell {
            let musicModel = musicModels[indexPath.row]
            cell.updateUI(musicModel: musicModel)
            return cell
        } else {
            return UITableViewCell()
        }
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return musicModels.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let musicModel = musicModels[indexPath.row]
        performSegue(withIdentifier: "VideoVCSegue", sender: musicModel)
    }


}

