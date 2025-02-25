local function partition(array, lowIndex, highIndex)
    local pivot = array[highIndex]
    local i = lowIndex - 1

    for j = lowIndex, highIndex - 1, 1 do
        if array[j] <= pivot then
            i = i + 1

            local temp = array[i]
            array[i] = array[j]
            array[j] = temp
        end
    end

    local temp = array[i + 1]
    array[i + 1] = array[highIndex]
    array[highIndex] = temp

    return i + 1
end

local function quicksortRec(array, lowIndex, highIndex)
    if lowIndex < highIndex then
        local pivot = partition(array, lowIndex, highIndex)
        quicksortRec(array, lowIndex, pivot - 1)
        quicksortRec(array, pivot + 1, highIndex)
    end
    
end

local function quicksort(array)
    quicksortRec(array, 1, #array)
    return array
end

return quicksort

