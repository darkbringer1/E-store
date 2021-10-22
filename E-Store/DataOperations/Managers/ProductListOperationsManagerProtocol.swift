//
//  ProductListOperationsManagerProtocol.swift
//  E-Store
//
//  Created by DarkBringer on 22.10.2021.
//

import Foundation
import RxSwift

protocol ProductListOperationsManagerProtocol {
    
    func getProductListData()
    
    func subscribeDataPublisher(with completion: @escaping ProductListResultBlock) -> Disposable
    
}