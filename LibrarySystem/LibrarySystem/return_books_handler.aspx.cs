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
    public partial class return_books_hanler : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source = DESKTOP-3L4FS0A\SQLEXPRESS;database= LibrarySystem; Integrated Security = True");
        int id;
        string books_isbn = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == System.Data.ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();

            id = Convert.ToInt32( Request.QueryString["id"].ToString());
            string query = "update issue_books set is_books_return='YES', books_return_date='"+DateTime.Now.ToString("dd/MM/yyyy")+"' where id="+id+"";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();

            query = "select * from issue_books where id=" + id;
            cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            foreach(DataRow row in dt.Rows)
            {
                books_isbn = row["books_isbn"].ToString();
            }

            query = "update books set available_qty = available_qty + 1 where isbn='" + books_isbn + "'";
            cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();

            Response.Redirect("return_books.aspx");
        }
    }
}