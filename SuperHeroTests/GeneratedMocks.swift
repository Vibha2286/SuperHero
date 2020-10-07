// MARK: - Mocks generated from file: SuperHero/Hero/Dashboard/View/DashboardView.swift at 2020-10-07 21:22:24 +0000

//
//  DashboardView.swift
//  SuperHero
//
//  Created by Vibha Mangrulkar on 05/10/20.
//  Copyright © 2020 Vibha Mangrulkar. All rights reserved.
//

import Cuckoo
@testable import SuperHero

import Foundation

class MockDashboardView: DashboardView, Cuckoo.ProtocolMock {
    typealias MocksType = DashboardView
    typealias Stubbing = __StubbingProxy_DashboardView
    typealias Verification = __VerificationProxy_DashboardView

    private var __defaultImplStub: DashboardView?

    let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    func enableDefaultImplementation(_ stub: DashboardView) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    

    

    
    // ["name": "configureTitle", "returnSignature": "", "fullyQualifiedName": "configureTitle(title: String)", "parameterSignature": "title: String", "parameterSignatureWithoutNames": "title: String", "inputTypes": "String", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "title", "call": "title: title", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("title"), name: "title", type: "String", range: CountableRange(233..<246), nameRange: CountableRange(233..<238))], "returnType": "Void", "isOptional": false, "escapingParameterNames": "title", "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func configureTitle(title: String)  {
        
