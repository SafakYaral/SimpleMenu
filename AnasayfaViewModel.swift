//
//  AnasayfaViewModel.swift
//  YemeklerUygulamasi
//
//  Created by Kasım on 19.02.2023.
//

import Foundation

class AnasayfaViewModel : ObservableObject {
    @Published var yemeklerListesi = [Yemekler]()
    
    let db:FMDatabase?
    
    init(){
        let veritabaniYolu = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let hedefYol = URL(fileURLWithPath: veritabaniYolu).appendingPathComponent("yemekler.sqlite")
        db = FMDatabase(path: hedefYol.path)
    }
    
    func yemekleriYukle(){
        db?.open()
        
        var liste = [Yemekler]()
        
        do{
            let result = try db!.executeQuery("SELECT * FROM yemekler", values: nil)
            
            while result.next() {
                let yemek_id = Int(result.string(forColumn: "yemek_id"))!
                let yemek_adi = result.string(forColumn: "yemek_adi")!
                let yemek_resim_adi = result.string(forColumn: "yemek_resim_adi")!
                let yemek_fiyat = Int(result.string(forColumn: "yemek_fiyat"))!
                
                let yemek = Yemekler(yemek_id: yemek_id, yemek_adi: yemek_adi, yemek_resim_adi: yemek_resim_adi, yemek_fiyat: yemek_fiyat)
                liste.append(yemek)
            }
            
            yemeklerListesi = liste
        }catch{
            print(error.localizedDescription)
        }
        
        db?.close()
    }
}
