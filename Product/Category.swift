//
//  Category.swift
//  Product
//
//  Created by 大沼朝陽 on 2023/09/09.
//

import Foundation
import RealmSwift

class Category: Object{
    @Persisted var title: String = ""
}
