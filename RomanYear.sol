pragma solidity ^0.4.13;

contract Kata {
  function solution(uint n) public returns (string) {
    // Convert the positive integer to a Roman Numeral
   uint leftOvers = 0;
     
     string memory tousend ;
     string memory hundreds; 
     string memory tens;
     string memory ones;
     uint TousendN = n / 1000; 
     uint HundredN = n / 100;
     uint TenN = n / 10;
     uint OneN = n / 1;
     
   if (TousendN > 0){
        if (TousendN == 1) tousend = "M";
        else if (TousendN == 2)tousend = "MM";
        leftOvers = n - (TousendN * 1000);
   }
    
     if (HundredN> 0){
        if (HundredN == 9) hundreds = "CM";
        leftOvers = n - (HundredN * 100);
     }
    if (TenN> 0){
        if (TenN == 9) tens= "XC";
        leftOvers = n - (TenN * 10);
    }
    if (OneN> 0){
        if (OneN == 1) ones= "I";
        if (OneN == 4) ones = "IV";
        if (OneN == 7) ones = "VII";
        leftOvers = n - (TenN * 10);
    } 
    if (n == 0) {return "NAAAAAAAAAAAAa";}
  }
    //return attachStrings(tousend,hundreds, tens,ones);

    
 
 
 function attachStrings(string T, string H, string Te, string O)public returns (string){
     bytes memory _T = bytes(T);
    bytes memory _H = bytes(H);
    bytes memory _Te = bytes(Te);
    bytes memory _O = bytes(O);
    
    string memory abcde = new string(_T.length + _H.length + _Te.length + _O.length);
    bytes memory babcde = bytes(abcde);
    uint k = 0;
   if(_T.length != 0) for (uint i = 0; i < _T.length; i++) babcde[k++] = _T[i];
   if(_H.length != 0) for (i = 0; i < _H.length; i++) babcde[k++] = _H[i];
   if(_Te.length != 0)for (i = 0; i < _Te.length; i++) babcde[k++] = _Te[i];
   if(_O.length != 0) for (i = 0; i < _O.length; i++) babcde[k++] = _O[i];
    
    return string(babcde);
 }
}
