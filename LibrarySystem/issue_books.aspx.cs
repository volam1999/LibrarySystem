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
    public partial class issue_books : System.Web.UI.Page
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

            ddl_id.Items.Clear();
            ddl_isbn.Items.Clear();

            string query = "select * from registration where usertype <> 'admin'";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            ddl_id.DataSource = dt;
            ddl_id.DataBind();

            query = "select * from books";
            cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            dt = new DataTable();
            da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            ddl_isbn.DataSource = dt;
            ddl_isbn.DataBind();

        }

        protected void btn_issue_Click(object sender, EventArgs e)
        {
            int found = 0;
            string query1 = "select * from issue_books where student_username ='" + ddl_id.SelectedItem.ToString() + "' and books_isbn='" + ddl_isbn.SelectedItem.ToString() + "' and is_books_return='NO'";
            SqlCommand cmd1 = new SqlCommand(query1, con);
            cmd1.ExecuteNonQuery();
            DataTable dt1 = new DataTable();
            SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
            da1.Fill(dt1);
            found = Convert.ToInt32(dt1.Rows.Count.ToString());
            
            if(found > 0)
            {
                Response.Write("<script> alert('This book already AVAILABLE with user: "+ddl_id.SelectedItem.ToString()+"!!!');</script>");
            }
            else
            {
                if (lb_instock.Text.Equals("0"))
                {
                    Response.Write("<script> alert('This books is NOT available in stock!!!');</script>");
                }
                else
                {
                    string books_issue_date = DateTime.Now.ToString("dd/MM/yyyy");
                    string approx_return_date = DateTime.Now.AddDays(7).ToString("dd/MM/yyyy");
                    string username = "";

                    string query = "select * from registration where id ='"+ ddl_id.SelectedValue.ToString() + "'";
                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.ExecuteNonQuery();
                    DataTable dt = new DataTable();
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    da.Fill(dt);
                    foreach (DataRow row in dt.Rows)
                    {
                        username = row["username"].ToString();
                    }

                    query = "insert into issue_books values('" + ddl_id.SelectedValue.ToString() + "','" + username + "','" + ddl_isbn.SelectedItem.ToString() + "','" + books_issue_date + "','" + approx_return_date + "','NO','NO')";
                    cmd = new SqlCommand(query, con);
                    cmd.ExecuteNonQuery();

                    query = "update books set available_qty = available_qty-1 where isbn='" + ddl_isbn.SelectedItem.ToString() + "'";
                    cmd = new SqlCommand(query, con);
                    cmd.ExecuteNonQuery();

                    Response.Write("<script> alert('Books issue successfully!'); window.location.href=window.location.href </script>");
                }
            }
        }

        protected void ddl_isbn_SelectedIndexChanged(object sender, EventArgs e)
        {
            tb1.Style.Add("display", "table");
            img_issue.ImageUrl = "";
            lb_bookname.Text = "";
            lb_instock.Text = "";

            string query = "select * from books where isbn='"+ddl_isbn.SelectedItem.ToString()+"'";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            foreach(DataRow row in dt.Rows)
            {
                img_issue.ImageUrl = row["image"].ToString();
                lb_bookname.Text = row["title"].ToString();
                lb_instock.Text = row["available_qty"].ToString();
                lb_author.Text = row["author"].ToString();
            }
        }
    }
}