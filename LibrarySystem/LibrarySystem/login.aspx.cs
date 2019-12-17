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
    public partial class login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source = DESKTOP-3L4FS0A\SQLEXPRESS;database= LibrarySystem; Integrated Security = True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if(con.State == System.Data.ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();
        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            int count = 0;
            String querry = "select * from registration where username ='" + txt_username.Text + "' and password='" + txt_password.Text + "' and approved = 'YES'";
            SqlCommand com = new SqlCommand(querry, con);
            com.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(com);
            da.Fill(dt);
            count = dt.Rows.Count;

            if(count > 0)
            {
                foreach(DataRow row in dt.Rows)
                {
                    if(row["usertype"].ToString() == "admin")
                    {
                        Session["admin"] = row["username"].ToString();
                        Response.Redirect("index.aspx");
                    }
                    else
                    {
                        Session["user"] = row["username"].ToString();
                        Response.Redirect("./student/index.aspx");
                    }
                }
            }
            else
            {
                error.Style.Add("display", "block");
            }

        }
    }
}