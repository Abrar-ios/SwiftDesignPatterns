# DesignPatterns implementation using SWIFT

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
## The Factory Method Design Pattern 
   Creates objects without exposing its type to callers
#### Example
     Polymorphism is practical example of Factory method where we've common super class or ones that confirm to a protocol,
     Here caller don't need complete implementation of type just a super class or protocol thus we can eliminate 
     dependencies between the implementation types and callers.
#### Challenges.
     * The factory method is limited to types that share a common protocol or super class. You must not 
     enforce protocol conferments to types that have different responsibilites just for sake of factory method
     design pattern.
## Adpater Design Pattern
   Wraps an incompatible type and exposes an interface that's familiar to the caller. Adpter return results to the caller
   through compatible interface
#### Adpater in Swift
     * Easy to implement using swift extensions
     * We don't need to introduce the wrapper type. instead we need to extend and add required methods and calculated properties.
     It will help to modify types without changing origional implementations. This is the behviour which is our target
#### Common Mistake
     * Trying to adapt an interface that does not provide the expected functionality. so before to start to implement the Adapter
     make sure that you are using the right component
     
     
     


