//  main.swift
//  v1.1 (19MAY2022)
//  This program takes the html from the EPSN Top Players H2H Page to generate a valid player universe based on Tristen Conkroft & Eric Karabell's interpretation of the environment.  
//  The output is stored as JSON on the local drive...this file informs the TRPKeysGenerator program.
//  Created by Taylor Pubins on 2/26/22.
//

import Foundation

var soup = SoupStew()
soup.makeStew()
print(String(data: soup.jsonData, encoding: .utf8) ?? "brokey-broke whalburg")


