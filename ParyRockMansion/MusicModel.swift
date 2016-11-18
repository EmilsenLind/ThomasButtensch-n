//
//  MusicModel.swift
//  ParyRockMansion
//
//  Created by Emil Møller Lind on 17/11/2016.
//  Copyright © 2016 Emil Møller Lind. All rights reserved.
//

import Foundation

class MusicModel {
    
    private var _imageURL: String!
    private var _videoURL: String!
    private var _videoTitle: String!
    private var _lenght: String!
    private var _year: String!
    
    var year: String {
        return _year
    }
    
    var lenght: String {
        return _lenght
    }
    var imageURL: String {
        return _imageURL
    }
    var videoURL: String {
        return _videoURL
    }
    var videoTitle: String {
        return _videoTitle
    }
    
    
    init(imageURL: String, videoURL: String, videoTitle: String, lenght: String, year: String) {
        _imageURL = imageURL
        _videoURL = videoURL
        _videoTitle = videoTitle
        _lenght = lenght
        _year = year
    }
    
    
    
    
}
