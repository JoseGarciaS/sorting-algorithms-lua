local util = {}

util.sizes = {
    SMALL = 1,
    MEDIUM = 2,
    LARGE = 3
}

util.sort = {
    bubbleSort = require("bubbleSort"),
    selectionSort = require("selectionsort"),
    insertionSort = require("insertionSort"),
    mergeSort = require("mergeSort"),
    quickSort = require("quickSort"),
    heapSort = require("heapSort"),
}

util.generateArray = function(size, maxLength)
    local newArray = {}

    if size == util.sizes.SMALL then
        for i = 1, math.floor(maxLength / 4), 1 do
            table.insert(newArray, math.random(1, maxLength / 4))
        end

    elseif size == util.sizes.MEDIUM then
        for i = 1, math.floor(maxLength / 2), 1 do
            table.insert(newArray, math.random(1, maxLength / 2))
        end

    elseif size == util.sizes.LARGE then
        for i = 1, maxLength, 1 do
            table.insert(newArray, math.random(1, maxLength))
        end

    end

    return newArray
    
end

return util