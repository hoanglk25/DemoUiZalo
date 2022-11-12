//
//  ExtensionModel.swift
//  DemoZalo
//
//  Created by Hoàng Đức on 09/11/2022.
//

import Foundation
struct Extension {
    var imageView:String
    var detailExtension:String
}

struct ContainersExtension{
    var extensions:[Extension]
}

func fetchData() -> [ContainersExtension] {
    let extension1 = Extension(imageView: "bag.fill", detailExtension: "Shop")
    let extension2 = Extension(imageView: "house.fill", detailExtension: "Home & Car")
    let extension3 = Extension(imageView: "face.smiling.inverse", detailExtension: "Sticker")
    let extension4 = Extension(imageView: "paperplane.fill", detailExtension: "eGovernment")
    let extension5 = Extension(imageView: "wallet.pass.fill", detailExtension: "Ví")
    let extension6 = Extension(imageView: "iphone.radiowaves.left.and.right", detailExtension: "Nạp tiền ĐT")
    let extension7 = Extension(imageView: "dollarsign.square.fill", detailExtension: "Hoá Đơn")
    let extension8 = Extension(imageView: "network", detailExtension: "Data")

    
    let container1 = ContainersExtension(extensions: [extension1, extension2, extension3, extension4, extension5, extension6, extension7, extension8])
    
    return [container1]
}
