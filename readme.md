# Object Oriented Shopping

## Learning Goals
* Get cofmy with class setup
* Solidify many to many relationship
* Write some dope aggregate methods

## Classes and Relationships
* User
* Purchase
* Item 

### User -< Purchase >- Item

## Deliverables
* User should have a name
* Item should have a name and price
* Purchase should have a User and an Item

* User#items should return all the items that a specific user has purchased 
* Item#users should return all the users that have purchased said item
* Purchase.most_expensive should return the purchase with the highest price