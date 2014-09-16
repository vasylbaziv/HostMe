package com.softserve.edu.service.implementation;

import com.softserve.edu.entity.User;
import com.softserve.edu.service.RegistrationSendMail;
import org.springframework.mail.MailParseException;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

/**
 * Created by john_darkwood on 10.09.2014.
 */
public class RegistrationSendMailImpl implements RegistrationSendMail {

    private JavaMailSender mailSender;
    private SimpleMailMessage simpleMailMessage;

    public void setSimpleMailMessage(SimpleMailMessage simpleMailMessage) {
        this.simpleMailMessage = simpleMailMessage;
    }

    public void setMailSender(JavaMailSender mailSender) {
        this.mailSender = mailSender;
    }

    @Override
    public void sendWelcomeMail(User user) {
        MimeMessage message = mailSender.createMimeMessage();
        try{
            MimeMessageHelper helper = new MimeMessageHelper(message, true);
            helper.setFrom(simpleMailMessage.getFrom());
            helper.setTo(user.getEmail());
            helper.setSubject("Thank you " + user.getFirstName() + " "
                    + user.getLastName() + " for joining us!");
            String html = "Thank you " + user.getFirstName()
                    + " for joining us!"
                    + "<br> Please, activate your account with the following link: <br>"
                    + "<a href=\"http://localhost:8080/hostme/registration-confirm?id="
                    + user.getUserId() + "\">Activation Link</a>";
            helper.setText("UTF-8", html);
        } catch (MessagingException e) {
            throw new MailParseException(e);
        }
        mailSender.send(message);
    }
}
