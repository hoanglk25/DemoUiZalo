//
//  ContactModel.swift
//  DemoZalo
//
//  Created by Hoàng Đức on 09/11/2022.
//

import Foundation

struct Contact {
var name: String
var avatarImage: String
    var isSelectPhone: Bool = false
    var isSelectVideo: Bool = false
}

struct Container {
    var id:String
    var contacts:[Contact]
    
}

func fetch() -> [Container] {
    let contact1 = Contact(name: "Anh Quân", avatarImage: "avatar")
    let contact2 = Contact(name: "Anh Tuấn", avatarImage: "avatar")
    let contact3 = Contact(name: "Anh Cam", avatarImage: "avatar")
    let contact4 = Contact(name: "Anh Hải", avatarImage: "avatar")
    let contact5 = Contact(name: "Chị Quỳnh", avatarImage: "avatar")
    let contact6 = Contact(name: "Mom", avatarImage: "avatar")
    let contact7 = Contact(name: "Dad", avatarImage: "avatar")
    let contact8 = Contact(name: "Chị gái", avatarImage: "avatar")
    let contact9 = Contact(name: "Em yêu", avatarImage: "avatar")
    let contact10 = Contact(name: "Bảo què", avatarImage: "avatar")
    let contact11 = Contact(name: "Đức Yến", avatarImage: "avatar")
    let contact12 = Contact(name: "Trang", avatarImage: "avatar")
    let contact13 = Contact(name: "Trinh", avatarImage: "avatar")
    let contact14 = Contact(name: "Hải", avatarImage: "avatar")
    
    let container1 = Container(id: "A", contacts: [contact1, contact2, contact3, contact4])
    let container2 = Container(id: "B", contacts: [contact10])
    let container3 = Container(id: "C", contacts: [contact5, contact8])
    let container4 = Container(id: "D", contacts: [contact7, contact11])
    let container5 = Container(id: "E", contacts: [contact9])
    let container6 = Container(id: "H", contacts: [contact14])
    let container7 = Container(id: "M", contacts: [contact6])
    let container8 = Container(id: "T", contacts: [contact12, contact13])
    
    return [container1, container2, container3, container4, container5, container6, container7, container8]
    
    
}
