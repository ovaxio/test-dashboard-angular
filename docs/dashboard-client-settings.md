# Dashboard pages

You can find some mockup [here](pm-luckydraw.pdf)

## global settings
### different fields
+ landing page image : `input file` + `Drag n' Drop`
+ index background : `input file` + `Drag n' Drop` or use landing page image
+ title : `input text`
+ policies : `text area`
+ policies summary : `text area` or use the beginning of the full policies

## lucky draw settings
The client can add one (minimum) or more prices to win.

### price
For every price, the client need to provide all these informations
+ images :
    * cover : `input file` + `Drag n' Drop`. Used on the index page
    * thumbnail : `input file` + `Drag n' Drop`. Used on the lucky draw page for the lucky draw but also for the prices listing.
+ description : `textarea`
+ position : `input text` (integer). The position of this price. 
+ how many : `input text` (integer). How many of this price can be win.

### others
+ other images : `input file` + `Drag n' Drop` used in the lucky draw (the ones not for prices)
+ win ratio : `float`. Percentage maybe ?
+ win text : `textarea`

## form settings
The client can add one (minimum) or more fields to gather user information.

### field
For each field, the client need to provide us these informations
+ label `input text`. The name of the field to be displayed to the user
+ type `select`. This one will be for later. Now we only give the client the possibility to add `input text` as a field.
+ required : `boolean`. Is this field is mandatory or not.

### other
+ thank you text : `textarea`. The text to be displayed after the user shared his information to us.

## sharing settings
###shared *object*
+ title : `input text`
+ description : `textarea`
+ image : `input file`

###others
+ client follow page's URL : `input url`
+ client name : `input text`. Used on the sharing *letter*
+ how many : `integer`. How many shares give the user a new chance to play.

## statistics

###graph
+ number of shares : `line` + total
+ how many prices left : `line` + now
+ how many people played : `line` + total
+ users' informations : `link` for now. later can be a table with filters/sorting...