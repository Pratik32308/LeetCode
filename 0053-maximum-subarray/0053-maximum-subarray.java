class Solution {
    public int maxSubArray(int[] nums) {
        int SUM=0,Max=Integer.MIN_VALUE;
        for(int i=0;i<nums.length;i++){
            SUM=Math.max(nums[i],SUM+nums[i]);
            Max=Math.max(SUM,Max);
        }
        return Max;
    }
}