	package ViewLogin;
	
	import javax.swing.JFrame;
	import javax.swing.*;
	import java.awt.*;
	public class LoginFalse	extends JFrame {
			
		JLabel JLLoginFailed;
		JButton JBOk;
		Font font;
		public LoginFalse() {
			
			init();
			setVisible(true);
			
		}
		public void init() {
			
			setTitle("Login Failed");			
			setSize(320,200);
			setLocationRelativeTo(null);
			setLayout(null);
			//setResizable(false);					//tranh phong to
			setDefaultCloseOperation(EXIT_ON_CLOSE);
			
			JLLoginFailed = new JLabel("ĐĂNG NHẬP THẤT BẠI !");
			Font font = new Font("consolas",Font.ITALIC | Font.BOLD , 15);
			JLLoginFailed.setFont(font);
			JLLoginFailed.setBounds(85, 0, 200, 100);
			
			
			JBOk = new JButton("OK");
			font = new Font("Times New Roman",Font.PLAIN , 15);
			JBOk.setFont(font);
			JBOk.setBounds(120, 100, 100, 25);
			
			add(JLLoginFailed);
			add(JBOk);
			
			
		}
		public static void main(String[] args) {
			new LoginFalse();
			new Login();
		}
	
		
	}
