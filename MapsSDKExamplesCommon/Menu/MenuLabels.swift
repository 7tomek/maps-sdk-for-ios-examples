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

public class MenuLabels: NSObject {
    
    @objc public static func titleFor(index: Int, subindex: Int) -> String {
        return valueArray[index].subOptions[subindex].titleLabel
    }
    
    public static let valueArray = [Options(category: .Map,
                                     mainImage: "map_image",
                                     iconImage: "map_icon",
                                     titleLabel: "Map",
                                     subtitleLabel:"Show map visualization in your app using vector tiles, raster tiles, traffic incidents and/or traffic flow",
                                     subOptions:[SubOptions(iconImage: "map_tiles_image",
                                                            titleLabel: "Map tiles",
                                                            subtitleLabel: "Allow users to display the map in either raster or vector format"),
                                                 SubOptions(iconImage: "vector_map_and_traffic",
                                                            titleLabel: "Vector map and traffic",
                                                            subtitleLabel: "Display traffic tiles on a vector map."),
                                                 SubOptions(iconImage: "raster_map_and_traffic_image",
                                                            titleLabel: "Raster map and traffic",
                                                            subtitleLabel: "Display traffic tiles on a raster map."),
                                                 SubOptions(iconImage: "map_language",
                                                            titleLabel: "Map language",
                                                            subtitleLabel: "Change language of the map."),
                                                 SubOptions(iconImage: "geopolitical_view_image",
                                                            titleLabel: "Geopolitical view",
                                                            subtitleLabel: "Display the territory boundaries based on geopolitical view"),
                                                 SubOptions(iconImage: "custom_style_image",
                                                            titleLabel: "Custom style",
                                                            subtitleLabel: "Give custom look and fell to your map with a map style"),
                                                 SubOptions(iconImage: "static_map_image",
                                                            titleLabel: "Static map image",
                                                            subtitleLabel: "Download static map image"),
                                                 SubOptions(iconImage: "centering_image",
                                                            titleLabel: "Map centering",
                                                            subtitleLabel: "Center the map on GPS coordinates or any other location"),
                                                 SubOptions(iconImage: "map_perspective_image",
                                                            titleLabel: "Map perspective",
                                                            subtitleLabel: "Switch between 2D and 3D mode to change map perspective"),
                                                 SubOptions(iconImage: "map_events_image",
                                                            titleLabel: "Map events",
                                                            subtitleLabel: "Implement an action you want to trigger on map events"),
                                                 SubOptions(iconImage: "map_UI_extensions_image",
                                                            titleLabel: "Map UI extension",
                                                            subtitleLabel: "Display default or custom controls on the map"),
                                                 SubOptions(iconImage: "markers",
                                                            titleLabel: "Markers",
                                                            subtitleLabel: "Drop default or custom marker icon on map"),
                                                 SubOptions(iconImage: "draggable_marker_image",
                                                            titleLabel: "Advanced markers",
                                                            subtitleLabel: "Draggable and animated markers"),
                                                 SubOptions(iconImage: "ballons",
                                                            titleLabel: "Ballons",
                                                            subtitleLabel: "Display default or custom balloons adjusting the UI and the content."),
                                                 SubOptions(iconImage: "shapes_image",
                                                            titleLabel: "Shapes",
                                                            subtitleLabel: "Mark different areas on the map by using circles polygons and polylines"),
                                                 SubOptions(iconImage: "marker_clustering_image",
                                                            titleLabel: "Marker clustering",
                                                            subtitleLabel: "Collect multiple markers in a customizable cluster.")
        ]),
                             Options(category: .Traffic,
                                     mainImage: "traffic_image",
                                     iconImage: "traffic_icon",
                                     titleLabel: "Traffic",
                                     subtitleLabel:"Display real-time traffic data on a map, obtain current traffic speed information.",
                                     subOptions:[SubOptions(iconImage: "traffic_incidents_list_image",
                                                            titleLabel: "Traffic incident list",
                                                            subtitleLabel: "Present details of traffic incidents as a list.")
                                ]),
                             Options(category: .Routing,
                                     mainImage: "routing_image",
                                     iconImage: "routing_icon",
                                     titleLabel: "Routing",
                                     subtitleLabel:"Plan routes, time of departure and arrival. Choose either fastest or shortest route.",
                                     subOptions:[SubOptions(iconImage: "travel_modes_image",
                                                            titleLabel: "Travel modes",
                                                            subtitleLabel: "Plan a route for different travel modes."),
                                                 SubOptions(iconImage: "route_types_image",
                                                            titleLabel: "Route types",
                                                            subtitleLabel: "Set a route that will be the fastest, shortest or the most environment friendly"),
                                                 SubOptions(iconImage: "route_avoids_image",
                                                            titleLabel: "Route avoids",
                                                            subtitleLabel: "Plan a route that avoids things like toll roads, motorways, ferries."),
                                                 SubOptions(iconImage: "route_with_waypoints_image",
                                                            titleLabel: "Route with waypoints",
                                                            subtitleLabel: "Allows you to plan a route with up to 50 waypoints."),
                                                 SubOptions(iconImage: "departure_arrival_time_image",
                                                            titleLabel: "Departure/arrival time",
                                                            subtitleLabel: "Use departure/arrival time to set the best route."),
                                                 SubOptions(iconImage: "alternative_routes_image",
                                                            titleLabel: "Alternative routes",
                                                            subtitleLabel: "Check different routing alternatives so you can choose the one you prefer."),
                                                 SubOptions(iconImage: "maneuvers_list_image",
                                                            titleLabel: "Maneuver list",
                                                            subtitleLabel: "Gives you driving instructions for chosen route."),
                                                 SubOptions(iconImage: "consumption_model_image",
                                                            titleLabel: "Consumption model",
                                                            subtitleLabel: "Utilise the vechicle-specific consumption model when reqesting a new route."),
                                                 SubOptions(iconImage: "supporting_points_image",
                                                            titleLabel: "Supporting points",
                                                            subtitleLabel: "Reconstruct the route using supporting points."),
                                                 SubOptions(iconImage: "reachable_range_image",
                                                            titleLabel: "Reachable range",
                                                            subtitleLabel: "Calculates a set of locations that can be reached from the origin."),
                                                 SubOptions(iconImage: "batch_routing_image",
                                                            titleLabel: "Batch Routing",
                                                            subtitleLabel: "Allow your users to send multiple synchronous routing requests with Batch Routing.")
                                ]),
                             Options(category: .Search,
                                     mainImage: "search_image",
                                     iconImage: "map_icon",
                                     titleLabel: "Search ",
                                     subtitleLabel:"Search for adresses, places, points of interest.",
                                     subOptions:[SubOptions(iconImage: "adress_search_image",
                                                            titleLabel: "Address search",
                                                            subtitleLabel: "Search for address or POI."),
                                                 SubOptions(iconImage: "category_search_image",
                                                            titleLabel: "Category search",
                                                            subtitleLabel: "Search for POIs in one of categories."),
                                                 SubOptions(iconImage: "language_parameter_image",
                                                            titleLabel: "Language selector",
                                                            subtitleLabel: "Returns results in a specific language."),
                                                 SubOptions(iconImage: "typeahead_image",
                                                            titleLabel: "Typeahead parameter",
                                                            subtitleLabel: "Enable typeahead suggestions."),
                                                 SubOptions(iconImage: "typeahead_image",
                                                            titleLabel: "Max fuzziness level",
                                                            subtitleLabel: "Use the right fuzziness levels to set sensivity."),
                                                 SubOptions(iconImage: "reverse_geocoding_image",
                                                            titleLabel: "Reverse geocoding",
                                                            subtitleLabel: "Translate coordinates into addresses."),
                                                 SubOptions(iconImage: "search_along_the_route_image",
                                                            titleLabel: "Search along the route",
                                                            subtitleLabel: "Search for POIs along the route."),
                                                 SubOptions(iconImage: "geometry_search_image",
                                                            titleLabel: "Geometry search",
                                                            subtitleLabel: "Search for POIs in a marked area."),
                                                 SubOptions(iconImage: "entry_points_image",
                                                            titleLabel: "Entry points",
                                                            subtitleLabel: "Allow your users to display entry points using fuzzy search results."),
                                                 SubOptions(iconImage: "additional_data_image",
                                                            titleLabel: "Additional data",
                                                            subtitleLabel: "Polygons for geographies."),
                                                 SubOptions(iconImage: "batch_search_image",
                                                            titleLabel: "Batch search",
                                                            subtitleLabel: "Allows to bundle multiple search requests.")
                                ])
    ]

}
