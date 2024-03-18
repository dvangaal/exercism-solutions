module main

fn collatz(number int) !int {
    if number <= 0 {
        return error('Number must be a positive integer')
    } else {
    }
    mut steps := 0
    mut num := number 
    
    for num > 1 {  
        if num % 2 == 0 {         // even...
            num /= 2              // ...divide by 2
        } else {                  // odd... 3n+1
            num *= 3
            num += 1
        } 
        steps += 1
    }
    return steps
}