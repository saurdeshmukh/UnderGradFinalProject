package sas.samples;


import java.awt.BorderLayout;

import java.util.Arrays;

import java.util.List;


import javax.swing.JComponent;

import javax.swing.JFrame;

import javax.swing.JLabel;

import javax.swing.JTextField;

import javax.swing.SwingUtilities;

import javax.swing.border.EmptyBorder;

import javax.swing.text.Document;



public class CompletionSample implements Runnable 
{

    
    
public void run() 
{
        
// Create the completion service.
        
NameService nameService = new NameService();

        
// Create the input field.
        
JTextField input = new JTextField();

        
// Create the auto completing document model with a reference to the
        
// service and the input field.
        
Document autoCompleteDocument = new AutoCompleteDocument(nameService,
input);

        
// Set the auto completing document as the document model on our input
        
// field.
        
input.setDocument(autoCompleteDocument);
        
        
// Below we just create a frame and display the GUI.

        
JFrame frame = new JFrame("Autocompletion sample");
        
frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

        
JLabel description = new JLabel();
        
description.setText("<html><b>Autocompletion sample for the most<br>"
 + " popular baby names (2008)</b><br><br>"
+ nameService.toString().replace("\n", "<br>") + "<br>");


 JComponent contentPane = (JComponent) frame.getContentPane();
        
contentPane.setLayout(new BorderLayout());
        
contentPane.add(input, BorderLayout.SOUTH);
        
contentPane.add(description, BorderLayout.CENTER);
        
contentPane.setBorder(new EmptyBorder(10, 10, 10, 10));
        
frame.pack();
        
frame.setVisible(true);
    
}

    
   
public static void main(String[] args) 
{
        
SwingUtilities.invokeLater(new CompletionSample());
    
}

    

 private static class NameService implements CompletionService<String> 
{

        

        
private List<String> data;

        
 public NameService() 
{
            
data = Arrays.asList("Jacob", "Emma", "Michael", "Isabella",
"Ethan", "Emily", "Joshua", "Madison", "Daniel", "Ava",
"Alexander", "Olivia", "Anthony", "Sophia", "William",
 "Abigail", "Christopher", "Elizabeth", "Matthew", "Chloe");
        
}

        

        
@Override
        
public String toString() 
{
            
StringBuilder b = new StringBuilder();
            
for (String o : data) 
{
                
b.append(o).append("\n");
            
}
            
return b.toString();
        
}

       
 
        
public String autoComplete(String startsWith) 
{
           
 // Naive implementation, but good enough for the sample
            
String hit = null;
            
for (String o : data) 
{
                
if (o.startsWith(startsWith)) 
{
                    
// CompletionService contract states that we only
                    
// should return completion for unique hits.
                    
if (hit == null) 
{
                        
hit = o;
                    
} 
else 
{
                        
hit = null;
                        
break;
                    
}
                
}
            
}
            
return hit;
        
}

    
}

}
