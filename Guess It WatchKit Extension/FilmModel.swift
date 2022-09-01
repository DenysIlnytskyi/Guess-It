//
//  FilmModel.swift
//  Guess It WatchKit Extension
//
//  Created by Денис Ільницький on 01/09/2022.
//

import Foundation

struct FilmModel {
    var emojis: String
    var name: String
    
    static func getFilms() -> [FilmModel] {
        return [
            FilmModel(emojis: "🙎‍♂️🦇", name: "Batman"),
            FilmModel(emojis: "🧳🐻👨‍👩‍👦", name:"Christopher Robin"),
            FilmModel(emojis: "🌍🐒🐒", name: "Planet of the Apes"),
            FilmModel(emojis: "🧛", name: "Dracula"),
            FilmModel(emojis: "🏎👨‍🦲💣", name: "The Fast and the Furious")
        ]
    }
}
