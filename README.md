# serverless-gmail-function
This project serves as a serverless function that sends emails

## GETTING STARTED
clone this repository on the command line with: 
```bash
git clone https://github.com/98labs/serverless-gmail-function.git
```
## PRE-REQUISITES 
install node js from https://nodejs.org/en/download/

**Obtain your keyfile**
 1. Go to [Google Console](https://console.cloud.google.com) > APIs & Services > Credentials 
 2. Click create credentials > Service account key

**Obtain your Client ID and Client Secret**
 1. Go to [Google Console](https://console.cloud.google.com) > API's & Services > Credentials
 2. Create credentials > OAuth client ID 
 3. Select web application, copy paste the following URI's under  Authorized redirect URI's: 

	* https://developers.google.com/oauthplayground
	* https://developers.google.com/oauthplayground/

 4. Create
 5. Copy Client ID and Client Secret

**Obtain your Refresh token**
 1. Go to [OAuth Playground](https://developers.google.com/oauthplayground/)
 2. Open settings (upper right hand corner) 
 3. Check Use your own OAuth credentials and enter the client ID and  Client secret obtained before
 4. Click on 'gmail' or enter mail.google.com in the textbox, and click authorize APIs. 
 5. Click 'Exchange authorization code for tokens' and obtain your   refresh token and access token

## Notes
 * input your necessary values into the environment.yml file
 *  change project name under provider in serverless.yml to your   project name
 * copy your keyfile into the project and rename into keyfile.json

## DEPLOYMENT
deploy application with
```bash
serverless deploy
```