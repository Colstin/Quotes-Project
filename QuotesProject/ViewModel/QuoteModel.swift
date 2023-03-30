//
//  QuoteModel.swift
//  QuotesProject
//
//  Created by Colstin Donaldson on 3/28/23.
//

import Foundation

class QuoteModel:ObservableObject{
    
    @Published var quotesArray = [Quote]()
    
    init() {
        self.quotesArray = QuotesJsonParser.getLocalData()
    }
}
