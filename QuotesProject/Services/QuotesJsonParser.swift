//
//  DataParser.swift
//  QuotesProject
//
//  Created by Colstin Donaldson on 3/28/23.
//

import Foundation


class QuotesJsonParser {
    static func getLocalData() -> [Quote]{
        
        //1. get the path to the json file
        //2. checks it's not nil
        //3. Create url object and get file path
        //4. create a data object with the contentsOf the url
        //5. Decode data with JSONDecoder()
        //6. parse the data
        //7. OPIONAL: set unique ID's for each instance ( IF NEEDED)
        
        
        let pathString = Bundle.main.path(forResource: "Quotes", ofType: "json")
        
        guard pathString != nil else{
            return [Quote]()
        }
        
        let url = URL(filePath: pathString!)
        
        do{
            let data = try Data(contentsOf: url)
            
            let decoder = JSONDecoder()
            
            do {
                let quoteData = try decoder.decode([Quote].self, from: data)
                
                for i in quoteData{
                    i.id = UUID()
                }
                
                return quoteData
                
                
                
            } catch {
                print(error)
            }
            
        } catch{
            //can't find the file
            print(error)
        }

        return [Quote]()
    }
}
