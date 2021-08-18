# This program was made by Yohan Hmaiti
# GitHub: YHmaiti

# This program represents a calcuator in Julia

# This program provides basic operations such as: addition, substraction, division and multiplication
# of any expression entered by the user as long as it follows the set instructions.
# This program also offers a trigonometry based calculator with sin, cos, tan calculations along with their
# inverses.

# This program was made to advance learning of the Julia programming language and multiple of its 
# commands, functions and syntax

# This program uses the sleep function along with the CalculusWithJulia and Match packets
# This program requires having the Trigonometry.jl file in the same local folder

# include the file containing the trigonometric created functions and menu
include("Trigonometry.jl")

# welcome message
println("\nHello and welcome to this fun calculator!!\n")
println("This program was made by: Yohan Hmaiti, GitHub: YHmaiti")
println("PressEnter to proceed....")

# grab a screen input by the user to proceed to the menu
temporarystring = readline()

# sleep function 
sleep(2)

# Main Calculator menu
println("Choose one of the following options:")
println("1-add")
println("2-multiply")
println("3-substract")
println("4-divide")
println("5-Use trigonometric calculator")
println("6-Exit")
println("Enter your choice: ")

# Read the user's input (choice)
global choice = readline()

# use the parse command to change the string to integer
choice = parse(Int64, choice)

# while loop used if the choice entered is invalid
while (choice < 1 || choice > 6)

    println("The choice entered is wrong, please enter a valid choice!!")
    println("1-add")
    println("2-multiply")
    println("3-substract")
    println("4-divide")
    println("5-Use trigonometric calculator")
    println("6-Exit")
    println("Enter your choice: ")
    
    local choice = readline()
    choice = parse(Int64, choice)

end

    # if statement used when the user chooses the first option (add)
    if (choice == 1)

        i = 0
        local newnum = 0
        local total = 0

        println("\nHow many numbers would you like to add?")

        local numberofnumbers = readline()
        numberofnumbers = parse(Float64, numberofnumbers)

        while (i < numberofnumbers)

            println("\nEnter the next number to add:")
            newnum = readline()
            newnum = parse(Float64, newnum)
            total += newnum
            global  i += 1
          
        end

        println("\n=> The result of the addition is: ", total)

    end

    # if statement used when the user chooses the second option (multiplication)
    if (choice == 2)

        j = 0
        local newnum = 0
        local total = 1

        println("\nHow many numbers would you like to multiply?")

        local numberofnumbers = readline()
        numberofnumbers = parse(Float64, numberofnumbers)

        while (j < numberofnumbers)

            println("\nEnter the next number to multiply with:")
            newnum = readline()
            newnum = parse(Float64, newnum)
            total = total * newnum
            global   j += 1

        end

        println("\n=> The result of the multiplication is: ", total)

    end

    # if statementused when the user chooses the third option (substraction)
    if (choice == 3)

        c = 0
        local newnum = 0
        local total 

        println("\nHow many substractions will you do to the initial number?")
        local numberofnumbers = readline()
        numberofnumbers = parse(Float64, numberofnumbers)

        while (c < numberofnumbers)

            println("\nEnter the next number to substract with:")
            newnum = readline()
            newnum = parse(Float64, newnum)

            if (c == 0)

                total = newnum

            else

                total -= newnum

            end
            global   c += 1

        end

        println("\n=> The result of the substractions is: ", total)

    end 

    # if statment used when the user chooses the fourth option (division)
    if (choice == 4)

        temp = 0
        local newnum = 0
        local div = 1

        println("\nHow many divisions will you do to the first number that you will enter?")
        local numberofnumbers = readline()
        numberofnumbers = parse(Float64, numberofnumbers)


        while (temp <= numberofnumbers)
        
            if ( temp == 0)

                println("\nEnter the firs number that will be divided:")
                newnum = readline()
                newnum = parse(Float64, newnum)
                div = newnum

            else 

                println("\nEnter the next number to divide with:")
                newnum = readline()
                newnum = parse(Float64, newnum)
                div /= newnum

            end

            global  temp += 1

        end

        println("\n=> The result of the division is: ", div)

    end

    # if statement used when the user choose the fifth option to acces the trigonometric calculator
    if (choice == 5)
    
        trigcalcinitiator()
    
    end

    # if statement used whenever the user wants to exit the program
    if (choice == 6)
        
        println("\n=>Thanks for using the calculator!!!")
        println("\n=>This program was made by Yohan Hmaiti, follow me on GitHub: YHmaiti for more fun!")
    
    end

    # General Ending message
    println("\n=>Thanks for using the calculator!!!")
    println("\n=>This program was made by Yohan Hmaiti, follow me on GitHub: YHmaiti for more fun!")