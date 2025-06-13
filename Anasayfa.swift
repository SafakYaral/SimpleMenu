//
//  ContentView.swift
//  YemeklerUygulamasi
//
//  Created by Kasım on 17.02.2023.
//

import SwiftUI

struct Anasayfa: View {
    @ObservedObject var viewModel = AnasayfaViewModel()
    
    var body: some View {
        NavigationStack{
            List{
                ForEach(viewModel.yemeklerListesi){ yemek in
                    NavigationLink(destination: DetaySayfa(yemek: yemek)){
                        YemekSatir(yemek: yemek)
                    }
                }
            }.navigationTitle("Yemekler")
                .onAppear{
                    veritabaniKopyala()
                    viewModel.yemekleriYukle()
                }
        }
    }
    
    func veritabaniKopyala(){
        let bundle = Bundle.main.path(forResource: "yemekler", ofType: ".sqlite")
        
        let veritabaniYolu = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        
        let hedefYol = URL(fileURLWithPath: veritabaniYolu).appendingPathComponent("yemekler.sqlite")
        
        let fm = FileManager.default
        
        if fm.fileExists(atPath: hedefYol.path){
            print("Veritabanı daha önce kopyalandı.")
        }else{
            do{
                try fm.copyItem(atPath: bundle!, toPath: hedefYol.path)
            }catch{
                print(error.localizedDescription)
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Anasayfa()
    }
}
