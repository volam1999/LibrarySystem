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
    public partial class display_all_book : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source = DESKTOP-3L4FS0A\SQLEXPRESS;database= LibrarySystem; Integrated Security = True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["update"] != null)
            {
                if(Session["update"].ToString() == "failed")
                {
                    error1.Style.Add("display", "block");
                    Session.Remove("update");
                }
                else
                {
                    done1.Style.Add("display", "block");
                    Session.Remove("update");
                }
            }

            if (Session["delete"] != null)
            {
                if (Session["delete"].ToString() == "failed")
                {
                    error2.Style.Add("display", "block");
                    Session.Remove("delete");
                }
                else
                {
                    done2.Style.Add("display", "block");
                    Session.Remove("delete");
                }
            }

            if (con.State == System.Data.ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();

            if (IsPostBack) return;

            String querry = "select * from books";
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