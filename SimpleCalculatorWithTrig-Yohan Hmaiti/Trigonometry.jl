# This program was made by Yohan Hmaiti
# GitHub: YHmaiti

# Note: Check the Calculator.jl file for additional information as this file represents 
# just one part of the calcuator

# use packages to simplify access to trigonometric unctionalities 
# and the match function
using CalculusWithJulia
using Match

# functions that execute trigonometric operations when called
# through passing the variable inuted by the user to them
function cosine(exp1)

    exp1 = parse(Int16, exp1)
    print(cos(exp1))  

end

function sine(exp2)

    exp2 = parse(Int16, exp2)
    println(sin(exp2))

end

function tangent(exp3)

    exp3 = parse(Int16, exp3)
    println(tan(exp3))  

end

function arccosine(exp4)

    exp4 = parse(Int16, exp4)
     println(acos(exp4))

end

function arcsine(exp5)

    exp5 = parse(Int16, exp5)
    println(asin(exp5))

end

function arctangent(exp6)

    exp6 = parse(Int16, exp6)
    println(atan(exp6))

end

# function that will initiate the trigonometric calls and showcase the availabe
# trigonometric calculations/operations.
# here we can see how the match functionality is used
function trigcalcinitiator()
    
    println("\nThe availabe trigonometric functionalities are as follow:")
    println("1-Determine the cos value")
    println("2-Determine the sin value")
    println("3-Determine the tan value")
    println("4-Determine the inverse cos value")
    println("5-Determine the inverse sin value")
    println("6-Determine the inverse tan value")
    println("\nWhat's your choice:")

    choice = readline()
    choice = parse(Int16, choice)

    while (choice < 1 || choice > 6)

        println("Enter a valid option please: ")
        choice = readline()
        choice = parse(Int16, choice)

    end

    println("\nEnter the value to be processed: ")
    expression = readline()

    m = @match choice begin

        1 => cosine(expression)
        2 => sine(expression)
        3 => tangent(expression)
        4 => arccosine(expression)
        5 => arcsine(expression)
        6 => arctangent(expression)
        
    end

end
