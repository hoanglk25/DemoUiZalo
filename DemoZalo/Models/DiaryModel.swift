//
//  DiaryModel.swift
//  DemoZalo
//
//  Created by Hoàng Đức on 09/11/2022.
//

import Foundation
 
struct Diary {
    var avatar:String
    var name:String
    var time: String
    var content: String
    var contentImage: String
}

struct ContainerDiary {
    var diaries:[Diary]
}

func fakeData() -> [ContainerDiary] {
    let diary1 = Diary(avatar: "avatar", name: "Đức Hoàng", time: "15h last", content: "Chào mừng đến với bài viết thứ ba trongloạt bài về động vật hoang dã của chúng tôi. Trong loạt bài này, chúng tôi sẽ đề cập đến những sự thật thú vị về các loài động vật có nguy cơ tuyệt chủng và những gì chúng tôi có thể làm để giúp bảo tồn quần thể của các loài động vật này. Trong ấn bản này, chúng tôi sẽ nói về người thợ săn dũng mãnh và không hề sợ hãi: con hổ.",  contentImage: "ga")
    let diary2 = Diary(avatar: "avatar", name: "Đức Hoàng", time: "15h last", content: "Chào mừng đến với bài viết thứ ba trongloạt bài về động vật hoang dã của chúng tôi. Trong loạt bài này, chúng tôi sẽ đề cập đến những sự thật thú vị về các loài động vật có nguy cơ tuyệt chủng và những gì chúng tôi có thể làm để giúp bảo tồn quần thể của các loài động vật này. Trong ấn bản này, chúng tôi sẽ nói về người thợ săn dũng mãnh và không hề sợ hãi: con hổ.",  contentImage: "ho")
    let diary3 = Diary(avatar: "avatar", name: "Đức Hoàng", time: "15h last", content: "Chào mừng đến với bài viết thứ ba trongloạt bài về động vật hoang dã của chúng tôi. Trong loạt bài này, chúng tôi sẽ đề cập đến những sự thật thú vị về các loài động vật có nguy cơ tuyệt chủng và những gì chúng tôi có thể làm để giúp bảo tồn quần thể của các loài động vật này. Trong ấn bản này, chúng tôi sẽ nói về người thợ săn dũng mãnh và không hề sợ hãi: con hổ.",  contentImage: "chim")
    let diary4 = Diary(avatar: "avatar", name: "Đức Hoàng", time: "15h last", content: "Chào mừng đến với bài viết thứ ba trongloạt bài về động vật hoang dã của chúng tôi. Trong loạt bài này, chúng tôi sẽ đề cập đến những sự thật thú vị về các loài động vật có nguy cơ tuyệt chủng và những gì chúng tôi có thể làm để giúp bảo tồn quần thể của các loài động vật này. Trong ấn bản này, chúng tôi sẽ nói về người thợ săn dũng mãnh và không hề sợ hãi: con hổ.",  contentImage: "meo")
    let diary5 = Diary(avatar: "avatar", name: "Đức Hoàng", time: "15h last", content: "Chào mừng đến với bài viết thứ ba trongloạt bài về động vật hoang dã của chúng tôi. Trong loạt bài này, chúng tôi sẽ đề cập đến những sự thật thú vị về các loài động vật có nguy cơ tuyệt chủng và những gì chúng tôi có thể làm để giúp bảo tồn quần thể của các loài động vật này. Trong ấn bản này, chúng tôi sẽ nói về người thợ săn dũng mãnh và không hề sợ hãi: con hổ.",  contentImage: "khi")
    
    let container1 = ContainerDiary(diaries: [diary1, diary2, diary3, diary4, diary5])
    return [container1]
}
