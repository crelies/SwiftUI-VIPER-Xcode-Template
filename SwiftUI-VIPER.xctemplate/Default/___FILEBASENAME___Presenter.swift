import Combine

protocol ___VARIABLE_VIPERSTACKNAME___PresenterProtocol: class {
    var viewModel: ___VARIABLE_VIPERSTACKNAME___ViewModel { get }
    func didReceiveEvent(_ event: ___VARIABLE_VIPERSTACKNAME___Event)
    func didTriggerAction(_ action: ___VARIABLE_VIPERSTACKNAME___Action)
}

final class ___VARIABLE_VIPERSTACKNAME___Presenter: ObservableObject {
    private let dependencies: ___VARIABLE_VIPERSTACKNAME___PresenterDependenciesProtocol
    private let interactor: ___VARIABLE_VIPERSTACKNAME___InteractorProtocol
    private var delegate: ___VARIABLE_VIPERSTACKNAME___Delegate?
    
    private(set) var viewModel: ___VARIABLE_VIPERSTACKNAME___ViewModel {
        didSet {
            objectWillChange.send()
        }
    }
    
    let objectWillChange = PassthroughSubject<Void, Never>()
    
    init(dependencies: ___VARIABLE_VIPERSTACKNAME___PresenterDependenciesProtocol,
         interactor: ___VARIABLE_VIPERSTACKNAME___InteractorProtocol,
         delegate: ___VARIABLE_VIPERSTACKNAME___Delegate?) {
        self.dependencies = dependencies
        self.interactor = interactor
        self.delegate = delegate
        
        viewModel = ___VARIABLE_VIPERSTACKNAME___ViewModel()
    }
}

extension ___VARIABLE_VIPERSTACKNAME___Presenter: ___VARIABLE_VIPERSTACKNAME___PresenterProtocol {
    func didReceiveEvent(_ event: ___VARIABLE_VIPERSTACKNAME___Event) {
        switch event {
            case .onAppear:
                debugPrint("onAppear")
        }
    }

    func didTriggerAction(_ action: ___VARIABLE_VIPERSTACKNAME___Action) {

    }
}
