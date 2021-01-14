class Median
  def find_median_sorted_arrays(nums1, nums2)
    # Merge lists nums1 and nums2 into z
    #
    z = nums1 + nums2

    # sort z
    z = z.sort

    # Calculate median of z
    if z.length.odd?
      z[(z.length) / 2]
    else
      (z[(z.length-1).div(2)] + z[(z.length) / 2].to_f) / 2
    end
  end
end

median_test = Median.new
puts median_test.find_median_sorted_arrays([1,3], [2])
puts median_test.find_median_sorted_arrays([1,2], [3,4])
puts median_test.find_median_sorted_arrays([0,0], [0,0])
puts median_test.find_median_sorted_arrays([], [1])
puts median_test.find_median_sorted_arrays([2], [])
