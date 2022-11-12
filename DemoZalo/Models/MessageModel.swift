//
//  File.swift
//  DemoZalo
//
//  Created by Hoàng Đức on 09/11/2022.
//

import Foundation

struct Message {
    var imageName: String
    var name: String
    var detailMessage: String
    var time: String
}

struct ContainerMessages{
    var messages:[Message]
}

func fetch() -> [ContainerMessages] {
    let message1 = Message(imageName: "avatar", name: "Đức Hoàng", detailMessage: "Bạn ăn cơm chưa ?", time: "15h")
    let message2 = Message(imageName: "avatar", name: "Đức Hoàng", detailMessage: "Bạn ăn cơm chưa ?", time: "15h")
    let message3 = Message(imageName: "avatar", name: "Đức Hoàng", detailMessage: "Bạn ăn cơm chưa ?", time: "15h")
    let message4 = Message(imageName: "avatar", name: "Đức Hoàng", detailMessage: "Bạn ăn cơm chưa ?", time: "15h")
    let message5 = Message(imageName: "avatar", name: "Đức Hoàng", detailMessage: "Bạn ăn cơm chưa ?", time: "15h")
    let message6 = Message(imageName: "avatar", name: "Đức Hoàng", detailMessage: "Bạn ăn cơm chưa ?", time: "15h")
    let message7 = Message(imageName: "avatar", name: "Đức Hoàng", detailMessage: "Bạn ăn cơm chưa ?", time: "15h")
    let message8 = Message(imageName: "avatar", name: "Đức Hoàng", detailMessage: "Bạn ăn cơm chưa ?", time: "15h")
    let message9 = Message(imageName: "avatar", name: "Đức Hoàng", detailMessage: "Bạn ăn cơm chưa ?", time: "15h")
    let message10 = Message(imageName: "avatar", name: "Đức Hoàng", detailMessage: "Bạn ăn cơm chưa ?", time: "15h")
    let message11 = Message(imageName: "avatar", name: "Đức Hoàng", detailMessage: "Bạn ăn cơm chưa ?", time: "15h")
    let message12 = Message(imageName: "avatar", name: "Đức Hoàng", detailMessage: "Bạn ăn cơm chưa ?", time: "15h")
    let message13 = Message(imageName: "avatar", name: "Đức Hoàng", detailMessage: "Bạn ăn cơm chưa ?", time: "15h")
    
    
    let container = ContainerMessages(messages: [message1, message2, message3, message4, message5, message6, message7, message8, message9, message10, message11, message12, message13])
    return [container]
}
