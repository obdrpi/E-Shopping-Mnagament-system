import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import layout.TableLayout;//download jar file from net 
class a implements ActionListener,ItemListener
JFrame f,f1,f2;
TextField t1,t2,t3,t4,t5;
JPanel p1,p2,p3;
JLabel l1,l2,l3,l4,l5,l6,l7;
JButton b1,b2,b3,b4,b5,b6,b7,b8,b9;
String Quater_1,Quater_2,Quater_3,Quater_4;
Choice c=new Choice();//ID
Choice c1=new Choice();//Class
Choice c2 =new Choice();//Search options
Choice c3=new Choice();//under construct..
Choice c4=new Choice();
int count=0,fly=0,swap=0,sense=0;//swap is used to design another table for fees information..
private int flag=0;//keeps count of ID
private Connection con;
private PreparedStatement ps;
private ResultSet rs;

public void itemStateChanged(ItemEvent i)
{
String str=c.getSelectedItem();
String str4=c4.getSelectedItem();
Object o=i.getSource();
if(o==c&&(!str.equals("SELECT ID")))//displaying info as per ID///
{
try{
int j=0;
c4.select("Select Quater");
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
con=DriverManager.getConnection("jdbc:odbc:swapnil");
Statement st=con.createStatement();
rs=st.executeQuery("SELECT * FROM myproduct where ID="+str);
while(rs.next())
{
if(j==0)
{
String name=rs.getString(2);
int roll=rs.getInt(3);
int Class=rs.getInt(4);
String GUARDIAN=rs.getString(5);
t1.setText(name);
t2.setText(String.valueOf(roll));
c1.select(String.valueOf(Class));
t4.setText(GUARDIAN);
Quater_1=rs.getString(6);///////
//t3.setText(Quater_1);
Quater_2=rs.getString(7);
Quater_3=rs.getString(8);
Quater_4=rs.getString(9);
}
else
j++;
}
con.close();
}
catch(Exception q){q.printStackTrace();}
}

if(o==c2)
{
String str2=c2.getSelectedItem();
if(str2.equals("Search By Class"))
{
f.setVisible(false);
f1.setVisible(true);
c1.select("SELECT ANY CLASS");
t2.setText("");
f1.setTitle("Search By Class");
f1.add(c1);
f1.add(b5);
f1.add(b6);
f1.setLayout(new GridLayout(3,1));
f1.pack();
count=1;
}

else if(str2.equals("Search By Name"))
{
f.setVisible(false);
f1.setVisible(true);
f1.setTitle("Search By Name");
f1.add(t5);
f1.add(b5);
f1.add(b6);
f1.setLayout(new GridLayout(3,1));
f1.pack();
count=2;
}
}
if(o==c1)
System.out.println(c1.getSelectedItem());
if(o==c4)
{
if(str4.equals("QUATER_I"))
{
sense=2;
t3.setText(Quater_1);
}
if(str4.equals("QUATER_II"))
{
sense=3;
t3.setText(Quater_2);
}
if(str4.equals("QUATER_III"))
{
sense=4;
t3.setText(Quater_3);
}
if(str4.equals("QUATER_IV"))
{
sense=5;
t3.setText(Quater_4);
}
}
}

