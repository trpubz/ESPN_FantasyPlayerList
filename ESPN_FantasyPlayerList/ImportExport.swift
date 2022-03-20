//
//  ImportExport.swift
//  SoupKitchen
//
//  Created by Taylor Pubins on 3/3/22.
//

import Foundation

struct IOModule {
    let sharedLocation: URL = URL(fileURLWithPath: "/Users/Shared/Baseball HQ")
}

extension IOModule {
    func loadHTML(fileName: String = "h2hPlayerList.html") -> String {
        let filePath: URL = sharedLocation.appendingPathComponent(fileName, isDirectory: false)
        do {
            return try String(contentsOf: filePath, encoding: .utf8)
        } catch {
            print("return error")
            return "numnutz"
        }
    }
    
    func saveJSON(jsonData: Data, fileName: String = "espnTopPlayers.json") {
        let pathWithFileName = sharedLocation.appendingPathComponent(fileName)
           do {
               try jsonData.write(to: pathWithFileName)
           } catch {
               print("Error saving file")
           }
    }
}
