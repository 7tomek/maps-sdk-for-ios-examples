/**
 * Copyright (c) 2019 TomTom N.V. All rights reserved.
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

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, ExampleDisplayRequest {

    var window: UIWindow?
    weak var mainVC: OptionsViewController!
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        
        let layout = UICollectionViewFlowLayout()
        let mainVC = OptionsViewController(collectionViewLayout: layout)
        self.mainVC = mainVC
        mainVC.exampleDelegate = self
        window?.rootViewController = UINavigationController(rootViewController: mainVC)
        return true
    }
    
    func requestExample(index: Int, category: Options.Category) {
        var newViewController: BaseViewController!
        if category == .Map {
            switch index {
            case 0:
                newViewController = MapTilesViewController()
            case 1:
                newViewController = MapVectorTrafficViewController()
            case 2:
                newViewController = MapRasterTrafficViewController()
            case 3:
                newViewController = MapLanguageViewController()
            case 4:
                newViewController = MapGeopoliticalViewController()
            case 5:
                newViewController = MapCustomStyleViewController()
            case 6:
                newViewController = MapSwitchingLayersViewController()
            case 7:
                newViewController = MapDynamicMapSourcesViewController()
            case 8:
                newViewController = MapDynamicLayerOrderingViewController()
            case 9:
                newViewController = MapStaticImageViewController()
            case 10:
                newViewController = MapCenteringViewController()
            case 11:
                newViewController = MapPerspectiveViewController()
            case 12:
                newViewController = MapEventsViewController()
            case 13:
                newViewController = MapUIExtensionsViewController()
            case 14:
                newViewController = MapMarkersViewController()
            case 15:
                newViewController = MapAdvancedMarkersViewController()
            case 16:
                newViewController = MapBallonsViewController()
            case 17:
                newViewController = MapShapesViewController()
            case 18:
                newViewController = MapMarkersClusteringViewController()
            case 19:
                newViewController = MapMultipleViewController()
            case 20:
                newViewController = MapRouteCustomisationViewController()
            default:
                fatalError("This VC is not handled")
            }
        } else if category == .Traffic {
            switch index {
            case 0:
                newViewController = TrafficIncidentsViewController()
            default:
                fatalError("This VC is not handled")
            }
        } else if category == .Routing {
            switch index {
            case 0:
                newViewController = RoutingTravelModesViewController()
            case 1:
                newViewController = RoutingRouteTypesViewController()
            case 2:
                newViewController = RoutingRouteAvoidsViewController()
            case 3:
                newViewController = RoutingRouteWithWaypointsViewController()
            case 4:
                newViewController = RoutingDepartureArrivalTimeViewController()
            case 5:
                newViewController = RoutingAlternativesRouteViewController()
            case 6:
                newViewController = RoutingManeuverListViewController()
            case 7:
                newViewController = RoutingConsumptionModelViewController()
            case 8:
                newViewController = RoutingSupportingPointsViewController()
            case 9:
                newViewController = RoutingReachableRangeViewController()
            case 10:
                newViewController = RoutingBatchRouteViewController()
            case 11:
                newViewController = RoutingBatchReachableRouteViewController()
            case 12:
                newViewController = RoutingMatrixViewController()
            case 13:
                newViewController = RoutingAvoidVignettesAndAreasViewController()
            default:
                fatalError("This VC is not handled")
            }
        } else if category == .Driving {
            switch index {
            case 0:
                newViewController = MapFollowTheChevronController()
            case 1:
                newViewController = MapMatchingViewController()
            case 2:
                newViewController = RouteMatchingViewController()
            default:
                fatalError("This VC is not handled")
            }
        } else if category == .Search {
            switch index {
            case 0:
                newViewController = SearchAddressViewController()
            case 1:
                newViewController = SearchCategoryViewController()
            case 2:
                newViewController = SearchLanguageSelectorViewController()
            case 3:
                newViewController = SearchTypeaheadParameterViewController()
            case 4:
                newViewController = SearchMaxFuzzinessLevelViewController()
            case 5:
                newViewController = SearchReverseGeocodingViewController()
            case 6:
                newViewController = SearchAlongTheRouteViewController()
            case 7:
                newViewController = SearchGeometryViewController()
            case 8:
                newViewController = SearchEntryPointsViewController()
            case 9:
                newViewController = SearchAdditionalDataViewController()
            case 10:
                newViewController = SearchBatchViewController()
            case 11:
                newViewController = SearchPolygonsForRevGeoViewController()
            default:
                fatalError("This VC is not handled")
            }
        } else if category == .Geofencing {
            switch index {
            case 0:
                newViewController = GeofencingReportViewController()
            default:
                fatalError("This VC is not handled")
            }
        }
        newViewController.name = MenuLabels.titleFor(index: category.rawValue, subindex: index)
        mainVC.displayExample(newViewController)
    }

}
