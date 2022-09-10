//
//  ContentView.swift
//  Classwork3A
//
//  Created by khaled falah alazemi  on 10/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State var grade = ""
    @State var letter = "?"
    var body: some View {
        ZStack{
            Color.teal
                .ignoresSafeArea()
            VStack{
                Text("حاسبة الدرجات")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.white)
                    .padding()
                ZStack{
                Circle()
                    .foregroundColor(.white)
                    .frame(width: 200, height: 200)
                    .blur(radius: 80)
                Image("calc")
                    .resizable()
                    .frame(width: 200, height: 200)
                    
                }
                .padding(30)
                TextField("ادخل درجتك هنا", text: $grade)
                    .padding()
                    .background(.white)
                    .frame(width: 350)
                    
                Text("احسب درجتي")
                    .font(.title2)
                    .bold()
                    .padding()
                    .background(.yellow)
                    .clipShape(RoundedRectangle(cornerRadius: 50))
                    .padding(20)
                    .onTapGesture {
                        if ( ( Int(grade) ?? 0 ) >= 90  ) {
                            letter = "امتياز"
                        } else if ( ( Int(grade) ?? 0 ) < 90 && ( Int(grade) ?? 0 ) >= 80  ) {
                            letter = "جيد جدًا"
                        }
                        else if ( ( Int(grade) ?? 0 ) < 80 && ( Int(grade) ?? 0 ) >= 70  ) {
                            letter = "جيد"
                        }
                        else if ( ( Int(grade) ?? 0 ) < 70 && ( Int(grade) ?? 0 ) >= 60  ) {
                            letter = "مقبول"
                        }
                        else if ( ( Int(grade) ?? 0 ) < 60 ) {
                            letter = "راسب"
                        }

                        
                    }
                    
                Text("لقد حصلت على درجة")
                    .bold()
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()
                Text(letter)
                    .font(.largeTitle)
                    .bold()
                Spacer()
                    
                                    
                
                
                    
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
