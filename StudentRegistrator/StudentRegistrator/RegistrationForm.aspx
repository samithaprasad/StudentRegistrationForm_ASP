<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationForm.aspx.cs" Inherits="StudentRegistrator.RegistrationForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <title>Student Registration Form</title>
    <link rel="stylesheet"  href="Css/StyleSheet.css" />
</head>
<body>
    <header>
        <div class="class-1">
            <p>ABC Institute</p>
    <h1>Student Registration Form</h1>
             <p>2021 Advance Level</p>
    
    </div>
    </header>
    <main>
    
    <form id="form1" runat="server">
    <section>
        <table style="width: 100%;">
            <caption class="c1">Fill the form</caption> 
            <tr>
                <td ><b>Name with initials:</b></td><td><input type="text" name="Name" size="50" maxlength="60" style="height: 30px" /></td>
            </tr>
            <tr>
                <td ><b>Address:</b></td>
                <td><textarea name="Address"  rows="4" style="width: 297px" ></textarea></td>

            </tr>
            <tr>
                <td><b>Contact No.:</b></td><td><input type="text" name="Contact" size="25" maxlength="12" style="height: 30px" /></td>
            </tr>
            <tr>
                <td ><b>Email Address.:</b></td><td><input type="text" name="Email" size="50" maxlength="150" style="height: 30px" /></td>
            </tr>
            <tr>
                <td></td><td>
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" Font-Bold="True" Font-Size="18px" Height="45px" Width="132px" /></td>
            </tr>
        </table>
        
	
		
	
    </section>
   
    </form>
    </main>
    <footer>
        <p>copyright &copy; 2021,</p>
    </footer>
</body>
    
   
</html>
