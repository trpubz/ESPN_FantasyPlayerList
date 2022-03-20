//
//  Extensions.swift
//  SoupKitchen
//
//  Created by Taylor Pubins on 3/2/22.
//

import Foundation


extension String {
    /**
     Slices a fragment string out of a larger string given a starting and ending string pattern.
     
     - returns: optionally returns a string slice

     - parameters:
        - from: the first string pattern to make starting slice
        - to: the ending string patter to make ending slice
     
     */
    func slice(from: String, to: String) -> String? {
        guard let rangeFrom = range(of: from)?.upperBound else { return nil }
        guard let rangeTo = self[rangeFrom...].range(of: to)?.lowerBound else { return nil }
        return String(self[rangeFrom..<rangeTo])
    }
}
