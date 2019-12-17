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
    public partial class add_penalty : System.Web.UI.Page
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

            string query = "select * from penalty";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();

            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            foreach(DataRow row in dt.Rows)
            {
                txt_penalty.Text = row["penalty"].ToString();
            }

        }

        protected void btn_add_Click(object sender, EventArgs e)
        {
            int count = 0;
            string query = "select * from penalty";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();

            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);

            count = dt.Rows.Count;

            if(count == 0)
            {
                query = "insert into penalty values('"+txt_penalty.Text+"')";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
            }
            else
            {
                query = "update penalty set penalty='"+txt_penalty.Text+"'";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
            }

            Response.Redirect("add_penalty.aspx");
        }
    }
}