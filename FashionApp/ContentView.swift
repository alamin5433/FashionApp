//
//  ContentView.swift
//  FashionApp
//
//  Created by Al Amin on 14/5/20.
//  Copyright © 2020 Al Amin. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            VStack {
                       ZStack {
                           Text("Seasons")
                               //.fontWeight(.bold)
                               .font(.title)
                           //  .foregroundColor()
                           HStack(spacing: 10) {

                               Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                                   Image("Menu")
                                       .renderingMode(.original)
                               }
                               Spacer()
                               Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                                   Image("search")
                                       .renderingMode(.original)
                               }
                               Button(action: {}) {
                                   Image("noti")
                                       .renderingMode(.original)
                               }

                               Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                                   Image("shop")
                                       .renderingMode(.original)
                               }
                           }
                           .padding()

                       }

                       .background(Color.white)


                       VStack (spacing: 15){
                           DropDown()

                           Navigation()
                           ScrollEffectView()

                       }
                       .padding(.bottom,25)
                       .background(Color("Color"))
                       .edgesIgnoringSafeArea(.all)

                   }
        .navigationBarTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        }
       // DetailView()
       
    }
}

struct type: Identifiable {
    var id: Int
    var rows: [row]
}

struct row: Identifiable {
    var id: Int
    var name: String
    var price: String
    var image: String
    
}

var sizes = ["S","M","X","XL"]

var types = ["Dress","Pants","Blazers","Jackets"]

var datas = [
    
    
    type(id: 0,rows: [row(id:0,name: "Fit And Flare", price: "$199", image: "p11"),row(id:1,name: "Empire Dress", price: "$136", image: "p12")]),
    
    type(id: 2,rows: [row(id:0,name: "Summer Vibes", price: "$136", image: "p21"),row(id:1,name: "Flora Fun", price: "$150", image: "p22")]),
    
    type(id: 3,rows: [row(id:0,name: "Fit And Flare", price: "$199", image: "p11"),row(id:1,name: "Empire Dress", price: "$136", image: "p12")]),
    
    type(id: 4,rows: [row(id:0,name: "Summer Vibes", price: "$136", image: "p21"),row(id:1,name: "Flora Fun", price: "$150", image: "p22")]),
    
]


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct DropDown: View {
    var body: some View {
        HStack {
            HStack {
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    HStack {
                        Text("Casuals Dress")
                            .foregroundColor(.black)
                        Spacer()
                        Image("down")
                            .renderingMode(.original)
                    }
                    .padding()
                    .background(Color.white)
                }
                
            }
            //.padding()
            Spacer()
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Image("filter")
                    .renderingMode(.original)
            }
            .padding()
            .background(Color.white)
        }
        .padding()
        .padding(.bottom, 0)
    }
}

struct Navigation: View {
    @State private var state = 0
    var body: some View {
        HStack {
            
            Button(action: {
                self.state = 0
            }) {
                Text("Dress")
                    .foregroundColor(state == 0 ?.white : .black)
                    .padding(.horizontal, 10)
                    .padding(.vertical, 15)
                    .background(state == 0 ? Color.black : Color.white)
                    .cornerRadius(12)
            }
            Spacer()
            Button(action: {
                self.state = 1
            }) {
                Text("Pants")
                    .foregroundColor(state == 1 ?.white : .black)
                    .padding(.horizontal, 10)
                    .padding(.vertical, 15)
                    .background(state == 1 ? Color.black : Color.white)
                    .cornerRadius(12)
            }
            Spacer()
            Button(action: {
                self.state = 3
            }) {
                Text("Blazers")
                    .foregroundColor(state == 3 ?.white : .black)
                    .padding(.horizontal, 10)
                    .padding(.vertical, 15)
                    .background(state == 3 ? Color.black : Color.white)
                    .cornerRadius(12)
            }
            Spacer()
            Button(action: {
                self.state = 4
            }) {
                Text("Jackets")
                    .foregroundColor(state == 4 ?.white : .black)
                    .padding(.horizontal, 10)
                    .padding(.vertical, 15)
                    .background(state == 4 ? Color.black : Color.white)
                    .cornerRadius(12)
            }
        }
        .padding(.horizontal)
    }
}

struct ScrollEffectView: View {

    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            ForEach(datas) { data in
                HStack(spacing: 15){
                    ForEach(data.rows){ row in
                        Card(row: row)
                    }

                }
                .padding(.horizontal)
            }

        }
    }
}

struct DetailView: View {
    @Binding var show: Bool
    @State private var size = ""
    @State private var height = UIScreen.main.bounds.height
    
