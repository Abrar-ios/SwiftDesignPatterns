# SwiftDesignPatterns

### Singleton Design Pattern
     It ensures there's only once instance of type exist.
### Use of singleton
     Access and manage a single resource throughout the application
### Examples
    * UIApplication
    * Log File
### Misusing of Singleton
    * Using the singleton as Global multipurpose container(as global shared state)
    * Singleton might introduce hidden dependencies (as result of we are going to loose track of objects those are using singleton, as singleton is not   passing as method param, as property or through initialization so changing the singleton requires more refactoring of certain unrelated components)
    * Synchronization issue (when accessing non-thread safe singleton concurrently)
    * Performance problems due to synchronization (Thread safe singleton might become performance bottleneck when multiple threads are going to use it in parallel)




