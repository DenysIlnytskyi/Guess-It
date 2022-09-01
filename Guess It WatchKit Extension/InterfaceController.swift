//
//  InterfaceController.swift
//  Guess It WatchKit Extension
//
//  Created by Денис Ільницький on 01/09/2022.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet weak var myLabel: WKInterfaceLabel!
    @IBOutlet weak var myButton: WKInterfaceButton!
    
    let movies = FilmModel.getFilms()
    var element: FilmModel?
    
    private var timer: Timer?
    
    override func awake(withContext context: Any?) {
        
        element = movies.randomElement()
        myLabel.setText("")
        myButton.setTitle(element?.emojis)
    }
 
    @IBAction func refreshAction() {
        myLabel.setText(element?.name)
        
        timer?.invalidate()
        timer = Timer.scheduledTimer(withTimeInterval: 2, repeats: false, block: { _ in
            self.element = self.movies.randomElement()
            self.myButton.setTitle(self.element?.emojis)
            self.myLabel.setText("")
        })
    }
    
}
