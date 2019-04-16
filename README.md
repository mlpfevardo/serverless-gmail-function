# serverless-gmail-function
This project serves as a serverless function that sends emails

## GETTING STARTED
clone this repository on the command line with: 
```bash
git clone https://github.com/98labs/serverless-gmail-function.git
```
## PRE-REQUISITES 
install node js from https://nodejs.org/en/download/

Obtain your keyfile: 
 1. go to console.google > APIs & Services > Credentials 
 2. click create credentials > Service account key

Obtain your Client ID and Client Secret
 1. got to console.google > API's & Services > Credentials
 2. create credentials > OAuth client ID 
 3. select web application, enter the following URI's under  Authorized redirect URI's: 

	https://developers.google.com/oauthplayground
	https://developers.google.com/oauthplayground/
 4. create
 5. copy Client ID and Client Secret

Obtain your Refresh token
 6. go to https://developers.google.com/oauthplayground/
 7. open settings (upper right hand corner) 
 8. check Use your own OAuth credentials and enter the client ID and  Client secret obtained before
 9. Click on 'gmail' or enter mail.google.com in the textbox, and click authorize APIs. 
 10. Click 'Exchange authorization code for tokens' and obtain your   refresh token and access token

## Notes
 * input your necessary values into the environment.yml file
 *  change project name under provider in serverless.yml to your   project name
 * copy your keyfile into the project and rename into keyfile.json

## DEPLOYMENT
deploy application with
```bash
serverless deploy
```