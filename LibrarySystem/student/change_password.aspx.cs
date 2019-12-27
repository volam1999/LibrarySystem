using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace LibrarySystem.student
{
    public partial class change_password : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source = DESKTOP-3L4FS0A\SQLEXPRESS;database= LibrarySystem; Integrated Security = True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == System.Data.ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();
        }

        protected void btn_change_Click(object sender, EventArgs e)
        {
            if (txt_password.Text != txt_cpassword.Text)
            {
                Response.Write("<script>alert('Confirm password does not match!');</script>");
            }
            else
            {
                String querry = "update registration set password = '" + txt_password.Text + "' where username ='" + Session["user"].ToString() + "'";
                SqlCommand com = new SqlCommand(querry, con);
                com.ExecuteNonQuery();
                Response.Write("<script>alert('Change Password Successfully!!!'); window.location.href='./index.aspx';</script>");
            }
        }
    }
}