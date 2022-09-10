//
//  ContentView.swift
//  Classwork3B
//
//  Created by khaled falah alazemi  on 10/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State var count1 = 0
    @State var count2 = 0
    @State var count3 = 0
    
    var body: some View {
        VStack{
            Image("images")
                .resizable()
                .frame(width: 250, height: 250)
                .padding()
            
            ExtractedView(count: $count1, text: "استغفرالله العظيم")
                .padding()
            ExtractedView(count: $count2, text: "سبحان الله وبحمده")
                .padding()
            ExtractedView(count: $count3, text: "سبحان الله العظيم")
                .padding()
            Spacer()
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ExtractedView: View {
    @Binding var count: Int
    var text : String
    var body: some View {
        HStack{
            ZStack{
                Text("\(text)")
                    .font(.title)
                    .foregroundColor(.teal)
                    .bold()
                    .blur(radius: 10)
                Text("\(text)")
                    .font(.title)
                    .bold()
            }
            ZStack{
                Circle()
                    .frame(width: 70, height: 70)
                    .foregroundColor(.teal)
                
                Text("\(count)")
                    .font(.title)
                    .bold()
                    .foregroundColor(.white)
                    .onTapGesture {
                        count = count + 1
                    }
            }
            
            
        }
    }
}
