# kitchen-app-visual-intelligence
This is testing app to help debug the issue with Apple Visual Intelligence framework  
When developing a feature with Visual Intelligence, I ran into a problem with OpenIntent. Therefore I created a testing project where the issue can be reproed.  
Things I've created in this repro:  
RecipeEntity  
RecipeIntentValueQuery  
OpenRecipeIntent  

Both RecipeEntity and RecipeIntentValueQuery and working as expected, I'm able to show a feed of objects with hardcoded image and title. In my work project, I also created an AppIntent for the "see more" button, and it also worked.  
However, when I tap on the object in the feed, it did not open the app. It only shows an error message: "Sorry, something went wrong. Please try again". There was no log or error in console either.   
I set breakpoint in `perform` method in `OpenRecipeIntent` and the breakpoint is not hit.   
I set breakpoint in `entities(for:)` method in `RecipeQuery`, and it's hit. But my understanding based on [Apple's doc](https://developer.apple.com/documentation/visualintelligence/integrating-your-app-with-visual-intelligence) is that Visual Intelligence framework relies on IntentValueQuery to find the objects, and `EntityQuery` doesn't need to be implemented.  
I've also attached screenshots of the feed, and the error mesage here. 
|feed|error(beta4)|error(beta5)|
|---|---|---|
|<img width="645" height="1398" alt="IMG_0293" src="https://github.com/user-attachments/assets/e332f3de-c014-42eb-a1db-7e83d26dbadd" />|<img width="645" height="1398" alt="IMG_0294" src="https://github.com/user-attachments/assets/9cd3e198-abe5-40e4-8f1e-9c5fae1048ed" />|<img width="645" height="1398" alt="View recent photos-1 2" src="https://github.com/user-attachments/assets/19ed728b-bf59-41b9-ac42-dcf6bf5f5c36" />|

