local numcheck = {}

function numcheck:positive(num)
	if num then
        if type(num) ~= "number" then
            return nil
        end

        if num < 0 then
            return false
        elseif num > 0 then
            return true
        else
            warn("Neutral")
        end
    else
        error("Argument passed is invalid")
    end
end

function numcheck:biggest(table)
    local biggestNum = nil
    if type(table) ~= "table" then
        return nil
    end

    for k, v in pairs(table) do
        if type(v) == "number" then
            if not biggestNum and k == 1 then
                biggestNum = v
                -- no continue statement :(
            end
            if biggestNum < v then
                biggestNum = v
            end
        else
            return nil
        end
    end
    return biggestNum
end

function numcheck:smallest(table)
    local smallestNum = nil
    if type(table) ~= "table" then
        return nil
    end

    for k, v in pairs(table) do
        if type(v) == "number" then
            if not smallestNum and k == 1 then
                smallestNum = v
                -- no continue statement :(
            end
            if smallestNum > v then
                smallestNum = v
            end
        else
            return nil
        end
    end
    return smallestNum
end

function numcheck:round(num)
    if type(num) ~= "number" then
        return nil
    end

    if numcheck:positive(num) then
        if num - math.floor(num) < 0.5 then
            return math.floor(num)
        else
            return math.ceil(num)
        end
    elseif not numcheck:positive(num) then
        if (num * -1) + math.ceil(num) > 0.5 then
            return math.floor(num)
        else
            return math.ceil(num)
        end
    else
        error("The function 'numcheck:positive()' returns values other than true or false")
    end
end

return numcheck