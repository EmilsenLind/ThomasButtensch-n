//
//  MusicCell.swift
//  ParyRockMansion
//
//  Created by Emil Møller Lind on 17/11/2016.
//  Copyright © 2016 Emil Møller Lind. All rights reserved.
//

import UIKit

class MusicCell: UITableViewCell {

    @IBOutlet weak var previewImage: UIImageView!
    
    @IBOutlet weak var videoTitle: UILabel!
    
    @IBOutlet weak var lenghtAndTime: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func updateUI(musicModel: MusicModel) {
        self.videoTitle.text = musicModel.videoTitle
        self.lenghtAndTime.text = "\(musicModel.lenght), \(musicModel.year)"
        
        let url = URL(string: musicModel.imageURL)
        
        DispatchQueue.global().async {
            do {
                let data = try Data(contentsOf: url!)
                DispatchQueue.main.sync {
                    self.previewImage.image = UIImage(data: data)
                }
            } catch {
                //handle error
            }
        }
        
    }
}
