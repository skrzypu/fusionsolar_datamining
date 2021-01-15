import Foundation
import Yams

struct FusionSolarCredentials: Decodable {
    var user: String
    var password: String
}

final class FusionSolarConfiguration {
    private var configurationPath: URL 

    //Each time is loaded because of security reason
    var fusionSolarCredentials: FusionSolarCredentials {
        guard let data = try? Data(contentsOf: configurationPath) else {
            logger.error("File wrongly loaded")
            assertionFailure()
            return FusionSolarCredentials(user: "", password: "")
        }
        let decoder = YAMLDecoder()
        guard let credential  = try? decoder.decode(FusionSolarCredentials.self, from: data) else {
            print("Didn't found")
            assertionFailure()
            return FusionSolarCredentials(user: "", password: "")
        }
        return credential
    }

    init(path: String = "configuration.yaml") {
        var path = Bundle.main.resourcePath!
        path.append("/configuration.yaml")
        configurationPath = URL(fileURLWithPath: path)
    }
}