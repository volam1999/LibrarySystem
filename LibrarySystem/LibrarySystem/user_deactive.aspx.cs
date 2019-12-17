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
    public partial class user_deactive : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source = DESKTOP-3L4FS0A\SQLEXPRESS;database= LibrarySystem; Integrated Security = True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == System.Data.ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();

            int id = Convert.ToInt32(Request.QueryString["id"].ToString());

            String querry = "update registration set approved='NO' where id=" + id;
            SqlCommand com = new SqlCommand(querry, con);
            com.ExecuteNonQuery();
            Response.Redirect("display_user_info.aspx");
        }
    }
}