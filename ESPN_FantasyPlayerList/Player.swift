//
//  Player.swift
//  SoupKitchen
//
//  Created by Taylor Pubins on 3/2/22.
//

import Foundation

struct Player: Codable {
    let idESPN: String
    var idFangraphs: String = ""
    let _name: String
    var firstName: String? = nil
    var lastName: String? = nil
    var suffix: String? = nil
    let tm: String
    let pos: String
    
    init(id: String, name: String, tm: String, pos: String) {
        self.idESPN = id
        self._name = name
        self.tm = tm
        self.pos = pos
        // guarding against html errors
        if !name.isEmpty {
            let compsName = name.components(separatedBy: " ")
            self.firstName = compsName[0]
            self.lastName = compsName[1]
            if compsName.endIndex > 2 {
                self.suffix = compsName[2]
            }
        }
        
    }
}
