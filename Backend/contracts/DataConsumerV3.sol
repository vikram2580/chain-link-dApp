// SPDX-License-Identifier: MIT
 
pragma solidity ^0.8.7;
 
import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";
 
contract DataConsumerV3 {
 
    AggregatorV3Interface internal dataFeed_BTC_USD;
    AggregatorV3Interface internal dataFeed_ETH_USD;
    AggregatorV3Interface internal dataFeed_LINK_USD;
    AggregatorV3Interface internal dataFeed_BTC_ETH;

 
    // Network: Sepolia
    // Aggregator: BTC/USD
    // Address: 0x1b44F3514812d835EB1BDB0acB33d3fA3351Ee43
 
    constructor() {
        dataFeed_BTC_USD = AggregatorV3Interface(0x1b44F3514812d835EB1BDB0acB33d3fA3351Ee43);
        dataFeed_ETH_USD = AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306);
        dataFeed_LINK_USD = AggregatorV3Interface(0xc59E3633BAAC79493d908e63626716e204A45EdF);
        dataFeed_BTC_ETH = AggregatorV3Interface(0x5fb1616F78dA7aFC9FF79e0371741a747D2a7F22);

    }
 
    // return the latest answer for the conversion from Chainlink
 
    function get_BTC_USD_chainlinkDataFeedLatestAnswer() view public returns (int) {
        (,int answer,,,) =  dataFeed_BTC_USD.latestRoundData();
 
        return answer;
    }
    
    function get_ETH_USD_chainlinkDataFeedLatestAnswer() view public returns (int) {
        (,int answer,,,) =  dataFeed_ETH_USD.latestRoundData();
 
        return answer;
    }
    function get_LINK_USD_chainlinkDataFeedLatestAnswer() view public returns (int) {
        (,int answer,,,) =  dataFeed_LINK_USD.latestRoundData();
 
        return answer;
    }
    function get_BTC_ETH_chainlinkDataFeedLatestAnswer() view public returns (int) {
        (,int answer,,,) =  dataFeed_BTC_ETH.latestRoundData();
 
        return answer;
    }
}