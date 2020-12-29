//
//  ContentView.swift
//  UI-90
//
//  Created by にゃんにゃん丸 on 2020/12/29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false, content: {
            GeometryReader{reder in
                
                Image("p2")
                    .resizable()
                    .offset(y: reder.frame(in:.global).minY > 0 ? -reder.frame(in:.global).minY : 0 )
                    .frame(height: reder.frame(in:.global).minY > 0 ? 300 + reder.frame(in:.global).minY : 300)
                
                    
                
                
            }
            .frame(height: 300)
            
            ForEach(1..<18){_ in
                
                HStack{
                    
                    Image("p1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50, height: 50)
                        .cornerRadius(10)
                    
                    VStack(spacing:15){
                        
                        Text("Lion")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color.red)
                            .padding()
                        
                        Text("百獣の王")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.red)
                            .padding()
                        
                        
                            
                            
                            
                            
                    }
                    Spacer()
                    
                    
                }
                .padding(.leading)
            }
            
            
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
