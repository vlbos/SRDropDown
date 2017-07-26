# SRDropDown
Implementation of NIDropDown in Swift


Usage:

   var srdropdown : SRDropDown = SRDropDown();  --> Init 
   
   var someInts:[Int] = [10, 20, 30]            --> Array to be passed
   
   
   srdropdown.showDropDown(textfield: self.loginNameTextField, height: 40, arrayDetails: someInts, arrayDescription: someInts, direction: "up")                                --> Invoke the dropdown,arrayDescription is same as that of arrayDetails and can be ignored for now,added for future use
        
