package mail;

import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.Properties;
 
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;


public class MailSend {
	
	public void MailSend() {
        Properties prop = System.getProperties();
        prop.put("mail.smtp.starttls.enable", "true");
        prop.put("mail.smtp.host", "smtp.gmail.com");
        prop.put("mail.smtp.auth", "true");
        prop.put("mail.smtp.port", "587");
        
        Authenticator auth = new MailAuth();
        
        Session session = Session.getDefaultInstance(prop, auth);
        
        MimeMessage msg = new MimeMessage(session);
        String corNum = randomNum();
        try {
            msg.setSentDate(new Date());
            
            msg.setFrom(new InternetAddress("rukanick@gmail.com", "펫트라슈"));
            InternetAddress to = new InternetAddress("rukanick@naver.com");         
            msg.setRecipient(Message.RecipientType.TO, to);            
            msg.setSubject("펫트라슈 인증 메일입니다.", "UTF-8");            
            msg.setText("안녕하세요 테스트 메일입니다. 당신의 인증 번호는 "+ corNum + "입니다.", "UTF-8");            
            
            Transport.send(msg);
            
        } catch(AddressException ae) {            
            System.out.println("AddressException : " + ae.getMessage());           
        } catch(MessagingException me) {            
            System.out.println("MessagingException : " + me.getMessage());
        } catch(UnsupportedEncodingException e) {
            System.out.println("UnsupportedEncodingException : " + e.getMessage());			
        }
                
    }

	public String randomNum() {
		StringBuffer buffer = new StringBuffer();
		for(int i=0; i<=6;i++) {
			int n= (int)(Math.random() * 10);
			buffer.append(n);
		}
		return buffer.toString();
	}
}
