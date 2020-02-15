//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var storyBrain = StoryBrain()
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    @IBAction func choiceMade(_ sender: UIButton) {
        switch sender {
        case choice1Button:
            storyBrain.choose1()
            break
        case choice2Button:
            storyBrain.choose2()
            break
        default:
            fatalError("Unexpected choice")
        }
        updateUI()
    }
    
    func updateUI() {
        let currentStory = storyBrain.currentStory()
        choice1Button.setTitle(currentStory.choice1, for: .normal)
        choice2Button.setTitle(currentStory.choice2, for: .normal)
        storyLabel.text = currentStory.title
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
}
