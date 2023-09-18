//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Cristóbal Contreras on 17-09-23.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
}
