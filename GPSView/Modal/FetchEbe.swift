//
//  FetchEbe.swift
//  GPSView
//
//  Created by Uche Ojiaku on 2/19/24.
//

import Foundation

@Observable
class EbeData {
    var info: [Ebe] = processData("Ebe.json")
}


func processData<T: Decodable>(_ filename: String) -> T {
    
    let data: Data
    
    guard let sourcefile = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("We could not find this file: \(filename)")
    }
    do {
        data = try Data(contentsOf: sourcefile)
    } catch {
        fatalError("Couldn;t do it \n\(error)")
    }
    do { 
        let decodeInstance = JSONDecoder()
        return try decodeInstance.decode(T.self, from: data)
    } catch {
        fatalError("Couldnt parse:\n\(error)")
    }
    
    
}
    
