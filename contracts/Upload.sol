// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <=0.9.0;
contract Upload {


struct Access{

address user;
bool access;
}

mapping (address=>string[]) files;
mapping (address =>Access[])Accesslist;
mapping (address =>mapping(address=>bool)) ownership;
mapping (address =>mapping(address=>bool)) Previousdata;



function Addfiles(address _user , string memory url)  external  {
    files[_user].push(url);
}

function Allow(address user) public {
    ownership[msg.sender][user]=true;
    if (Previousdata[msg.sender][user]) {
        for (uint i=0; i<Accesslist[msg.sender].length; i++) 
        {
             if (Accesslist[msg.sender][i].user==user) {
             Accesslist[msg.sender][i].access=true;
             }
        }
    }
    else {

    Accesslist[msg.sender].push(Access(user,true));
    Previousdata[msg.sender][user]=true;


    }


}


function Disallow(address user) public {
     ownership[msg.sender][user]=false;
     for (uint i=0; i<Accesslist[msg.sender].length; i++) 
     {
         if (Accesslist[msg.sender][i].user==user) {
             Accesslist[msg.sender][i].access=false;
         }
     }
    
}

function Display(address _user) external view returns (string[] memory) {
    
require(_user==msg.sender || ownership[_user][msg.sender], "you don't have access" );

return files[_user];


}

function Shareaccess() public view returns(Access[] memory) {
    return Accesslist[msg.sender];
}

}