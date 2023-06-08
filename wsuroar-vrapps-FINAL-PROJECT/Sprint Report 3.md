# Sprint x Report (8/26/21 - 9/24/2021)

## What's New (User Facing)
 * Added a video feature to each specific listed location
 * Cleaned up the homepage
 * Connected all three main pages to each other (HomePage -> LocationMenuPage -> Specifc Location Page)

## Work Summary (Developer Facing)
The main thing we got working for this Sprint was implementing a video feature within our application. We created Youtube playlists 
for each location and then for each specific location, we displayed all the videos within their designated playlist to the user.
In the previous Sprint, we weren't able to connect the HomePage to the rest of the code yet but we solved that issue this time around.
We decided to get rid of the "Set Current Location" feature for now due to time constraints but we have added the feature to our list of 
future work.

## Unfinished Work
There are a few tasks we still want to implement in our application.
These are:
*Movable map with locations
*Allowing user to select current location, and gives them only the video for the specific destination
*Implement 2FA for user sign in
*Transit routes added

## Completed Issues/User Stories
Here are links to the issues that we completed in this sprint:
https://github.com/WSUCptSCapstone-Fall2022Spring2023/wsuroar-vrapps/issues?q=is%3Aissue+is%3Aclosed
Finished filming, editing, and uploading videos
Finished connecting all pages in mobile app
 


 
 ## Incomplete Issues/User Stories
  * We need to make page transitions smoother and less clumsy. Adding some transition animations would help. (jump delayed)
  * We need to be able to embed video into the application without making the application take up too much memory. (At present, we have tried our best to reduce the memory usage, but there is still room for improvement)
  * Bugs and issues when merging code, temporarily hiding some settings. (Almost re-changed and deleted a large chunk of code, so temporarily removed the three jump buttons.)

## Code Files for Review
Please review the following code files, which were actively developed during this sprint, for quality:
 * [currentlocationselectpage](https://github.com/WSUCptSCapstone-Fall2022Spring2023/wsuroar-vrapps/blob/main/currentlocationselectpage.dart)
 * [homepage](https://github.com/WSUCptSCapstone-Fall2022Spring2023/wsuroar-vrapps/blob/main/homepage.dart)
 * [information_page](https://github.com/WSUCptSCapstone-Fall2022Spring2023/wsuroar-vrapps/blob/main/information_page.dart)
 * [location_page](https://github.com/WSUCptSCapstone-Fall2022Spring2023/wsuroar-vrapps/blob/main/location_page.dart)
 * [locationMenuPage](https://github.com/WSUCptSCapstone-Fall2022Spring2023/wsuroar-vrapps/blob/main/locationMenuPage.dart)
 * [mapPage](https://github.com/WSUCptSCapstone-Fall2022Spring2023/wsuroar-vrapps/blob/main/mapPage.dart)
 * [more_page](https://github.com/WSUCptSCapstone-Fall2022Spring2023/wsuroar-vrapps/blob/main/more_page.dart)
 * [picture_page](https://github.com/WSUCptSCapstone-Fall2022Spring2023/wsuroar-vrapps/blob/main/picture_page.dart)
 
## Retrospective Summary
Here's what went well:
   * The basic interface, UI settings and basic functions are completed using Flutter and Dart.
   * A large part of the video data was collected using GOpro.
   * Linked youtube homemade video.
   * Added full browsing video functionality.
   * The code files provided by all members are connected, and they are currently running normally on the Android virtual machine.
   * The team temporarily removed the (location, info, more) jump button.
   * The communication with customers has also received timely feedback, and I am satisfied with the current results and progress.
 
Here's what we'd like to improve:
   * Continuously optimize the application.
   * Improve user experience.
   * Gather more feedback.
  
Here are the changes we plan to implement next semester:
   * Add more information to complete the text and video library.
   * Add more complex functionality.
   * Add system tests.
 Will continue to update..
