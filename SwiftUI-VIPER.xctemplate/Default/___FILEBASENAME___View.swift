import SwiftUI

protocol ___VARIABLE_VIPERSTACKNAME___ViewProtocol: ___VARIABLE_VIPERSTACKNAME___Protocol {
    
}

struct ___VARIABLE_VIPERSTACKNAME___View: View {
    @ObservedObject private var presenter = ___VARIABLE_VIPERSTACKNAME___Wireframe.makePresenter()
    weak var delegate: ___VARIABLE_VIPERSTACKNAME___DelegateProtocol?
    
    var body: some View {
        Text("Hello world!")
        .onAppear {
            self.presenter.didReceiveEvent(.viewAppears)
        }
    }
}

extension ___VARIABLE_VIPERSTACKNAME___View: ___VARIABLE_VIPERSTACKNAME___ViewProtocol {
    
}

extension ___VARIABLE_VIPERSTACKNAME___View: ___VARIABLE_VIPERSTACKNAME___Protocol {
    
}

#if DEBUG
struct ___VARIABLE_VIPERSTACKNAME___View_Previews: PreviewProvider {
    static var previews: some View {
        ___VARIABLE_VIPERSTACKNAME___View()
    }
}
#endif
