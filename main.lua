local util = require("util")

local maxArrayLength = 5 * 10^5

local startTime = os.clock()

local array = util.generateArray(util.sizes.LARGE, maxArrayLength)
local sortedArray = util.sort.bubbleSort(array)

local endTime = os.clock()

print(string.format("Execution time: %.3f seconds", endTime - startTime))


-- print("Sorted table:")
-- for i, v in ipairs(sortedArray) do
-- 	print(i, v)
-- end
