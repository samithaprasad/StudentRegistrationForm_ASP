using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
namespace StudentRegistrator
{
    public partial class RegistrationForm : System.Web.UI.Page
    {
         
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string name = Request.Form.Get("Name");
            string address = Request.Form.Get("Address");
            string contact = Request.Form.Get("Contact");
            string email = Request.Form.Get("Email");
            insertData(name,address,contact,email);
        }
        
        void insertData(string N,string A,string C, string E)
        {
            MySqlConnection con = connection();
            string quary = "insert into login.student (FullName,PostalAddress,ContactNumber,Email) values ('"+N+"','"+A+"','"+C+"','"+E+"');";
            MySqlCommand cmd = new MySqlCommand(quary, con);
            con.Open();
            try
            {   cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Registration Successfully')</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
                return;
            }
            con.Close();
        }

        MySqlConnection connection()
        {
           
            MySqlConnection con = null;
            string connString = "server =localhost; Uid=root; password = toor;  database =login;"; 
            try
            {
                con = new MySqlConnection(connString);
            }
            catch (Exception e)
            {
                Response.Write("<script>alert('" + e.Message + "')</script>");
            }

            return con;
        }
    }
    
}