/*  UISearchController (https://developer.apple.com/reference/uikit/uisearchcontroller?language=objc)
  
  1. When the user interacts with search bar, the UISearchController Object automatically displays a NEW VIEWCONTROLLER with the search results 
     that you specified in UISearchController object's `searchBar` and notifies your app that the search process has begun.
    
  
  2. A search controller works with two custom view controllers that you provide.
     The first view controller displays your searchable content (i.e Main tableViewController)
     and the second displays your search results. (Results tableViewController)
     
  3. The first view controller is part of your app’s main interface.
     You pass the second view controller to the initWithSearchResultsController: method when you initialize your search controller, 
     and the search controller displays that view controller at appropriate times. 
     
  4. Basically, UISearchController acts like a get between your MainTVC and ResultsTVC
     
  5**When the user interacts with the search bar, the search controller notifies the object in its searchResultsUpdater property.
     and in updateSearchResultsForSearchController: method of UISearchResultsUpdating protocol

*/



/*  Three protocols - use in the same order given :)

UISearchBarDelegate protocol: defines the OPTIONAL methods you implement to make a UISearchBar control functional.
https://developer.apple.com/reference/uikit/uisearchbardelegate?language=objc

UISearchControllerDelegate protocol: defines delegate methods for UISearchController objects.
https://developer.apple.com/reference/uikit/uisearchcontrollerdelegate?language=objc

UISearchResultsUpdating protocol:(REQUIRED)   allows your class to be informed as text changes within the UISearchBar, has only one method updateSearchResultsForSearchController:
https://developer.apple.com/reference/uikit/uisearchresultsupdating?language=objc

*/



/*    SearchBar Properties

self.searchController.searchBar.frame = CGRectMake(0, 64, self.searchController.searchBar.frame.size.width, 44.0);

*/
