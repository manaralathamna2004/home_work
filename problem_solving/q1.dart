bool containsDuplicate(List<int> nums) {
  Set<int> seen = {};
  
  for (int num in nums) {
    if (seen.contains(num)) {
      return true;
    }
    seen.add(num);
  }
  
  return false;
}

void main() {
  List<int> nums1 = [1, 2, 3, 4, 1];
  List<int> nums2 = [1, 2, 3, 4, 5];
  
  print(containsDuplicate(nums1)); 
  print(containsDuplicate(nums2));
}