///
public void actionPerformed(ActionEvent e)
{
Object o=e.getSource();
if(o==b4)//exit
System.exit(0);

if(o==b1)//insert
{
try
{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	con=DriverManager.getConnection("jdbc:odbc:swapnil");
	ps=con.prepareStatement("INSERT into myproduct (ID,NAME,ROLL_NO,CLASS,GUARDIAN) values (?,?,?,?,?)");
	
	String name=t1.getText();
	name=name.toUpperCase();
	int roll=Integer.parseInt(t2.getText());
	int Class=Integer.parseInt(c1.getSelectedItem());
	String GUARDIAN =t4.getText();
	GUARDIAN=GUARDIAN.toUpperCase();
	flag++;
	ps.setInt(1,flag);
	ps.setString(2,name);
	ps.setInt(3,roll);
	ps.setInt(4,Class);
	ps.setString(5,GUARDIAN);
	ps.executeUpdate();
	
	c.add(String.valueOf(flag));
	c.addItemListener(this);
	con.close();
	
	l5.setText("COMPLETE");
	
	
}
catch(Exception ex)
{
ex.printStackTrace();
l5.setText("INVALID ENTRY");
}
}
///	
if(o==b2)//update
{
try
{
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	con=DriverManager.getConnection("jdbc:odbc:swapnil");
	ps=con.prepareStatement("UPDATE myproduct SET ROLL_NO=?,CLASS=?,GUARDIAN=?,NAME=? where ID="+c.getSelectedItem());
	String name=t1.getText();
	name=name.toUpperCase();
	int roll=Integer.parseInt(t2.getText());
	int Class=Integer.parseInt(c.getSelectedItem());
	String GUARDIAN =t4.getText();
	GUARDIAN=GUARDIAN.toUpperCase();
	ps.setInt(1,roll);
	ps.setInt(2,Class);
	ps.setString(3,GUARDIAN);
	ps.setString(4,name);
	ps.executeUpdate();
	con.close();
	l5.setText("COMPLETE");
	}

	catch(Exception x){l5.setText("INVALID ENTRY");}
}

///
if(o==b3)//clear
{
t1.setText("");
t2.setText("");
c1.select("SELECT ANY CLASS");
t3.setText("");
t4.setText("");
c.select("SELECT ID");
l5.setText("Information Center");
c4.select("Select Quater");
}
if(o==b6)//back button
{

new a();
f1.setVisible(false);
f2.setVisible(false);
}

if(o==b8)//pay fees button
{
JLabel l=new JLabel("FEES AMOUUNT = ");

f.setVisible(false);
//f1.add(c1);
f1.add(c4);
f1.add(c);
f1.setTitle("Pay Fees");

f1.add(l);
f1.add(t3);

b9=new JButton("GET AMOUNT");
b9.addActionListener(this);
f1.add(b9);
f1.add(b6);
f1.setLayout(new GridLayout(4,2));	
f1.pack();
f1.setVisible(true);	
}

if(o==b9)//enter button for pay fees
{
int res=0;
try
	{
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	con=DriverManager.getConnection("jdbc:odbc:swapnil");
	
	ps=con.prepareStatement("Select * from myproduct1 where CLASS=?");
	
	ps.setString(1,c1.getSelectedItem());
	
	rs=ps.executeQuery();
	while(rs.next())
	{
	if(res==0)
	{
	res=rs.getInt(sense);
	t3.setText("Rs "+res);
	System.out.println(res);
	}	
	}
	Statement st=con.createStatement();
	int z=st.executeUpdate("UPDATE myproduct SET "+c4.getSelectedItem()+"='PAID' where ID="+c.getSelectedItem());
	System.out.print(z);	
		con.close();
		st.close();
	}
	catch(Exception excep){excep.printStackTrace();}
}
if(o==b7)//table button
{
swap=1;
o=b5;
count=0;
}

if(o==b5)//enter a class or name or fees record list
{

	
	int x=1,y=1,num=0,i,point=0;

		try
		{
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		con=DriverManager.getConnection("jdbc:odbc:swapnil");
		Statement st=con.createStatement();
		ps=con.prepareStatement("SELECT * from myproduct WHERE NAME=?");///SIMPLE STATEMENT WON'T WORK
		if(swap==1)////for fees table
		rs=st.executeQuery("SELECT * from myproduct1");	//myproduct1 stores FEES info....	
		else if(count==2)
		{
		ps.setString(1,t5.getText());////////
		rs=ps.executeQuery();
		}
		else if(count==1)
		rs=st.executeQuery("SELECT * from myproduct WHERE CLASS="+c1.getSelectedItem());
		String ID=new String();
		String Name=new String();
		String Roll=new String();
		String GUARDIAN=new String();
		String Class=new String();
		
		JLabel l[] = new JLabel[100];
		while(rs.next())
		{
			
			if(point==0)
			{
			if(swap==1)//same names(ID,Name,etc for Class,Quater-I,,,,resp..) are used to reduce the size of code....
			{
			ID="Class";
			Name="Quater-I(Rs)";
			Roll="Quater-II(Rs)";
			Class="Quater-III(Rs)";
			GUARDIAN="Quater-IV(Rs)";
			
			}
			else
			{
			ID="ID";
			Name="Name";
			Roll="Roll Number";
			Class="Class";
			GUARDIAN="GUARDIAN-NAME";			
			}
			String label[] = {ID,Name,Roll,Class,GUARDIAN};			
			for (i = 0; i < label.length; i++,num++)
			{
				l[num] = new JLabel(label[i]);
			
				f2.add(l[num], String.valueOf(x)+","+String.valueOf(y));
				x=x+2;
			}
			y=y+2;
			x=1;
			point++;		
			}
		if(swap!=1)
		{
		ID=String.valueOf(rs.getInt(1));
		Name=rs.getString(2);
		Roll=String.valueOf(rs.getInt(3));
		Class=String.valueOf(rs.getInt(4));
		GUARDIAN=rs.getString(5);
		}
		else
		{
		ID=String.valueOf(rs.getInt(1));
		Name=String.valueOf(rs.getInt(2));
		Roll=String.valueOf(rs.getInt(3));
		Class=String.valueOf(rs.getInt(4));
		GUARDIAN=String.valueOf(rs.getInt(5));
		
		}
		 String label1[] = {ID,Name,Roll,Class,GUARDIAN}; 
        		
        for (i = 0; i < label1.length; i++,num++)
		{
            l[num] = new JLabel(label1[i]);
			
			f2.add(l[num], String.valueOf(x)+","+String.valueOf(y));
			x=x+2;
			
		}
		y=y+2;
		x=1;
		point++;
		}
		con.close();
		st.close();
		
        f2.add(b6,"3,27");
		f2.pack();
		f1.setVisible(false);
		f.setVisible(false);
        f2.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        f2.setVisible(true);
		fly=0;
		}
		catch(Exception exe){exe.printStackTrace();}
}

}