            return cuckoo_manager.call("configureTitle(title: String)",
                parameters: (title),
                escapingParameters: (title),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.configureTitle(title: title))
        
    }
    
    // ["name": "reloadTableView", "returnSignature": "", "fullyQualifiedName": "reloadTableView()", "parameterSignature": "", "parameterSignatureWithoutNames": "", "inputTypes": "", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "", "call": "", "parameters": [], "returnType": "Void", "isOptional": false, "escapingParameterNames": "", "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func reloadTableView()  {
        
            return cuckoo_manager.call("reloadTableView()",
                parameters: (),
                escapingParameters: (),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.reloadTableView())
        
    }
    
    // ["name": "showLoader", "returnSignature": "", "fullyQualifiedName": "showLoader()", "parameterSignature": "", "parameterSignatureWithoutNames": "", "inputTypes": "", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "", "call": "", "parameters": [], "returnType": "Void", "isOptional": false, "escapingParameterNames": "", "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func showLoader()  {
        
            return cuckoo_manager.call("showLoader()",
                parameters: (),
                escapingParameters: (),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.showLoader())
        
    }
    
    // ["name": "dismissLoader", "returnSignature": "", "fullyQualifiedName": "dismissLoader()", "parameterSignature": "", "parameterSignatureWithoutNames": "", "inputTypes": "", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "", "call": "", "parameters": [], "returnType": "Void", "isOptional": false, "escapingParameterNames": "", "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func dismissLoader()  {
        
            return cuckoo_manager.call("dismissLoader()",
                parameters: (),
                escapingParameters: (),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.dismissLoader())
        
    }
    
    // ["name": "updateHeroData", "returnSignature": "", "fullyQualifiedName": "updateHeroData(results: [Result])", "parameterSignature": "results: [Result]", "parameterSignatureWithoutNames": "results: [Result]", "inputTypes": "[Result]", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "results", "call": "results: results", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("results"), name: "results", type: "[Result]", range: CountableRange(346..<363), nameRange: CountableRange(346..<353))], "returnType": "Void", "isOptional": false, "escapingParameterNames": "results", "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func updateHeroData(results: [Result])  {
        
            return cuckoo_manager.call("updateHeroData(results: [Result])",
                parameters: (results),
                escapingParameters: (results),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.updateHeroData(results: results))
        
    }
    

	struct __StubbingProxy_DashboardView: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func configureTitle<M1: Cuckoo.Matchable>(title: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(String)> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: title) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockDashboardView.self, method: "configureTitle(title: String)", parameterMatchers: matchers))
	    }
	    
	    func reloadTableView() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockDashboardView.self, method: "reloadTableView()", parameterMatchers: matchers))
	    }
	    
	    func showLoader() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockDashboardView.self, method: "showLoader()", parameterMatchers: matchers))
	    }
	    
	    func dismissLoader() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockDashboardView.self, method: "dismissLoader()", parameterMatchers: matchers))
	    }
	    
	    func updateHeroData<M1: Cuckoo.Matchable>(results: M1) -> Cuckoo.ProtocolStubNoReturnFunction<([Result])> where M1.MatchedType == [Result] {
	        let matchers: [Cuckoo.ParameterMatcher<([Result])>] = [wrap(matchable: results) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockDashboardView.self, method: "updateHeroData(results: [Result])", parameterMatchers: matchers))
	    }
	    
	}

	struct __VerificationProxy_DashboardView: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func configureTitle<M1: Cuckoo.Matchable>(title: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: title) { $0 }]
	        return cuckoo_manager.verify("configureTitle(title: String)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func reloadTableView() -> Cuckoo.__DoNotUse<Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("reloadTableView()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func showLoader() -> Cuckoo.__DoNotUse<Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("showLoader()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func dismissLoader() -> Cuckoo.__DoNotUse<Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("dismissLoader()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func updateHeroData<M1: Cuckoo.Matchable>(results: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == [Result] {
	        let matchers: [Cuckoo.ParameterMatcher<([Result])>] = [wrap(matchable: results) { $0 }]
	        return cuckoo_manager.verify("updateHeroData(results: [Result])", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class DashboardViewStub: DashboardView {
    

    

    
     func configureTitle(title: String)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func reloadTableView()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func showLoader()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func dismissLoader()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func updateHeroData(results: [Result])  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


// MARK: - Mocks generated from file: SuperHero/Hero/Dashboard/View/SuperHeroDetailsView.swift at 2020-10-07 21:22:24 +0000

//
//  SuperHeroDetailsView.swift
//  SuperHero
//
//  Created by Vibha Mangrulkar on 06/10/20.
//  Copyright © 2020 Vibha Mangrulkar. All rights reserved.
//

import Cuckoo
@testable import SuperHero

import Foundation

class MockSuperHeroDetailsView: SuperHeroDetailsView, Cuckoo.ProtocolMock {
    typealias MocksType = SuperHeroDetailsView
    typealias Stubbing = __StubbingProxy_SuperHeroDetailsView
    typealias Verification = __VerificationProxy_SuperHeroDetailsView

    private var __defaultImplStub: SuperHeroDetailsView?

    let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    func enableDefaultImplementation(_ stub: SuperHeroDetailsView) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    

    

    
    // ["name": "configureTitle", "returnSignature": "", "fullyQualifiedName": "configureTitle(title: String)", "parameterSignature": "title: String", "parameterSignatureWithoutNames": "title: String", "inputTypes": "String", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "title", "call": "title: title", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("title"), name: "title", type: "String", range: CountableRange(258..<271), nameRange: CountableRange(258..<263))], "returnType": "Void", "isOptional": false, "escapingParameterNames": "title", "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func configureTitle(title: String)  {
        
            return cuckoo_manager.call("configureTitle(title: String)",
                parameters: (title),
                escapingParameters: (title),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.configureTitle(title: title))
        
    }
    
    // ["name": "configureHeroImage", "returnSignature": "", "fullyQualifiedName": "configureHeroImage(image: URL)", "parameterSignature": "image: URL", "parameterSignatureWithoutNames": "image: URL", "inputTypes": "URL", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "image", "call": "image: image", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("image"), name: "image", type: "URL", range: CountableRange(301..<311), nameRange: CountableRange(301..<306))], "returnType": "Void", "isOptional": false, "escapingParameterNames": "image", "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func configureHeroImage(image: URL)  {
        
            return cuckoo_manager.call("configureHeroImage(image: URL)",
                parameters: (image),
                escapingParameters: (image),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.configureHeroImage(image: image))
        
    }
    
    // ["name": "configureBiography", "returnSignature": "", "fullyQualifiedName": "configureBiography(bio: Biography)", "parameterSignature": "bio: Biography", "parameterSignatureWithoutNames": "bio: Biography", "inputTypes": "Biography", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "bio", "call": "bio: bio", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("bio"), name: "bio", type: "Biography", range: CountableRange(341..<355), nameRange: CountableRange(341..<344))], "returnType": "Void", "isOptional": false, "escapingParameterNames": "bio", "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func configureBiography(bio: Biography)  {
        
            return cuckoo_manager.call("configureBiography(bio: Biography)",
                parameters: (bio),
                escapingParameters: (bio),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.configureBiography(bio: bio))
        
    }
    
    // ["name": "configureAppearance", "returnSignature": "", "fullyQualifiedName": "configureAppearance(appearance: Appearance)", "parameterSignature": "appearance: Appearance", "parameterSignatureWithoutNames": "appearance: Appearance", "inputTypes": "Appearance", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "appearance", "call": "appearance: appearance", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("appearance"), name: "appearance", type: "Appearance", range: CountableRange(386..<408), nameRange: CountableRange(386..<396))], "returnType": "Void", "isOptional": false, "escapingParameterNames": "appearance", "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func configureAppearance(appearance: Appearance)  {
        
            return cuckoo_manager.call("configureAppearance(appearance: Appearance)",
                parameters: (appearance),
                escapingParameters: (appearance),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.configureAppearance(appearance: appearance))
        
    }
    
    // ["name": "configureConnections", "returnSignature": "", "fullyQualifiedName": "configureConnections(connections: Connections)", "parameterSignature": "connections: Connections", "parameterSignatureWithoutNames": "connections: Connections", "inputTypes": "Connections", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "connections", "call": "connections: connections", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("connections"), name: "connections", type: "Connections", range: CountableRange(440..<464), nameRange: CountableRange(440..<451))], "returnType": "Void", "isOptional": false, "escapingParameterNames": "connections", "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func configureConnections(connections: Connections)  {
        
            return cuckoo_manager.call("configureConnections(connections: Connections)",
                parameters: (connections),
                escapingParameters: (connections),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.configureConnections(connections: connections))
        
    }
    
    // ["name": "configureWork", "returnSignature": "", "fullyQualifiedName": "configureWork(work: Work)", "parameterSignature": "work: Work", "parameterSignatureWithoutNames": "work: Work", "inputTypes": "Work", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "work", "call": "work: work", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("work"), name: "work", type: "Work", range: CountableRange(489..<499), nameRange: CountableRange(489..<493))], "returnType": "Void", "isOptional": false, "escapingParameterNames": "work", "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func configureWork(work: Work)  {
        
            return cuckoo_manager.call("configureWork(work: Work)",
                parameters: (work),
                escapingParameters: (work),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.configureWork(work: work))
        
    }
    

	struct __StubbingProxy_SuperHeroDetailsView: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func configureTitle<M1: Cuckoo.Matchable>(title: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(String)> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: title) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockSuperHeroDetailsView.self, method: "configureTitle(title: String)", parameterMatchers: matchers))
	    }
	    
	    func configureHeroImage<M1: Cuckoo.Matchable>(image: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(URL)> where M1.MatchedType == URL {
	        let matchers: [Cuckoo.ParameterMatcher<(URL)>] = [wrap(matchable: image) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockSuperHeroDetailsView.self, method: "configureHeroImage(image: URL)", parameterMatchers: matchers))
	    }
	    
	    func configureBiography<M1: Cuckoo.Matchable>(bio: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Biography)> where M1.MatchedType == Biography {
	        let matchers: [Cuckoo.ParameterMatcher<(Biography)>] = [wrap(matchable: bio) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockSuperHeroDetailsView.self, method: "configureBiography(bio: Biography)", parameterMatchers: matchers))
	    }
	    
	    func configureAppearance<M1: Cuckoo.Matchable>(appearance: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Appearance)> where M1.MatchedType == Appearance {
	        let matchers: [Cuckoo.ParameterMatcher<(Appearance)>] = [wrap(matchable: appearance) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockSuperHeroDetailsView.self, method: "configureAppearance(appearance: Appearance)", parameterMatchers: matchers))
	    }
	    
	    func configureConnections<M1: Cuckoo.Matchable>(connections: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Connections)> where M1.MatchedType == Connections {
	        let matchers: [Cuckoo.ParameterMatcher<(Connections)>] = [wrap(matchable: connections) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockSuperHeroDetailsView.self, method: "configureConnections(connections: Connections)", parameterMatchers: matchers))
	    }
	    
	    func configureWork<M1: Cuckoo.Matchable>(work: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Work)> where M1.MatchedType == Work {
	        let matchers: [Cuckoo.ParameterMatcher<(Work)>] = [wrap(matchable: work) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockSuperHeroDetailsView.self, method: "configureWork(work: Work)", parameterMatchers: matchers))
	    }
	    
	}

	struct __VerificationProxy_SuperHeroDetailsView: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func configureTitle<M1: Cuckoo.Matchable>(title: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: title) { $0 }]
	        return cuckoo_manager.verify("configureTitle(title: String)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func configureHeroImage<M1: Cuckoo.Matchable>(image: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == URL {
	        let matchers: [Cuckoo.ParameterMatcher<(URL)>] = [wrap(matchable: image) { $0 }]
	        return cuckoo_manager.verify("configureHeroImage(image: URL)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func configureBiography<M1: Cuckoo.Matchable>(bio: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == Biography {
	        let matchers: [Cuckoo.ParameterMatcher<(Biography)>] = [wrap(matchable: bio) { $0 }]
	        return cuckoo_manager.verify("configureBiography(bio: Biography)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func configureAppearance<M1: Cuckoo.Matchable>(appearance: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == Appearance {
	        let matchers: [Cuckoo.ParameterMatcher<(Appearance)>] = [wrap(matchable: appearance) { $0 }]
	        return cuckoo_manager.verify("configureAppearance(appearance: Appearance)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func configureConnections<M1: Cuckoo.Matchable>(connections: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == Connections {
	        let matchers: [Cuckoo.ParameterMatcher<(Connections)>] = [wrap(matchable: connections) { $0 }]
	        return cuckoo_manager.verify("configureConnections(connections: Connections)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func configureWork<M1: Cuckoo.Matchable>(work: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == Work {
	        let matchers: [Cuckoo.ParameterMatcher<(Work)>] = [wrap(matchable: work) { $0 }]
	        return cuckoo_manager.verify("configureWork(work: Work)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class SuperHeroDetailsViewStub: SuperHeroDetailsView {
    

    

    
     func configureTitle(title: String)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func configureHeroImage(image: URL)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func configureBiography(bio: Biography)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func configureAppearance(appearance: Appearance)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func configureConnections(connections: Connections)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func configureWork(work: Work)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}

