/**
 * Copyright (c) 2018 TomTom N.V. All rights reserved.
 *
 * This software is the proprietary copyright of TomTom N.V. and its subsidiaries and may be used
 * for internal evaluation purposes or commercial use strictly subject to separate licensee
 * agreement between you and TomTom. If you are the licensee, you are only permitted to use
 * this Software in accordance with the terms of your license agreement. If you are not the
 * licensee then you are not authorised to use this software in any manner and should
 * immediately return it to TomTom N.V.
 */

import UIKit
import MapsSDKExamplesCommon
import MapsSDKExamplesVC
import TomTomOnlineSDKSearch

class SearchTypeaheadParameterViewController: SearchBaseViewController, TTSearchDelegate {

    let search = TTSearch()
    
    override func shouldDisplaySegmentedControll() -> Bool {
        return false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        search.delegate = self
    }
    
    override func searchBarIsEditting(with term: String) {
        searchForTermWithTypeahead(term)
    }
    
    //MARK: Examples
    
    func searchForTermWithTypeahead(_ term: String) {
        let query = TTSearchQueryBuilder.create(withTerm: term)
            .withTypeAhead(true)
            .build()
        search.search(with: query)
    }
    
    //MARK: TTSearchDelegate
    
    func search(_ search: TTSearch, completedWith response: TTSearchResponse) {
        displayResults(response.results)
    }
    
    func search(_ search: TTSearch, failedWithError error: TTResponseError) {
        toast.toast(message: "error " + (error.userInfo["description"] as! String))
    }
    
    func cancelSearch() {
        self.search.cancel()
    }
}
