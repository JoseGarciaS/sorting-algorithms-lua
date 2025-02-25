local function heapify(array, n, i)
    local largest = i
    local left = 2 * i
    local right = 2 * i + 1

    if left < n and array[left] > array[largest] then
        largest = left
    end

    if right < n and array[right] > array[largest] then
        largest = right
    end

    if largest ~= i then
        local temp = array[i]
        array[i] = array[largest]
        array[largest] = temp

        heapify(array, n, largest)
    end

end

local function heapSort(array)
    local n = #array

    for i = math.floor(n / 2), 1, -1 do
        heapify(array, n, i)
    end

    for i = n, 1, -1 do
        local temp = array[1]
        array[1] = array[i]
        array[i] = temp

        heapify(array, i, 1)
    end

    return array
end

return heapSort


