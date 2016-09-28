#Scavanger Hunt Webapp

##About
This is a rails app designed to help with running a Scavanger Hunt. It was
originally designed for a local high school's senior class scavanger hunt.
Players will use clues given to them determine locations of QR codes. 
When the players find the QR codes they will scan them and select their team
name. They are then directed to a page which tells them how many locations
they have found out of all the locations.

##Goals
* Adjust layout to look better

##Possible Goals - These have begun to be solved in a forked version
* Setup player accounts associated with teams
* When a player builds a Connection it will use their team automatically
* Players can view all Connections their team built
* Multiple "Games" each with their own teams, locations, connections

##Completed Goals
* Admin Accounts via Devise
* Roles via Cancan (Admin)
* Security based on the roles (i.e. only admins can index/create models)
* Teams 
* Locations
* Collections (A connection between teams and locations)
* Give locations unique random id for urls instead of index number
* Use the unique random id as "password" with the index id to make connection

##Tech Stuff
* Admins should create teams and give them a name
* Admins should create locations and give them a name
* Admins should use the individual location url to make a QR code
* When a team finds the QR code and scans it in they will select their team name
* This will then create a Connection between the team and the location
* Admins can view all the Connections built by a team by looking at the team page

###General Info
**Ruby Version:** 2.3.0p0
**Rails Version:** 4.2.5