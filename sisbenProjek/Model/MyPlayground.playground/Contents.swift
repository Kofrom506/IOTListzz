//enum Taxon {
//    case common(name: String)
//    case genus(name: String)
//    case species(name: String)
//    case subspecies(name: String)
//    case group(name: String)
//    case cultivar(name: String)
//    case variety(name: String)
//    case extended(name: String)
//
//    var typeName: String {
//        switch self {
//        case .common:       return "Common"
//        case .genus:        return "Genus"
//        case .species:      return "Species"
//        case .subspecies:   return "Subspecies"
//        case .group:        return "Group"
//        case .cultivar:     return "Cultivar"
//        case .variety:      return "Variety"
//        case .extended:     return "Taxonomny"
//        }
//    }
//
//    var formatted: String {
//        switch self {
//        case .common(let name):       return name.capitalized
//        case .genus(let name):        return name.capitalized
//        case .species(let name):      return name.lowercased()
//        case .subspecies(let name):   return String(format: "ssp. %@", name)
//        case .group(let name):        return String(format: "(%@ Group)", name)
//        case .cultivar(let name):     return String(format: "cv. %@", name)
//        case .variety(let name):      return String(format: "var. %@", name)
//        case .extended(let name):     return name.capitalized
//        }
//    }
//}
//
//var taxon: Taxon = Taxon.common(name: "String")
//print(taxon.typeName)
guard let evan: Int = 10
evan = 11
print(evan)
