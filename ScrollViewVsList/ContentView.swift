//
//  ContentView.swift
//  ScrollViewVsList
//
//  Created by Jake Nelson on 24/12/19.
//  Copyright © 2019 Jake Nelson. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
    @State private var people: [Person] = []
    
    var body: some View {
        TabView(selection: $selection){
            List {
                ForEach(self.people.indices){
                    i in
                    PersonRow(person: self.$people[i])
                }
            }
            .tabItem {
                VStack {
                    Image(systemName: "flame")
                    Text("List")
                }
            }
            .tag(0)
            ScrollView {
                ForEach(self.people.indices){
                    i in
                    PersonRow(person: self.$people[i])
                }
            }
            .tabItem {
                VStack {
                    Image(systemName: "wand.and.stars")
                    Text("ScrollView")
                }
            }
            .tag(1)
        }
        .onAppear{
            self.people = people_data
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct PersonRow: View {
    
    @Binding var person: Person
    
    var body: some View {
        HStack{
            TextField("First Name", text: self.$person.first_name)
        }
    }
}

struct Person {
    var id: Int
    var first_name: String
    var age: Int
}


// MARK: Demo data only

let people_data = [
    Person(id:1,first_name:"Lorri",age:37),
    Person(id:2,first_name:"Nadeen",age:48),
    Person(id:3,first_name:"Fleur",age:62),
    Person(id:4,first_name:"Clerkclaude",age:75),
    Person(id:5,first_name:"Adlai",age:39),
    Person(id:6,first_name:"Kassia",age:96),
    Person(id:7,first_name:"Gwynne",age:100),
    Person(id:8,first_name:"Opal",age:17),
    Person(id:9,first_name:"Carline",age:18),
    Person(id:10,first_name:"Ileane",age:85),
    Person(id:11,first_name:"Theobald",age:90),
    Person(id:12,first_name:"Winni",age:78),
    Person(id:13,first_name:"Seth",age:16),
    Person(id:14,first_name:"Jean",age:94),
    Person(id:15,first_name:"Lorrie",age:80),
    Person(id:16,first_name:"Dominic",age:12),
    Person(id:17,first_name:"Ely",age:75),
    Person(id:18,first_name:"Clarey",age:42),
    Person(id:19,first_name:"Doy",age:15),
    Person(id:20,first_name:"Pen",age:73),
    Person(id:21,first_name:"Tedra",age:56),
    Person(id:22,first_name:"Dot",age:53),
    Person(id:23,first_name:"Barb",age:3),
    Person(id:24,first_name:"Carlotta",age:80),
    Person(id:25,first_name:"Vally",age:17),
    Person(id:26,first_name:"Aleda",age:83),
    Person(id:27,first_name:"Ashlee",age:38),
    Person(id:28,first_name:"Konstance",age:2),
    Person(id:29,first_name:"Hammad",age:47),
    Person(id:30,first_name:"Juliana",age:14),
    Person(id:31,first_name:"Collete",age:62),
    Person(id:32,first_name:"Violet",age:87),
    Person(id:33,first_name:"Torr",age:24),
    Person(id:34,first_name:"Melli",age:100),
    Person(id:35,first_name:"Cass",age:77),
    Person(id:36,first_name:"Banky",age:100),
    Person(id:37,first_name:"Krystyna",age:55),
    Person(id:38,first_name:"Kaila",age:55),
    Person(id:39,first_name:"Vernice",age:99),
    Person(id:40,first_name:"Wolfgang",age:40),
    Person(id:41,first_name:"Tiena",age:51),
    Person(id:42,first_name:"Colline",age:56),
    Person(id:43,first_name:"Megen",age:62),
    Person(id:44,first_name:"Sutherlan",age:5),
    Person(id:45,first_name:"Milli",age:24),
    Person(id:46,first_name:"Al",age:44),
    Person(id:47,first_name:"Toni",age:15),
    Person(id:48,first_name:"Pietra",age:98),
    Person(id:49,first_name:"Libbie",age:56),
    Person(id:50,first_name:"Reinald",age:75),
    Person(id:51,first_name:"Trixy",age:26),
    Person(id:52,first_name:"Kaspar",age:23),
    Person(id:53,first_name:"Dana",age:92),
    Person(id:54,first_name:"Vicky",age:87),
    Person(id:55,first_name:"Hazel",age:33),
    Person(id:56,first_name:"Amabel",age:18),
    Person(id:57,first_name:"Hamlen",age:86),
    Person(id:58,first_name:"Lovell",age:47),
    Person(id:59,first_name:"Myriam",age:54),
    Person(id:60,first_name:"Eddy",age:80),
    Person(id:61,first_name:"Rita",age:94),
    Person(id:62,first_name:"Marget",age:100),
    Person(id:63,first_name:"David",age:80),
    Person(id:64,first_name:"Aaren",age:92),
    Person(id:65,first_name:"Orly",age:3),
    Person(id:66,first_name:"Devinne",age:57),
    Person(id:67,first_name:"Sophronia",age:26),
    Person(id:68,first_name:"Rene",age:96),
    Person(id:69,first_name:"Farrand",age:69),
    Person(id:70,first_name:"Ynez",age:78),
    Person(id:71,first_name:"Lulu",age:11),
    Person(id:72,first_name:"Cleopatra",age:40),
    Person(id:73,first_name:"Flossy",age:68),
    Person(id:74,first_name:"Theodore",age:97),
    Person(id:75,first_name:"Craggy",age:81),
    Person(id:76,first_name:"Joanne",age:37),
    Person(id:77,first_name:"Tatiana",age:55),
    Person(id:78,first_name:"Marcello",age:9),
    Person(id:79,first_name:"Bogey",age:20),
    Person(id:80,first_name:"Karil",age:66),
    Person(id:81,first_name:"Noland",age:68),
    Person(id:82,first_name:"Kelci",age:42),
    Person(id:83,first_name:"Charity",age:42),
    Person(id:84,first_name:"Kit",age:79),
    Person(id:85,first_name:"Adelaide",age:20),
    Person(id:86,first_name:"Eugenia",age:20),
    Person(id:87,first_name:"Rana",age:9),
    Person(id:88,first_name:"De witt",age:15),
    Person(id:89,first_name:"Adel",age:19),
    Person(id:90,first_name:"Angus",age:58),
    Person(id:91,first_name:"Venita",age:49),
    Person(id:92,first_name:"Florance",age:31),
    Person(id:93,first_name:"Gilly",age:10),
    Person(id:94,first_name:"Florie",age:55),
    Person(id:95,first_name:"Jessee",age:19),
    Person(id:96,first_name:"Mela",age:90),
    Person(id:97,first_name:"Korey",age:73),
    Person(id:98,first_name:"Melloney",age:25),
    Person(id:99,first_name:"Wren",age:67),
    Person(id:100,first_name:"Libbie",age:36)
]
