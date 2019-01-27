//
//  DetailsViewController.swift
//  Flix
//
//  Created by Alex Rich on 1/23/19.
//  Copyright © 2019 Alex Rich. All rights reserved.
//

import UIKit
import AlamofireImage

class DetailsViewController: UIViewController {
    
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var movieSynopsis: UILabel!
    @IBOutlet weak var posterImage: UIImageView!
    
    var movie: [String:Any]!

    override func viewDidLoad() {
        super.viewDidLoad()
        let title = movie["title"] as! String
        let synopsis = movie["overview"] as! String
        
        movieTitle.text = title
        //movieTitle.sizeToFit()
        movieTitle.minimumScaleFactor = 0.1
        movieTitle.adjustsFontSizeToFitWidth = true
        
        movieSynopsis.text = synopsis
        movieSynopsis.sizeToFit()
        movieSynopsis.adjustsFontSizeToFitWidth = true
        
        var baseURL = "https://image.tmdb.org/t/p/w780"
        let backgroundURL = movie["backdrop_path"] as! String
        let backgroundPath = URL(string: baseURL + backgroundURL)
        baseURL = "https://image.tmdb.org/t/p/w185"
        let posterURL = movie["poster_path"] as! String
        let posterPath = URL(string: baseURL + posterURL)
        
        posterImage.af_setImage(withURL: posterPath!)
        backgroundImage.af_setImage(withURL: backgroundPath!)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
