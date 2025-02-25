local function bubbleSort(array)
	local n = #array

	for i = 1, n - 1 do
		for j = 1, n - i do
			if array[j] > array[j + 1] then
				local temp = array[j]
				array[j] = array[j + 1]
				array[j + 1] = temp
			end
		end
	end

	return array
end

return bubbleSort