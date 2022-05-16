// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract A{

    event log(string name, uint age);
    
    function fun1() public virtual {
        emit log("A.func1", 21);
    }

    function fun2() public virtual{
        emit log("A.func2", 21);
    }
}
// Most base like to most Drive
// Serach Right to Left DFS
contract B is A{
    function fun1() public virtual override {
        emit log("B.func1", 31);

        A.fun1(); // Direct Calling
    }

    function fun2() public virtual override{
        emit log("B.func2", 31);

        super.fun2(); // 
    }

}

contract C is A{

    function fun1() public virtual override {
        emit log("C.func1", 44);
    }

    function fun2() public virtual override{
        emit log("C.func2", 44);
    }

}

contract  D is B,C{

    function fun1() public virtual override(B,C) {
        emit log("D.func1", 85);

        B.fun1();
    }

    function fun2() public virtual override(B,C){
        emit log("D.func2", 85);
        super.fun1();
    }
}