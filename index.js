'use strict';

exports.emailSender = (request, response) => {

  //const { from, to, subject, textData } = request.body;
  console.log(request.body);
  let textData = request.body.text;
  // console.log(`from = ${from}`);
  // console.log(`to = ${to}`);
  // console.log(`subject  = ${subject}`);
  // console.log(`textData = ${textData}`);

  var nodemailer = require('nodemailer');

  var transporter = nodemailer.createTransport({
    host: 'smtp.gmail.com',
    port: 465,
    secure: true,
    auth: {
      type: 'OAuth2',
      clientId: process.env.CLIENT_ID,
      clientSecret: process.env.CLIENT_SECRET,
      refreshToken: process.env.REFRESH_TOKEN
    }
  });

  var mailOptions = {
    from: 'SLHipulan@gmail.com',
    to: 'Accio26eleven@gmail.com',
    subject: 'TA DA',
    text: textData,
    auth: {
      user: process.env.GMAIL_ACCOUNT
    }
  };

    transporter.sendMail(mailOptions, function(error, info){
      if(error){
        console.log(error + 'Fatal: Email not sent');
      }
      else {
        console.log('Email sent: ' + info.response);
      }
      transporter.close();
    })
  
};

exports.event = (event, callback) => {
  callback();
};
