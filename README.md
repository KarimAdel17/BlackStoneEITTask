# BlackStoneEITTask
Clone the project, then open it you will find 4 folders. Configuration for app files(like AppDelegate, info.plist, etc..), Utilities for any extensions, UI for storyboards and Xibs and Scenes for the app view controllers.

in UI group you will find the main storyboard where there's the design

in Scenes group you will find a file named "FirstThreeDots" for the first three questions in the challenge it's an extension of MainVC. the functions is called commentedly in the MainVC view did appear function.

you will find three groups for the fourth question. MainVC where you choose the base currency and the currency you want to exchange for, CurrenciesPickerVC where a picker shows to choose the base currency and ExchangeCurrenciesVC where the calculation happens.

then run the app

1- I used Alamofire for networking to get the data from the API and SVProgressHUD for the loading can also use the lottie-ios.

2- I used MVP it gives more indpendance for every view controller and reduce the data flow.

3- First of all i will target where the new feature will be added if in a view controller that had been written before, will do my new feature in an extension to be readable and to not be mixed with the old code. if it will be added in a whole new view controller, will study where it will come from and where it will go for and talk with the rest of the team or the one who responsible for the destination view controller and ask what it will affect, if he will be waiting for something i will send etc. 

the positives: there're more brains to think, there's planning, everyone has different tasks. so less time less effort less stress.

the negatives: if the team isn't agreeably with each other and there's no understanding, there will be problems and the stress will be double and almost all the positives will be negatives.
