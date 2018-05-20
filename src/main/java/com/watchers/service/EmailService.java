package com.watchers.service;

import com.watchers.model.Email;
import com.watchers.repository.EmailMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailException;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;


@Service
@Component
public class EmailService {

    @Autowired
    private JavaMailSender emailmapper;

    public void sendMail(Email email) throws Exception{
        MimeMessage msg = emailmapper.createMimeMessage();

        try {
            msg.setSubject(email.getSubject());
            msg.setText(email.getContent());
            msg.setRecipients(MimeMessage.RecipientType.TO, InternetAddress.parse(email.getReceiver()));
        }catch(MessagingException e){
            System.out.println("MessagingException");
            e.printStackTrace();
        }

        try{
            emailmapper.send(msg);
        }catch(MailException e){
            System.out.println("Exception 발생");
            e.printStackTrace();
        }
    }
}
