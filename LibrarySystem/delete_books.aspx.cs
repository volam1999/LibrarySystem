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
    public partial class delete_books : System.Web.UI.Page
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

            string query = "delete from books where id =" + id;
            SqlCommand cmd = new SqlCommand(query, con);

            try
            {
                cmd.ExecuteNonQuery();
                Session["delete"] = "success";
            }
            catch (Exception)
            {
                Session["delete"] = "failed";
            }

            con.Close();
            Response.Redirect("display_all_book.aspx");
        }
    }
}