//https://leetcode.com/problems/greatest-common-divisor-of-strings/?envType=study-plan-v2&envId=leetcode-75

class Solution {
    func gcdOfStrings(_ str1: String, _ str2: String) -> String {
        if ( str1 + str2 != str2 + str1){
            return ""
        }
        let length = gcd(str1.count, str2.count)
        let index = str1.index(str1.startIndex, offsetBy: length)

        return String(str1[..<index])
    }

    func gcd(_ a: Int, _ b: Int) -> Int {
        var x = a
        var y = b 

        while (y != 0) {
            let temp = y
            y = x % y
            x = temp
        }
        return x
    }
}

