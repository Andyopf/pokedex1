//
//  Pokemon.swift
//  pokedex-by-Andy
//
//  Created by Anan Lappikulthong on 12/3/2559 BE.
//  Copyright © 2559 Anan Lappikulthong. All rights reserved.
//

import Foundation
import Alamofire

class Pokemon {
    private var _name: String!
    private var _pokedexId: Int!
    private var _description: String!
    private var _type: String!
    private var _defense: String!
    private var _height: String!
    private var _weight: String!
    private var _attack: String!
    private var _nextEvolutionTxt: String!
    private var _pokemonUrl: String!
    
    var name: String {
        return _name
    }
    var pokedexId: Int {
        return _pokedexId
    }
    
//    http://pokeapi.co/api/v2/pokemon/1/
    
    init(name: String, pokedexId: Int) {
        self._name = name
        self._pokedexId = pokedexId
        
        _pokemonUrl = "\(URL_BASE)\(URL_POKEMON)\(self._pokedexId)/"
    }
    
    func downloadPokemonDetails(_ completed: DownloadComplete) {
        
        let url = URL(string: _pokemonUrl)!
        
        Alamofire.request(url).responseJSON { response in
            let result = response.result
            print(result.value.debugDescription)
            
//            if let dict = result.value as? Dictionary<String, AnyObject> {
//                
//                if let weight = dict["weight"] as? String {
//                    self._weight = weight
//                }
//                
//                if let height = dict["height"] as? String {
//                    self._height = height
//                }
//                
//                if let attack = dict["attack"] as? Int {
//                    self._attack = "\(attack)"
//                }
//                
//                if let defense = dict["defense"] as? Int {
//                    self._defense = "\(defense)"
//                }
//                
//                print(self._weight)
//                print(self._height)
//                print(self._attack)
//                print(self._defense)
            
//                if let types = dict["type"] as? [Dictionary<String, String>], types.count > 0 {
//                    print(types.debugDescription)
//                }
//            }
       }
    }
}
