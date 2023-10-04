// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract kaviul {
 
    // initializes variable age from 18
    uint256 public age = 18;
    // initializes variable token from 10
    int256 public token = 10;
    // initializes variable eth from 0
    int256 public eth;

    // This function 'calcAge' is taking the transacted value in '_age' and calculating new age 'age' and returning the public variable value of 'age'

    function calcAge (uint256 _age) public returns (uint256) {


// This condition is checking if my transacted age '_age' is greater or equal to the age in memory. If '_age' is smaller then it will enter the condition loop else it will got to else and return the age value in memory
        if (age >= _age){
           
        age = age - _age;
        return age;

        } else {
            return age;

        }
        
    }
// Function 'calcToken' is checking the age variable and if age>18 then it will subtract the transacted '_token' value from the current token value and return the result 'token' else it will just return the current 'token' value
     function calcToken (int256 _token) public returns(int256) {

         if (age>18) {


// This if-else is checking if the transacted token '_token' is positive or negative value. 
             if(_token>0) {

                 token = _token - token;
            return token;

             } else {
                  token = token - _token;
                 return token;
             }

         } else {

             // This if-else is checking if the transacted token '_token' is positive or negative value. 
             if(_token>0) {

                 token = _token - token;
            return token;

             } else {
                  token = token - _token;
                 return token;
             }

         }

    }
// Function 'addEth' is checking the token variable value and if token > 'the current eth balance' then it will add the transacted '_eth' value to the current eth balance and return the result 'eth' else it will just return the current 'eth' value
     function addEth(int256 _eth) public returns(int256) {

         if (token > eth){

             eth = eth + _eth;
               return eth;
         } else {
             return eth;
         }
                
            }

}