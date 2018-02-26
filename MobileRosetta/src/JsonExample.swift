import Foundation

class JsonExample {

    func parse(_ text:String) -> WikiPage? {
        let jsonData = text.data(using: .utf8)!
        let decoder = JSONDecoder()

        do {
            let page = try decoder.decode(WikiPage.self, from: jsonData)
            return page
        }

        catch let error {
            print("!! error = \(error.localizedDescription)")
        }

        return nil
    }


    func parseJsonText(_ text:String) -> PageCollection? {
        let jsonData = text.data(using: .utf8)!
        let decoder = JSONDecoder()

        do {
            let pageCollection = try decoder.decode(PageCollection.self, from: jsonData)
            return pageCollection
        }

        catch let error {
            print("!! error = \(error.localizedDescription)")
        }

        return nil
    }
}
