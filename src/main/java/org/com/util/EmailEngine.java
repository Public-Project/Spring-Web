package org.com.util;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.com.constants.AppConstants;

public class EmailEngine {

	public static void sendMail() {

		// Get a Properties object
		Properties props = System.getProperties();
		props.setProperty(AppConstants.MAIL_SMTP_HOST, AppConstants.MAIL_SMTP_HOST_VAL);
		props.setProperty(AppConstants.MAIL_SMTP_SOCKETFACTORY, AppConstants.SSL_FACTORY);
		props.setProperty(AppConstants.MAIL_SMTP_SOCKETFACTORY_FALLBACK,
				AppConstants.MAIL_SMTP_SOCKETFACTORY_FALLBACK_VAL);
		props.setProperty(AppConstants.MAIL_SMTP_PORT, AppConstants.MAIL_SMTP_PORT_VAL);
		props.setProperty(AppConstants.MAIL_SMTP_SOCKETFACTORY_PORT, AppConstants.MAIL_SMTP_PORT_VAL);
		props.put(AppConstants.MAIL_SMTP_AUTH, AppConstants.MAIL_SMTP_AUTH_VAL);
		 props.put("mail.debug", "true");
		props.put(AppConstants.MAIL_TRANSPORT_PROTOCOL, AppConstants.MAIL_TRANSPORT_PROTOCOL);
		// props.put("mail.transport.protocol", "smtp");
		final String username = AppConstants.USER_NAME;//
		final String password = AppConstants.PASSWORD;
		try {
			Session session = Session.getDefaultInstance(props, new Authenticator() {
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication(username, password);
				}
			});

			// compose the message
			try {
				MimeMessage message = new MimeMessage(session);
				message.setFrom(new InternetAddress("rishabhprasher@gmail.com"));
				message.addRecipient(Message.RecipientType.TO,
						new InternetAddress("rishabh.prashar@cerridsolutions.com"));
				message.setSubject("Ping");
				message.setText("Hello, this is example of sending email  ");

				// Send message
				Transport.send(message);

				System.out.println("message sent successfully....");

			} catch (MessagingException mex) {
				mex.printStackTrace();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static void main(String[] args) {
		EmailEngine.sendMail();
	}

}
