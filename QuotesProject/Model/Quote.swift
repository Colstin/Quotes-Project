//
//  Quote.swift
//  QuotesProject
//
//  Created by Colstin Donaldson on 3/28/23.
//

import Foundation

class Quote:Identifiable,Decodable{
    
    var id:UUID?
    var author:String
    var quote:String
    var image:String
    var details:[String]
}
