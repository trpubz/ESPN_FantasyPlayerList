//
//  Player.swift
//  SoupKitchen
//
//  Created by Taylor Pubins on 3/2/22.
//

import Foundation

struct Player: Codable {
    let _name: String
    let idESPN: String
    var idFangraphs: String = ""
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
                // Hyun Jin Ryu is an
                if compsName[2] == "Jr." || compsName[2] == "Sr." {
                    self.suffix = compsName[2]
                } else {
                    // Hyun Jin Ryu if not conditioned will produced Ryu as a suffix and Jin as the last name
                    // Take the last index as the last name
                    self.lastName = compsName[compsName.endIndex - 1]
                    // Drop the last name from the name components
                    self.firstName = self._name.components(separatedBy: " " + self.lastName!)[0]
                }
                
            }
        }
        
    }
}
