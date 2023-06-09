
//
//  RegisterViewModel.swift
//  ShopifyCustomer
//
//  Created by Mac on 07/06/2023.
//

import Foundation


class RegisterViewModel{
    
   // var customer:Customer
    
    var bindingSignUp:(()->())?
    
    var statusCode : Int? {
        didSet {
            bindingSignUp!()
        }
    }
    
    
    var network:NetworkProtocol
    
    init(network: NetworkProtocol) {
        self.network = network
    }
    
    
    
    func registerCustomer(customer:Customer){
        network.customerRegister(customer: customer) { check in
            self.statusCode = check
        }
        
    }
    

    
}
