import Foundation

struct WikiPage: Codable {
    enum CodingKeys: String, CodingKey {
        case id = "pageid"
        case title
        case sections
    }
    
    let title: String, id: Int, sections: Array<Section>

    init(_ title: String = "none",
         _ id:Int = -1,
         _ sections:Array<Section>) {
        self.title = title
        self.id = id
        self.sections = sections
    }
}

struct Section: Codable {
    let heading: String?, paragraphs: Array<Paragraph>, sections: Array<Section>?

    enum CodingKeys: String, CodingKey {
        case heading
        case paragraphs = "paragraphs_list"
        case sections
    }
    init(_ heading:String?,
         _ paragraphs:Array<Paragraph>,
         _ sections:Array<Section>?){
        self.heading = heading
        self.paragraphs = paragraphs
        self.sections = sections
    }

}

struct Paragraph:Codable {
    let id: Int, body: String

    enum CodingKeys: String, CodingKey {
        case id = "paragraph_id"
        case body
    }
    init(_ id:Int, _ body:String){
        self.id = id
        self.body = body
    }
}

struct ExampleData {
    let json = """
{
  "title": "Wiki Page Title",
  "pageid": 313,
  "sections": [
    {
      "heading": "First Section",
      "paragraphs_list": [
        {
          "paragraph_id": 1,
          "body": "Word1 word2 word3"
        }
      ],
      "sections":[
        {
          "heading": "First SubSection",
          "paragraphs_list": [
            {
              "paragraph_id": 2,
              "body": "Word4 word5 word6"
            },
            {
              "paragraph_id": 3,
              "body": "Word7 word8 word9"
            }]}]}]}
"""
}


struct Page: Codable {
    let title: String?, pageid: Int?, author: Author?
}

struct Author: Codable {
    enum CodingKeys: String, CodingKey {
        case name
        case id = "author_id"
    }

    let name: String?, id: Int?

    init(_ name: String?, _ id: Int?) {
        self.name = name
        self.id = id
    }

}

struct PageCollection: Codable {
    enum CodingKeys: String, CodingKey {
        case title
        case entries = "entry_list"
    }

    let title: String?, entries: Array<Page>?
}
