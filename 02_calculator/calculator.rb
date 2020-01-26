#write your code here
def add parameter_a, parameter_b
    parameter_a + parameter_b
end

def subtract parameter_a, parameter_b
    parameter_a - parameter_b
end

def sum list_of_parameters
    result = 0
    for parameter in list_of_parameters
        result += parameter
    end
    return result
end

def multiply parameter_a, parameter_b
    parameter_a * parameter_b
end

def power base, exponent
    result = 1
    while exponent > 0
        result *= base
        exponent -= 1
    end
    return result
end

def factorial parameter
    result = 1
    if parameter < 0
        return "ERROR"
    end
    if parameter == 1 || parameter == 0
        return 1
    else
        while parameter > 0
            result *= parameter
            parameter -= 1
        end
    end
    return result
end

