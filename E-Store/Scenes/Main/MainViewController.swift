//
//  MainViewController.swift
//  E-Store
//
//  Created by DarkBringer on 21.10.2021.
//

import UIKit
import BaseComponents

class MainViewController: BaseViewController<MainViewModel> {
    
    private var mainComponent: ItemCollectionView!
    
    override func prepareViewControllerConfigurations() {
        super.prepareViewControllerConfigurations()
        view.backgroundColor = .green
        addViewModelListeners()
        addMainComponent()
    }
    
    private func addMainComponent() {
        mainComponent = ItemCollectionView()
        mainComponent.translatesAutoresizingMaskIntoConstraints = false
        mainComponent.delegate = viewModel
        
        view.addSubview(mainComponent)
        
        NSLayoutConstraint.activate([
            
            mainComponent.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            mainComponent.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            mainComponent.topAnchor.constraint(equalTo: view.topAnchor),
            mainComponent.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
        ])
    
    }
    
    private func addViewModelListeners() {
        viewModel.subscribeLoginState { [weak self] state in
            self?.userLoginStateHandler(with: state)
        }
        viewModel.subscribeViewState { [weak self] state in
            switch state {
                case .loading:
                    return
                case .done:
                    self?.mainComponent.reloadCollectionView()
                default:
                    break
            }
        }
    }
    
    private func userLoginStateHandler(with value: Bool) {
        guard !value else { return }
        //present(LoginViewBuilder.build(), animated: true, completion: nil)
    }
    
}
