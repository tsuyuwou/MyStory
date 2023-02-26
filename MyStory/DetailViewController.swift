//
//  DetailViewController.swift
//  MyStory
//
//  Created by Tsuyuwou on 2/23/23.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var text: UILabel!
    
    var contextItem: contextItem?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let contextItem = contextItem {
            navigationItem.title = contextItem.name
            image.image = contextItem.image
            text.text = contextItem.text
        }
    }
}
