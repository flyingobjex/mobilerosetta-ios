import Foundation
import Quick
import Nimble
import RxSwift

@testable import MobileRosetta

class RxObserverExampleSpec: QuickSpec {
    override func spec() {

        describe("The RxObserver example"){
            var example = RxObserverExample()
            var dispose = DisposeBag()

            beforeEach {
                example = RxObserverExample()
                dispose = DisposeBag()
            }

            it("given an observable paragraph, when an update is made, " +
                    "the 'subscribe' code block should run"){
                expect(example.details).to(equal("H:--, P:0, S:0"))

                example.section.subscribe(onNext: { it in
                    print("it.heading = \(it.heading)")
                }).disposed(by: dispose)
                        
                example.section.onNext(Section("S1", [Paragraph](), nil))
                expect(example.details).to(equal("H:S1, P:0, S:-1"))
                expect(example.description).to(equal("Details for section :: H:S1, P:0, S:-1"))
            }





        }
    }
}
