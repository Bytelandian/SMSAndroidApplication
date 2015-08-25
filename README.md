# SMSAndroidApplication
Receive request as SMS and response as SMS after processing on Server.


#### Overview
An Android app which can listen for and process the incoming SMS messages to automatically take specific actions based on the content of SMS received. The app should act as a SMS  based  query/command  processor. 

#### Design:
The steps involved in the solution are as follows:

1. Client sends commands by SMS to the Query Processor Mobile Device. The client
device only need to support sending SMS.
2. The Android App running on the Query Processor Mobile Device sends the received
SMS to the server using HTTP Post.
3. The SMS is parsed on the server to determine the operation required by it.
4. Based on the content of the SMS, a suitable operation is invoked on the server.
5. The server logs the details about the operation in a database table.
6. The reponse is sent by the server to the Query Processor Mobile device.
7. The mobile device reply to the client through SMS which contains the output of
the query.
8. The app on the Query Processor device deletes the SMS after the processing is
complete so that it does not waste disk space on the phone.

For more design details see [Documentation.pdf](Documentation.pdf)

#### How to Run:
##### Android App:

1. Import the project 'MyApplication' into Android Studio.
Goto File → Import Project and then select the MyApplication folder.
2. The App can be executed by choosing Run option in the Run menu.

##### Server:
Server is made using PHP and MySQL.

Steps to deploy the server which listens for user requets and also shows logs for the requests:

1. Copy the 'csl6' folder and paste it in '/var/www/' folder.
2. In 'connection.php', change the username and password.
3. Import the csl6.sql file. This will create a database with name 'csl6".
4. Open http://localhost/csl6/log_display.php in browser to view the request logs.

Server side of the assignment include 4 files:

1. connection.php : It includes the connection parameters so that they are not to be repeated every time we need them and can be changed easily.
2. index.php :  index.php receives data from app and perform operation on it to check user request.
3. main_function.php : This file includes function to be performed on user request and give suitable result.
4. log_display.php    :	This file is for the displaying all the details of the request performed.

Database: The database for this assignment includes 2 tables:

1. log : This table records all the information about requests from users till date.
2. status : This table stores status of the user requests. 
