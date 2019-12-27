using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace LibrarySystem
{
    public partial class registration : System.Web.UI.Page
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

        protected void btn_res_Click(object sender, EventArgs e)
        {
            string path = "";
            if(fud_image.FileName != "")
            {
                fud_image.SaveAs(Request.PhysicalApplicationPath + "/registration_images/" + fud_image.FileName.ToString());
                path = "/registration_images/" + fud_image.FileName.ToString();
            }

            String query = "insert into registration values('" + txt_res_firstname.Text + "', '" + txt_res_lastname.Text + "', '" + txt_res_username.Text + "', '" + txt_res_pass1.Text + "', '" + txt_res_email.Text + "','"+path+"','"+txt_res_contact+"','student','NO')";
            SqlCommand cmd = new SqlCommand(query, con);

            cmd.ExecuteNonQuery();
            con.Close();

            Response.Redirect("login.aspx");
        }
    }
}