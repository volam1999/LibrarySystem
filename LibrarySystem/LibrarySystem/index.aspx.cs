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
    public partial class index : System.Web.UI.Page
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
            string query = "SELECT COUNT(*) FROM registration where usertype='admin'";
            SqlCommand cmd = new SqlCommand(query, con);
            lb_admin.Text = cmd.ExecuteScalar().ToString();

            query = "SELECT COUNT(*) FROM registration where usertype <> 'admin'";
            cmd = new SqlCommand(query, con);
            lb_user.Text = cmd.ExecuteScalar().ToString();

            query = "SELECT COUNT(*) FROM books";
            cmd = new SqlCommand(query, con);
            lb_books.Text = cmd.ExecuteScalar().ToString();

            query = "SELECT COUNT(*) FROM issue_books where is_books_return = 'NO'";
            cmd = new SqlCommand(query, con);
            lb_issued.Text = cmd.ExecuteScalar().ToString();


        }
    }
}