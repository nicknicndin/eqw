package abc;


import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JLabel;
import java.awt.Color;
import javax.swing.JTextField;
import java.awt.SystemColor;
import javax.swing.UIManager;
import java.awt.Font;
import javax.swing.JPasswordField;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import javax.swing.JOptionPane;

public class Login extends JFrame {

	private JPanel contentPane;
	private JTextField txtUsername;
	private JPasswordField passwordField;
	private JLabel lblNewLabel_2;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					Login frame = new Login();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the frame.
	 */
	public Login() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 407, 364);
		contentPane = new JPanel();
		contentPane.setToolTipText("");
		contentPane.setBackground(SystemColor.activeCaption);
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));

		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		txtUsername = new JTextField();
		txtUsername.setBackground(SystemColor.controlShadow);
		txtUsername.setBounds(41, 141, 174, 20);
		contentPane.add(txtUsername);
		txtUsername.setColumns(10);
		
		JLabel lblNewLabel = new JLabel("USERNAME");
		lblNewLabel.setFont(new Font("Yu Gothic UI Semibold", Font.PLAIN, 16));
		lblNewLabel.setBounds(41, 115, 94, 14);
		contentPane.add(lblNewLabel);
		
		JLabel lblNewLabel_1 = new JLabel("LOG IN");
		lblNewLabel_1.setFont(new Font("Yu Gothic UI Semibold", Font.BOLD, 22));
		lblNewLabel_1.setBounds(179, 43, 75, 25);
		contentPane.add(lblNewLabel_1);
		
		JLabel lblPassword = new JLabel("PASSWORD");
		lblPassword.setFont(new Font("Yu Gothic UI Semibold", Font.PLAIN, 16));
		lblPassword.setBounds(41, 172, 86, 14);
		contentPane.add(lblPassword);
		
		passwordField = new JPasswordField();
		passwordField.setBackground(SystemColor.controlShadow);
		passwordField.setBounds(41, 197, 174, 20);
		contentPane.add(passwordField);
		
		lblNewLabel_2 = new JLabel("New label");
		lblNewLabel_2.setIcon(new ImageIcon("C:\\Users\\dalidanm\\Downloads\\qweqwe.png"));
		lblNewLabel_2.setBounds(123, 22, 46, 57);
		contentPane.add(lblNewLabel_2);
		
		JButton btnNewButton = new JButton("ENTER");
		btnNewButton.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				
				// Initialize variable that will inherit jfieldpassowrd anD jtxtfield
				String username = txtUsername.getText();
				String password = passwordField.getText();
				
				// Initialize a variable for our test case
				String tusername = "Student-01";
				String tpassword = "Finals123";
				
				
				// condition statements for user login
				if (username.contains(tusername)&& password.contains(tpassword)) {
					JOptionPane.showMessageDialog(null,"SUCCESSFULLY LOGIN");
					
					
				}
				
				
				// the hierarchy is essential here
				// it is important that the code with two condition is on top or else it would be ignored
				
				else if (!(username.contains(tusername)&& password.contains(tpassword))) {
					JOptionPane.showMessageDialog(null,"INCORRECT USERNAME and PASSWORD!");
				}
				else if(!(username.contains(tusername)) ) {
					JOptionPane.showMessageDialog(null,"INCORRECT STUDENT USERNAME!");
				}
				
				else if(!(password.contains(tpassword)) ) {
					JOptionPane.showMessageDialog(null,"INCORRECT  PASSWORD!");
				}
				
			}
		});
		btnNewButton.setFont(new Font("Yu Gothic UI Semibold", Font.PLAIN, 13));
		btnNewButton.setBackground(SystemColor.controlShadow);
		btnNewButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
			}
		});
		btnNewButton.setBounds(266, 240, 89, 23);
		contentPane.add(btnNewButton);
	}
}
