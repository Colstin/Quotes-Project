//
//  QuotesDetailView.swift
//  QuotesProject
//
//  Created by Colstin Donaldson on 3/29/23.
//

import SwiftUI

struct QuotesDetailView: View {
    
    var quote:Quote
    @ObservedObject var viewModel = QuoteModel()
    
    var body: some View {
        ScrollView{
            
            ZStack {
                
                Image(quote.image)
                    .frame(width: 300.0, height: 300.0)
                    
                VStack{
                    //MARK: Title/Author
                    Text("History of")
                    Text(quote.author)
                        .font(.title)
                   
                    
                    
                    //MARK: Details
                    //Text(quote.details[0])
                    ForEach(quote.details, id: \.self){ detail in
                        Text(detail)
                    }
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                }
                .foregroundColor(Color.white)
                .fontWeight(.bold)
                .background(Color.black.opacity(0.4))
            }
            .padding()
        }
    }// body
}

struct QuotesDetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        let viewModel = QuoteModel()
        
        QuotesDetailView(quote: viewModel.quotesArray[0])
    }
}

//This is showing that we are building a specific window for each data from our json. We use quote:Quote becuase we only want to use 1 of these models per page. The quoteArray is used to get all the data because that is where our json data is parsed and stored. 
