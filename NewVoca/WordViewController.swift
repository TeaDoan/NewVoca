//
//  NewWordViewController.swift
//  NewVoca
//
//  Created by Thao Doan on 1/2/19.
//  Copyright © 2019 Thao Doan. All rights reserved.
//

import UIKit

class WordViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var partOfSpeechLabel: UILabel!
    @IBOutlet weak var definitionTextView: UITextView!
    @IBOutlet weak var favoriteButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getNewWord()
    }
    
    func getNewWord() {
        Networking.randomWord { randomWord in
            guard let randomWord = randomWord else {
                return
            }
            DispatchQueue.main.async {
                self.titleLabel.text = randomWord.word
            }
            guard let word = randomWord.word else { return }
            
            Networking.wordNetword(word: word, completion: { result in
                guard let result = result else {
                    return
                }
                DispatchQueue.main.async {
                    self.partOfSpeechLabel.text = result.results?.first?.partOfSpeech
                    self.definitionTextView.text = result.results?.first?.definition ?? "no definition"
                }
            })
          
        }
    }
    
    @IBAction func favoriteButtonTapped(_ sender: Any) {
    }
}
