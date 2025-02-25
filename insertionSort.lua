local function insertionSort(array)
	local n = #array

	for i = 2, n, 1 do
		local j = i

		while j > 1 and array[j] < array[j - 1] do
			local temp = array[j]
			array[j] = array[j - 1]
			array[j - 1] = temp
			j = j - 1
		end
	end

	return array
end

return insertionSort