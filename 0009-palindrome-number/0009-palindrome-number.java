class Solution {
    public boolean isPalindrome(int x) {
        if (x<0){
            return false;
        }
        int rev=0;
        int pal=x;
       while(x>0){
        int LD=x%10;
         rev = rev*10 + LD;
        x=x/10;
        }
        return pal==rev;
    }
}