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
     * We don't need to introduce the wrapper type. instead we need to extend and add required methods and 
     calculated properties.
     It will help to modify types without changing origional implementations. This is the behviour which is our target
#### Common Mistake
     * Trying to adapt an interface that does not provide the expected functionality. so before to start to i
     mplement the Adapter
     * make sure that you are using the right component
## The Decorator Pattern
   Enhances existing types without changing their source codes
   * Flexible alternative to subclassing
   * Implemented as object wrapper
   * Same interface as the wrapped type
   * Adds new feature via recursive decorator composition
   * Implement using swift extension then don't need to modify the origional implementation and don't need to introduce new wrapper object

#### Common Pitfalls
     * Adding unrelated behavior to a type.
     * Make sure don't violate the Single Responsibility Principle
     * Make sure don't need to refactor dependencies which are using real object by adding new behavior using decorator
     
## The Facade Design Pattern
   This pattern hides the complexity and lets us work with a more convenient interface.(simplefies the useage of complex types)
#### Application of FACADE 
     * Simplefies useage of complex types
     * Exposes the subset of available functionality
     * decouple the consumer site from these complicated interfaces
     * shields consumer/caller from frequently changing beta components
#### Common pitfalls
     * Keep Facade pattern simple(avoid to add too many responsibilities to Facade)
     * Do not leak/expose detail of underlying type (consumer should only interact with the Facade not with underlying type )
     
## The Flyweight Pattern
   Reduces memory usage by sharing common data between objects, in other words this pattern help to reduce memory and creation cost for similar objects.
   we can apply when multiple objects those are rely on same immutable data
#### Identify intrinsic, Shareable state
     * Need to seperate the parts, that can change by a set of immutable properties.
     * Unchanged part that stored in flyweight and are protected from changes (Intrinsic part)
     * Extract the properties that can change (Extrinsic state) and pass them through the flyweight object when we need
#### Common pitfalls
     althoug there is no drawbacks but have some common pitfalls
     * first make sure there is only one intrinsic state object e.g using singleton design pattern or by introducing flyweight 
     pattern always returned shared state
     
## The Proxy Pattern
   * Managing and controlling access to specific object
   * Acts as a placeholder for proxied instances
   * Provides controller, remote or delayed access
#### Why we need aditional level of interaction rather than direct access
     * Delayed creation (lazy properties are best example of delayed creation)
     * Local placeholder for remote resources e.g network proxy may batch of network requests before accessing Restful services or return cached data
     instead of firing network requests.
     * Protective Proxy (during use of protective/senstive resources) where protective proxy assures that caller has appropriate permissions to access
     the component
#### Common pitfalls
     * Do not exposed the proxy type directly in other words underlying type needs to be hidden
     * Clients should only able to interact with proxy object
   
## The Chain of Responsibility Pattern
   Decouples sender of request from its potential receivers.
   Request travels in chain of objects until reach to object that one interested in request or reach the end of chain.
#### Common Pitfalls
     * Don't use it when each request only handled by one responder or when the number of requests handler is limited.
     
## The Iterator Pattern
   Provide sequential access to the elements of an aggregate object
   * Standard way to iterate over the elements of a collection
   * Extract traversal logic into a seperate type
   * Prevents exposing internal details of the data type
   * Swift standard library exposes two protocols 1- Sequence 2- Iterator Protocol those help us to implement Iterator protocol
#### Common Pitfalls
     consider the perfomance impact of custom iterators
## The Observer Pattern
   Lets objects subscribe for notifications without being tightly coupled to the sender
   * Object > listener of changes happen in an other object
   * Subject > Notifier of change happen in object(Subject) to all other listener(Object)
   * The observers register themselves with the subject and subject updates all registered observers when its state changes
   * Usally Notification center is used to register observer to receive notifications where to find notifications and Notification center decouples observer and subject completely
 #### Unregister observer
      Make sure observers get unregistered from the subject before releasing them.
      
 ## The State Design Pattern.
    Replace complex conditional logic with an object-oriented state machine. It helps us to 
    exclude complex conditional logic from exisiting project. 
    We first need to identify the steps that change the behavior of an object after that we need 
    to encapsulate steps into dedicated state types.
 #### Common Pitfalls.
      It exposing the states to client, so the client must not interact with states directly
     
     


