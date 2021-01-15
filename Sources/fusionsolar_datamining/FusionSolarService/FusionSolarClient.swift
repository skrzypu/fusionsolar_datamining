import FoundationNetworking
import OpenCombine

class FusionSolarClient {
  let session: URLSession
  let configuration: FusionSolarConfiguration

  init(session: URLSession = URLSession.shared) {
    self.session = session
    configuration = FusionSolarConfiguration()
  }

  
}
