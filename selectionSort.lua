local function selectionSort(array)
	local n = #array

	for i = 1, n, 1 do
		local min = i

		for j = i + 1, n, 1 do
			if array[j] < array[min] then
				min = j
			end
		end

		local temp = array[i]
		array[i] = array[min]
		array[min] = temp
	end

	return array
end

return selectionSort