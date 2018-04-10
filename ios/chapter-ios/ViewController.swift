//
//  ViewController.swift
//  chapter-ios
//
//  Created by Gilson Maciel on 4/10/18.
//  Copyright © 2018 Gilson Maciel. All rights reserved.
//

import UIKit
import KotlinChapterCore

class ViewController: UIViewController {

    @IBOutlet weak var word: UILabel!
    @IBOutlet weak var desc: UILabel!
    @IBOutlet weak var day: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupView()
    }
    
    func setupView() {
        let wordOfDay = KCCWordUseCase(dateTime: KCCDateTime()).wordOfTheDay()
        word.text = wordOfDay.word
        desc.text = wordOfDay.component3()
        day.text = wordOfDay.day
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }


}

