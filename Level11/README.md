This is pretty simple. 

1. Using interfaces does not gurantee that code is what you expect
2. A expected view function, can change the state
3. Deploy solution.sol, run hack() function.
4. It calls goTo() in elevator. 
5. goTo calls isLastFloor() function, which sends a false on first call and true on second call.
6. Usually, the elevator contract doesnot allow you to go to top floow. But, we will go to topfloor.
