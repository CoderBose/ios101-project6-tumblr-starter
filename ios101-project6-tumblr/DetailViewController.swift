//
//  DetailViewController.swift
//  ios101-project6-tumblr
//
//  Created by Priyanka Bose on 4/1/24.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {
    
    var post: Post!

    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var captionTextView: UITextView!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.largeTitleDisplayMode = .never
        
        // MARK: - Configure the labels
        captionTextView.text = post.caption.trimHTMLTags()
        
        // MARK: - Configure the image views

        if let photo = post.photos.first {
            let posterUrl = photo.originalSize.url
            Nuke.loadImage(with: posterUrl, into: posterView)
        }
    }
}
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
