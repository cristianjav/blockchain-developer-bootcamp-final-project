
// SPDX-License-Identifier: MIT
pragma solidity >=0.8.3;

contract BetsContract {

    modifier onlyRegister(address _participant) {
        // checks the participant is registered
        _;
    }

    modifier onlyBetOnce(address _participant, uint _matchID) {
        // checks the participan hasn't beted before
        _;
    }

    modifier checkValue(uint _cost) {
        // checks msg.value is sufficient.
        // refund after pay the register.
        _;
    }

    // User will have to register to bet
    function registerForThisWeek(address _participant) public payable checkValue(msg.value) {
        // register the participant to bet on this week's matches.
    }

    function betByResult(uint _matchID, address _participant, uint _result, uint _winner) public onlyRegister(_participant) onlyBetOnce(_participant, _matchID){
        // register the bet of the participant.
    }

    function betByGoals(uint _matchID, address _participant, uint _goalsA, uint _goalsB) public onlyRegister(_participant) onlyBetOnce(_participant, _matchID){
        // register the bet of the participant.
    }

    function checkBets(uint _matchID, address _participant) public {
        // compare the results of the matches with the bets
        // add the points
    }

    function checkWinners(uint _week, address _participant) public {
        // check if the participant won a prize
    }
}