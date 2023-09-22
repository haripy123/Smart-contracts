// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;
contract X{
    string public name;
    constructor(string memory _name){
        name=_name;
    }
}
contract Y{
    string public text;
    constructor(string memory _text){
        text=_text;
    }
}
contract A is X,Y{
    constructor(string memory _name,string memory _text) X(_name) Y(_text){}
}
contract B is X("hello"),Y("world"){}
contract C is X,Y{
    constructor() X("hello") Y("world"){}
}
//This doent work bacause order is important
contract D is X,Y{
    constructor() Y("hello") X("world"){}
}
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;
contract X{
    string public name;
    constructor(string memory _name){
        name=_name;
    }
}
contract Y{
    string public text;
    constructor(string memory _text){
        text=_text;
    }
}
contract A is X,Y{
    constructor(string memory _name,string memory _text) X(_name) Y(_text){}
}
contract B is X("hello"),Y("world"){}
contract C is X,Y{
    constructor() X("hello") Y("world"){}
}
//This doent work bacause order is important
contract D is X,Y{
    constructor() Y("hello") X("world"){}
}

