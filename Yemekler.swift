//
//  Yemekler.swift
//  YemeklerUygulamasi
//
//  Created by Kasım on 17.02.2023.
//

import Foundation

class Yemekler : Identifiable {
    var yemek_id:Int?
    var yemek_adi:String?
    var yemek_resim_adi:String?
    var yemek_fiyat:Int?
    
    init(){
        
    }
    
    init(yemek_id: Int, yemek_adi: String, yemek_resim_adi: String, yemek_fiyat: Int) {
        self.yemek_id = yemek_id
        self.yemek_adi = yemek_adi
        self.yemek_resim_adi = yemek_resim_adi
        self.yemek_fiyat = yemek_fiyat
    }
}
