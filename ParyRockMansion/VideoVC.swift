//
//  VideoVC.swift
//  ParyRockMansion
//
//  Created by Emil Møller Lind on 17/11/2016.
//  Copyright © 2016 Emil Møller Lind. All rights reserved.
//

import UIKit

class VideoVC: UIViewController {

    @IBAction func BackBtn(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var webView: UIWebView!
    
    private var _musicModel: MusicModel!
    
    var musicModel: MusicModel {
        get {
            return _musicModel
        } set {
            _musicModel = newValue
        }
    }
    
    override func viewDidLoad() {
        
        titleLbl.text = musicModel.videoTitle
        webView.loadHTMLString(musicModel.videoURL, baseURL: nil)
        
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

   

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
