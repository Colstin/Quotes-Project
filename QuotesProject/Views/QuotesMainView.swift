//
//  ContentView.swift
//  QuotesProject
//
//  Created by Colstin Donaldson on 3/28/23.
//

import SwiftUI

struct QuotesMainView: View {
    
    @ObservedObject var viewModel = QuoteModel()
  
    
    var body: some View {
           
        NavigationView {
            ScrollView {
                ForEach(viewModel.quotesArray){ r in
                    NavigationLink {
                        // MARK: Screen we want to go to
                        QuotesDetailView(quote: r)
                    } label: {
                        ZStack{
                            Image(r.image)
                                .resizable()
                                .cornerRadius(20)
                                //.aspectRatio(contentMode: .fit)
                                
                            VStack(alignment: .leading) {
                                Text(r.quote)
                                    .font(.largeTitle)
                                    .padding(.bottom)
                                Text("-" + r.author)
                            }
                            .foregroundColor(Color.white)
                            .fontWeight(.bold)
                            .padding(.horizontal)
                        }
                        .padding([.leading, .bottom, .trailing])
                        .frame(width: 400, height: 400, alignment: .center)
                        
                    }
                }
            }
            .navigationTitle("Quotes")
        }
            
    }//body
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        QuotesMainView()
    }
}


/* To do:
 1. Fix the image size
 
 */
