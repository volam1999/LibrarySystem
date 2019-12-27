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
    public partial class view_account : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source = DESKTOP-3L4FS0A\SQLEXPRESS;database= LibrarySystem; Integrated Security = True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == System.Data.ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();

            lb_user.Text = Session["user"].ToString();
            string query = "select * from registration where username='" + Session["user"].ToString() + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            foreach (DataRow row in dt.Rows)
            {
                img_account.ImageUrl = row["photo"].ToString();
                lb_name.Text = row["firstname"].ToString() +" "+ row["lastname"].ToString();
                lb_email.Text = row["email"].ToString();
                lb_contact.Text = row["contact"].ToString();
            }
        }
    }
}