using System;
using System.Data;
using System.Data.SqlClient;

namespace LibrarySystem
{
    public partial class edit_books : System.Web.UI.Page
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

            int id = Convert.ToInt32(Request.QueryString["id"].ToString());

            string query = "select * from books where id =" + id;
            SqlCommand cmd = new SqlCommand(query, con);

            cmd.ExecuteNonQuery();

            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);

            da.Fill(dt);

            foreach (DataRow row in dt.Rows)
            {
                txt_book_title.Text = row["title"].ToString();
                txt_book_authorname.Text = row["author"].ToString();
                txt_book_isbn.Text = row["isbn"].ToString();
                txt_book_qty.Text = row["available_qty"].ToString();
                lb_book_img.Text = row["image"].ToString();
            }

        }

        protected void btn_add_Click(object sender, EventArgs e)
        {
            string path = "";

            int id = Convert.ToInt32(Request.QueryString["id"].ToString());

            if (fud_image.FileName.ToString() != "")
            {
                fud_image.SaveAs(Request.PhysicalApplicationPath + "/books_images/" + fud_image.FileName.ToString());
                path = "/books_images/" + fud_image.FileName.ToString();
            }
            else
            {
                path = lb_book_img.Text.ToString();
            }

            String query = "update books set title =N'" + txt_book_title.Text + "', image = N'" + path + "', author = N'" + txt_book_authorname.Text + "', isbn ='" + txt_book_isbn.Text + "', available_qty='" + txt_book_qty.Text + "' where id =" + id;
            SqlCommand cmd = new SqlCommand(query, con);

            try
            {
                cmd.ExecuteNonQuery();
                Session["update"] = "success";
            }
            catch (Exception)
            {
                Session["update"] = "failed";
            }

            con.Close();
            Response.Redirect("display_all_book.aspx");

        }
    }
}