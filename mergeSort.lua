local function merge(left, right)
    local mergeResult = {}
    local i, j = 1, 1

    while i <= #left and j <= #right do
        if left[i] < right[j] then
            table.insert(mergeResult, left[i])
            i = i + 1
        else
            table.insert(mergeResult, right[j])
            j = j + 1
        end
    end

    while i <= #left do
        table.insert(mergeResult, left[i])
        i = i + 1
    end

    while j <= #right do
        table.insert(mergeResult, right[j])
        j = j + 1
    end

    return mergeResult
end

local function extractRange(array, start, finish)
    local extractResult = {}
    for i = start, finish do
        table.insert(extractResult, array[i])
    end
    return extractResult
end

local function mergeSort(array)
    if #array <= 1 then
        return array
    end

    local middle = math.floor(#array / 2)
    local left = mergeSort(extractRange(array, 1, middle))
    local right = mergeSort(extractRange(array, middle + 1, #array))

    return merge(left, right)
end

return mergeSort