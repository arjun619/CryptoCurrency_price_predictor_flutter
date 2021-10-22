# CryptoCurrency Price Predictor

## Demo Link
<a href="https://www.youtube.com/shorts/oJvB3v74WUc" target="_blank">
 <img src="http://img.youtube.com/vi/nTQUwghvy5Q/mqdefault.jpg" alt="Watch the video" width="240" height="180" border="10" />
</a>


In this project our goal was to create a deep learning backed mobile application that allows the users to make informed decision about the price of various cryptocurrencies.
The cryptocurrencies we included were ethereum, litecoin, bitcoin, namecoin, novacoin. 
<br>There are three main components of the project: 
* frontend based on flutter 
* deep learning models and the 
* setup scripts in aws cloud

## Implementation Flow

1. The user selects the the cryptocurrency and the number of days for prediction from the flutter application.
2. The flutter app then connects the AWS webserver.
3. Depending upon the inputs given the python script runs and gives the required predictions.
4. The graphs generated are stored on the S3 bucket.
5. The flutter application gets two outputs. The prediction from the python script and the graph from the S3 bucket.
6. The flutter app then displays this output on the screen.

