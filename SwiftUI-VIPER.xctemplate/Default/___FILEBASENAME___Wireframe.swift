import Foundation

protocol ___VARIABLE_VIPERSTACKNAME___WireframeProtocol {
    static func makePresenter(delegate: ___VARIABLE_VIPERSTACKNAME___Delegate?) -> ___VARIABLE_VIPERSTACKNAME___Presenter
}

struct ___VARIABLE_VIPERSTACKNAME___Wireframe: ___VARIABLE_VIPERSTACKNAME___WireframeProtocol {
    static func makePresenter(delegate: ___VARIABLE_VIPERSTACKNAME___Delegate?) -> ___VARIABLE_VIPERSTACKNAME___Presenter {
        let interactorDependencies = ___VARIABLE_VIPERSTACKNAME___InteractorDependencies()
        let interactor = ___VARIABLE_VIPERSTACKNAME___Interactor(dependencies: interactorDependencies)

        let presenterDependencies = ___VARIABLE_VIPERSTACKNAME___PresenterDependencies()
        let presenter = ___VARIABLE_VIPERSTACKNAME___Presenter(dependencies: presenterDependencies,
                                                               interactor: interactor,
                                                               delegate: delegate)
        return presenter
    }
}