a()
{
f=new JFrame("My Project");
f1=new JFrame("SEARCH");
f1.setVisible(false);
p1=new JPanel();
t5=new TextField(19);
 t1=new TextField(19);
 t2=new TextField(19);
 t3=new TextField(19);
 t3.setEditable(false);
 t3.setBackground(Color.white);
 t4=new TextField(19);
 t5=new TextField(19); 
 l1=new JLabel("NAME");
 l2=new JLabel("ROLL_NO");
 l3=new JLabel("CLASS");
 l4=new JLabel("GUARDIAN'S NAME"); 
 l5=new JLabel("Information Center");
 l6=new JLabel("QUICK SEARCH");
 //l7=new JLabel("FEES");
b1=new JButton("INSERT");
b2=new JButton("UPDATE");
b3=new JButton("CLEAR");
b4=new JButton("EXIT");
b7=new JButton("FEES-LIST");
b8=new JButton("FEES-PAY");

c4.addItemListener(this);
b1.addActionListener(this);
b2.addActionListener(this);
b3.addActionListener(this);
b4.addActionListener(this);
b7.addActionListener(this);
b8.addActionListener(this);
p1.add(l1);
p1.add(t1);
p1.add(l2);
p1.add(t2);
p1.add(l3);
p1.add(c1);
p1.add(l4);
p1.add(t4);
p1.add(c4);
p1.add(t3);
p1.add(l6);
p1.add(c2);
c4.add("Select Quater");
c4.add("QUATER_I");
c4.add("QUATER_II");
c4.add("QUATER_III");
c4.add("QUATER_IV");
p1.setLayout(new GridLayout(6,2,5,5));
int CLASS=0;
c1.add("SELECT ANY CLASS");
c2.add("List");
c2.add("Search By Name");
c2.add("Search By Class");
c2.add("Search For Late Fees");
c2.addItemListener(this);
while(CLASS!=12)
{
CLASS++;
c1.add(String.valueOf(CLASS));

}
c1.addItemListener(this);

try{
l5.setHorizontalAlignment(0);//cursor center align
l5.setDisplayedMnemonicIndex(0);

Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
con=DriverManager.getConnection("jdbc:odbc:swapnil");
Statement st=con.createStatement();
rs=st.executeQuery("SELECT ID from myproduct");
c.add("SELECT ID");
while(rs.next())
{
flag=rs.getInt(1);
c.add(String.valueOf(flag));
}
flag=c.getItemCount();
flag--;
c.addItemListener(this);
con.close();
st.close();

}
catch(Exception e)
{
e.printStackTrace();
}


p3=new JPanel();
p3.add(l5);
p3.add(c);
f.add(p3,BorderLayout.NORTH);
f.add(p1,BorderLayout.CENTER);
p2=new JPanel();
p2.add(b1);
p2.add(b2);
p2.add(b3);
p2.add(b4);
p2.add(b7);
p2.add(b8);
p2.setLayout(new GridLayout(2,4,5,5));
f.add(p2,BorderLayout.SOUTH);
f.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
f.setSize(350,280);
//f.setResizable(false);

f.setVisible(true);
f1.setSize(100,100);

b5=new JButton("ENTER");
b6=new JButton("BACK");

b5.addActionListener(this);
b6.addActionListener(this);
f1.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

	f2= new JFrame("Class View");
	
	f2.setResizable(false);
     double size[][] = {{10, 50, 10, 100,10,100,10,100,10,100,10,100}, // Columns
            {10,10,5,10,5,10,5,10,5,10,5,10,5,10,5,10,5,10,5,10,5,10,5,10,5,10,5,25,5}}; // Rows
       f2.setLayout(new TableLayout(size));
}

public static void main(String []awt)
{
new a();
}
}