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
    public partial class display_student_info : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source = DESKTOP-3L4FS0A\SQLEXPRESS;database= LibrarySystem; Integrated Security = True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == System.Data.ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();

            String querry = "select * from registration where usertype = 'student'";
            SqlCommand com = new SqlCommand(querry, con);
            com.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(com);
            da.Fill(dt);
            r1.DataSource = dt;
            r1.DataBind();
        }
    }
}