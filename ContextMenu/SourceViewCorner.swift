//
//  SourceViewCorner.swift
//  ThingsUI
//
//  Created by Ryan Nystrom on 3/10/18.
//  Copyright © 2018 Ryan Nystrom. All rights reserved.
//

import UIKit

internal struct SourceViewCorner {

    enum Position: Int {
        case topLeft
        case topRight
        case bottomLeft
        case bottomRight

        var xModifier: CGFloat {
            switch self {
            case .topLeft, .bottomLeft: return -1
            case .topRight, .bottomRight: return 1
            }
        }

        var yModifier: CGFloat {
            switch self {
            case .topLeft, .topRight: return -1
            case .bottomLeft, .bottomRight: return 1
            }
        }

        var xSizeModifier: CGFloat {
            switch self {
            case .topLeft, .bottomLeft: return -1
            case .topRight, .bottomRight: return 0
            }
        }

        var ySizeModifier: CGFloat {
            switch self {
            case .topLeft, .topRight: return -1
            case .bottomLeft, .bottomRight: return 0
            }
        }

    }

    let point: CGPoint
    let position: Position

}
