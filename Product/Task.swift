//
//  Task.swift
//  課題プロダクト
//
//  Created by 大沼朝陽 on 2023/09/08.
//

import Foundation
import RealmSwift

class Task: Object{
    @Persisted var title: String = ""
    @Persisted var isMarked: Bool = false
    @Persisted var date1: Date
    @Persisted var category: Category?
}


