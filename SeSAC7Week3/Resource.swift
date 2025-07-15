//
//  Resource.swift
//  SeSAC7Week3
//
//  Created by 서지민 on 7/15/25.
//

import UIKit

// Resource 사용할 때 주로 static을 쓴다
// 하지만 static은 데이터에 저장되고 한 번 호출되면 앱을 끄기 전까지 계속 공간을 차지하고 있기 때문에 숨겨진 페이지에 숨어있어서 100명 중에 1명만 볼 정도의 빈도라면 이렇게 쓰는게 비효율적일수도
struct Color {
//    let jackRed = UIColor.red   // 인스턴스 저장 프로퍼티. static이 없고 =가 있음
    static let jackRed = UIColor.red    // 타입 저장 프로퍼티. static과 =가 있음
    let jackBlack = UIColor.black
}

struct Image {
    static let star = UIImage(systemName: "star.fill")
}