    var body: some View {
      
            VStack {
                HStack(spacing: 10) {
                    
                    Button(action: {
                        self.show.toggle()
                        
                    }) {
                        Image("Back")
                            .renderingMode(.original)
                    }
                    Spacer()
                    Button(action: {}) {
                        Image("noti")
                            .renderingMode(.original)
                    }
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Image("shop")
                            .renderingMode(.original)
                    }
                }
                .padding(.bottom,15)
                .navigationBarTitle("")
                .navigationBarHidden(true)
                .navigationBarBackButtonHidden(true)
                
                
                if height > 800 {
                   Image("pic").resizable()
                    
                    VStack(alignment: .leading , spacing: 15) {
                            
                            HStack {
                                VStack(alignment: .leading , spacing: 10)  {
                                    Text("Summer Vibes")
                                        .font(.title)
                                    Text("$199")
                                        .fontWeight(.bold)
                                    
                                }
                                Spacer()
                                HStack(spacing: 10){
                                    Circle().fill(Color.green).frame(width: 20, height: 20)
                                    Circle().fill(Color.blue).frame(width: 20, height: 20)
                                    Circle().fill(Color.red).frame(width: 20, height: 20)
                                }
                            }
                            Text("Fitted top made from a polyamide blend. Features wide straps and chest reinforcement.")
                            Text("Select Size")
                                .padding(.bottom, -10)
                            HStack {
                                ForEach(sizes, id: \.self){ size in
                                    Button(action: {
                                        self.size = size
                                    }) {
                                        Text(size)
                                            .foregroundColor(.black)
                                        .padding()
                                            .border(Color.black, width: self.size == size ? 1.5 :  0)
                                    }
                                }
                                
                            }
                            HStack {
                                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                                    Text("Add to Cart")
                                    .padding()
                                        .border(Color.black, width: 1.4)
                                }
                                .foregroundColor(.black)
                                
                                Spacer()
                                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                                    Text("Buy Now")
                                    .padding()
                                    
                                }
                                .foregroundColor(.white)
                                .background(Color.black)
                            .cornerRadius(10)
                            }
                            
                        }
                        .padding()
                        .background(Color.white)
                    .clipShape(RoundedCorner())
                        .offset(y: -50)
                        .padding(.bottom, -50)
                }else{
                    ScrollView(.vertical, showsIndicators: false) {
                        Image("pic").resizable()
                            .frame( height: 300)
                        VStack(alignment: .leading , spacing: 15) {
                                
                                HStack {
                                    VStack(alignment: .leading , spacing: 10)  {
                                        Text("Summer Vibes")
                                            .font(.title)
                                        Text("$199")
                                            .fontWeight(.bold)
                                        
                                    }
                                    Spacer()
                                    HStack(spacing: 10){
                                        Circle().fill(Color.green).frame(width: 20, height: 20)
                                        Circle().fill(Color.blue).frame(width: 20, height: 20)
                                        Circle().fill(Color.red).frame(width: 20, height: 20)
                                    }
                                }
                                Text("Fitted top made from a polyamide blend. Features wide straps and chest reinforcement.")
                                Text("Select Size")
                                    .padding(.bottom, -10)
                                HStack {
                                    ForEach(sizes, id: \.self){ size in
                                        Button(action: {
                                            self.size = size
                                        }) {
                                            Text(size)
                                                .foregroundColor(.black)
                                            .padding()
                                                .border(Color.black, width: self.size == size ? 1.5 :  0)
                                        }
                                    }
                                    
                                }
                                HStack {
                                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                                        Text("Add to Cart")
                                        .padding()
                                            .border(Color.black, width: 1.4)
                                    }
                                    .foregroundColor(.black)
                                    
                                    Spacer()
                                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                                        Text("Buy Now")
                                        .padding()
                                        
                                    }
                                    .foregroundColor(.white)
                                    .background(Color.black)
                                .cornerRadius(10)
                                }
                                
                            }
                            .padding()
                            .background(Color.white)
                        .clipShape(RoundedCorner())
                            .offset(y: -50)
                            .padding(.bottom, -50)
                    }
                }
                
                
            }
            .padding()
   
        
    }
}

struct RoundedCorner : Shape {
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft, .topRight], cornerRadii: CGSize(width: 35, height: 35))
        return Path(path.cgPath)
    }
    
    
}

struct Card: View {
    @State private var show = false
    var row : row
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {

            NavigationLink(destination: DetailView(show: self.$show), isActive: self.$show) {

                Image(row.image)
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width / 2 - 25, height: 240)
                    .cornerRadius(15)
            }

            HStack {
                VStack(alignment: .leading, spacing: 8) {
                    Text(row.name)
                    Text(row.price)
                        .fontWeight(.bold)
                }

                Spacer()
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Image("option")
                        .renderingMode(.original)
                    //.background(Color("Color"))
                    // .shadow(radius: 10)
                }
                .padding(.horizontal)
            }

        }
    }
}
