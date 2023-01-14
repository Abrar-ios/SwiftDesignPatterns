# SwiftDesignPatterns

## Singleton Design Pattern
   It ensures there's only once instance of type exist.
#### Use of singleton
      Access and manage a single resource throughout the application
#### Examples
     * UIApplication
     * Log File
#### Misusing of Singleton
     * Using the singleton as Global multipurpose container(as global shared state)
     * Singleton might introduce hidden dependencies (as result of we are going to loose track of objects those are using 
     singleton, as singleton is not passing as method param, as property or through initialization so changing the 
     singleton requires more refactoring of certain unrelated components)
     * Synchronization issue (when accessing non-thread safe singleton concurrently)
     * Performance problems due to synchronization (Thread safe singleton might become performance bottleneck when multiple
     threads are going to use it in parallel)

## Prototype
   Whem creating multple instances of the same type is expensive or inefficient, Prototype design pattern helps us to avoid 
   expensive operations
#### Example
    when allocation of object require I/O operations (need to open a file to get more information required for object 
    allocation) then multiple allocation of instance will take multiple of time, taken by one object allocation, so 
    Protype helps us to reduce this time and also assure changes happen against one object will not impact other object.
    In this case first time allocation of object will require I/O operation that we could not avoid but after that we don't
    need for more allocation, By using prototype we can clone object.
#### Challenges.
     * Cloning reference type does not come for free
     * The Prototype and clones need to be independent    


