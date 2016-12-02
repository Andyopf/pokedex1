//
//  Pokemon.swift
//  pokedex-by-Andy
//
//  Created by Anan Lappikulthong on 12/3/2559 BE.
//  Copyright © 2559 Anan Lappikulthong. All rights reserved.
//

import Foundation

class Pokemon {
    private var _name: String!
    private var _pokedexId: Int!
    
    var name: String {
        return _name
    }
    var pokedexId: Int {
        return _pokedexId
    }
    
    init(name: String, pokedexId: Int) {
        self._name = name
        self._pokedexId = pokedexId
    }
}
