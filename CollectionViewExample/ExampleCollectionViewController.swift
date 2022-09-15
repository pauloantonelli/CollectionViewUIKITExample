//
//  ExampleCollectionViewController.swift
//  CollectionViewExample
//
//  Created by Paulo Antonelli on 14/09/22.
//

import UIKit

class ExampleCollectionViewController: UICollectionViewController {
    let datasourceList: Array<String> = [
        "https://img.freepik.com/fotos-gratis/a-paisagem-bonita-do-sol-da-praia-com-um-barco_1112-212.jpg?w=2000",
        "https://img.freepik.com/fotos-gratis/paisagem-de-nevoeiro-matinal-e-montanhas-com-baloes-de-ar-quente-ao-nascer-do-sol_335224-794.jpg?w=2000",
        "https://www.estudokids.com.br/wp-content/uploads/2020/02/o-que-e-paisagem-1200x675.jpg",
        "https://www.grupoescolar.com/wp-content/uploads/2021/03/paisagem-2C.jpg",
        "https://img.elo7.com.br/product/zoom/2D55940/papel-de-parede-paisagem-campo-arvores-area-verde-gg849-adesivo-campo.jpg",
        "https://cdn.shopify.com/s/files/1/0001/9202/0527/products/quadros-democrart-gustavo-jacob-ondas-paisagem-de-baixa-luz-beleza-incontavel-galeria-de-arte-obras-de-arte_7ba14f0d-e0e9-4dc2-adc0-2121e3fa734e_1200x1200.jpg?v=1528209171",
        "https://static.vecteezy.com/ti/fotos-gratis/p2/4881281-idilica-tropical-praia-paisagem-para-fundo-ou-papel-de-parede-design-de-turismo-para-verao-ferias-paisagem-feriado-destino-conceito-exotico-ilha-cena-relaxante-vista-paraiso-a-beira-mar-lagoa-foto.jpg",
        "https://1.bp.blogspot.com/-5XOjJvW09zQ/UjtEqc523_I/AAAAAAAAmTo/dOHXSTw3pF8/s1600/PAISAGEM.jpg",
        "https://3.bp.blogspot.com/-JXOKBhitPjU/V2v_yxqaTzI/AAAAAAAAADo/_fZEO81oq2oeudlSrXpm3Cyzamns9KytACLcB/s1600/NATUREZA_1.jpg",        "https://anselmohoffmann.com.br/wp-content/uploads/2021/05/como-usar-a-cor-na-fotografia-de-paisagem-1.jpg",
        "https://46781.cdn.simplo7.net/static/46781/sku/quadros-por-tema-paisagens-e-natureza-quadro-retangular-pintura-de-paisagem-litoranea--p-1623964496483.jpg",
        "https://img.elo7.com.br/product/zoom/1ED7D9B/papel-de-parede-paisagem-floresta-0019-adesivo-de-parede-papel-de-parede-decoracao-quarto.jpg",
    ]
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.datasourceList.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var cell = UICollectionViewCell()
        if let customCell = collectionView.dequeueReusableCell(withReuseIdentifier: "photoCell", for: indexPath) as? ExampleCollectionViewCell {
            customCell.updatePhoto(with: self.datasourceList[indexPath.row])
            cell = customCell
        }
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(self.datasourceList[indexPath.row])
    }
}
