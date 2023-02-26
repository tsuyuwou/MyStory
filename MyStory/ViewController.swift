//
//  ViewController.swift
//  MyStory
//
//  Created by Tsuyuwou on 2/22/23.
//

import UIKit

struct contextItem {
    let name: String
    let image: UIImage
    let text: String
}

class ViewController: UIViewController {
    
    let myDarkHistory = contextItem(name: "My Dark History", image: UIImage(named: "Ayanokouji")!, text: "Ironically, my dark history starts in the White Room. It is a secret facility that aims to raise a human from birth by removing unnecessary things from their education. Exposure to the outside world is forbidden and every aspect of their life growing up is controlled. Fortunately, the facility was temporarily shut down for a year which gave me the opportunity to escape.")
    let myAbilities = contextItem(name: "My Abilities", image: UIImage(named: "Ayanokouji")!, text: "Martial Arts Mastery\n Stealth Mastery\n Social Influencing\n Fear-Inducing Aura\n Fear Manipulation\n Genius Intelligence\n Superhuman Speed\n Overpowering Strength")
    let myPhilosophy = contextItem(name: "My Philosophy", image: UIImage(named: "Ayanokouji")!, text: "All people are nothing but tools. It doesn't matter how it's done. It doesn't matter what needs to be sacrificed. In this world, winning is everything. As long as I win in the end... That's all that matters.")
    var contextItems: [contextItem] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contextItems = [myDarkHistory, myAbilities, myPhilosophy]
    }
    
    @IBAction func didTapButton(_ sender: UITapGestureRecognizer) {
        if let tappedView = sender.view {
            performSegue(withIdentifier: "detailSegue", sender: tappedView)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "detailSegue",
            let tappedButton = sender as? UIButton,
            let detailViewController = segue.destination as? DetailViewController {

            detailViewController.contextItem = contextItems[tappedButton.tag]
        }
    }
}
