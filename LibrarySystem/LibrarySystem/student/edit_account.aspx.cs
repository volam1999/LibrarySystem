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
    public partial class edit_account : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source = DESKTOP-3L4FS0A\SQLEXPRESS;database= LibrarySystem; Integrated Security = True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == System.Data.ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();

            if (IsPostBack) return;

            string query = "select * from registration where username ='" + Session["user"].ToString() +"'";
            SqlCommand cmd = new SqlCommand(query, con);

            cmd.ExecuteNonQuery();

            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);

            da.Fill(dt);

            foreach (DataRow row in dt.Rows)
            {
                txt_firstname.Text = row["firstname"].ToString();
                txt_lastname.Text = row["lastname"].ToString();
                txt_email.Text = row["email"].ToString();
                txt_contact.Text = row["contact"].ToString();
                lb_photo.Text = row["photo"].ToString();
            }
        }

        protected void btn_add_Click(object sender, EventArgs e)
        {
            string path = "";

            if (fud_image.FileName.ToString() != "")
            {
                fud_image.SaveAs(Request.PhysicalApplicationPath + "/registration_images/" + fud_image.FileName.ToString());
                path = "/registration_images/" + fud_image.FileName.ToString();
            }
            else
            {
                path = lb_photo.Text.ToString();
            }

            String query = "update registration set firstname =N'" + txt_firstname.Text + "', photo = '" + path + "', lastname = N'" + txt_lastname.Text + "', email ='" + txt_email.Text + "', contact='" + txt_contact.Text + "' where username ='" + Session["user"].ToString() +"'";
            SqlCommand cmd = new SqlCommand(query, con);

            try
            {
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Update Successfully!!!'); window.location.href='./view_account.aspx';</script>");
            }
            catch (Exception)
            {
                con.Close();
                Response.Write("<script>alert('Update FAILED!!!'); window.location.href='./view_account.aspx';</script>");
            }
        }
    }
}