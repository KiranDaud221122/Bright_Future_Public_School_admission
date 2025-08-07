using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bright_Future_Public_School
{
    public partial class AdmissionForm : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CON"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (!IsPostBack)
            {
                @class.Items.Clear();
                @class.Items.Add("Play");
                @class.Items.Add("Group");
                @class.Items.Add("LKG");
                @class.Items.Add("UKG");
                @class.Items.Add("1st Standard");
                @class.Items.Add("2nd Standard");
                @class.Items.Add("3rd Standard");
                @class.Items.Add("4th Standard");
                @class.Items.Add("5th Standard");
                @class.Items.Add("6th Standard");
                @class.Items.Add("7th Standard");
                @class.Items.Add("8th Standard");
                @class.Items.Add("9th Standard");
                @class.Items.Add("10th Standard");
            }

            if (fuBirthCertificate.HasFile)
            {
                string str = fuBirthCertificate.FileName;
                fuBirthCertificate.PostedFile.SaveAs(Server.MapPath("~/Upload_BirthCertificate/" + str));
                string file1 = "~/Upload_BirthCertificate/" + str.ToString();
                Session["BirthCertificatePath"] = file1;
            }

            if (fuAadhar.HasFile)
            {
                string str = fuAadhar.FileName;
                fuAadhar.PostedFile.SaveAs(Server.MapPath("~/Upload_Aadhar/" + str));
                string file2 = "~/Upload_Aadhar/" + str.ToString();
                Session["AadharPath"] = file2;
            }

            if (fuPhoto.HasFile)
            {
                string str = fuPhoto.FileName;
                fuPhoto.PostedFile.SaveAs(Server.MapPath("~/Upload_PassportPhoto/" + str));
                string file3 = "~/Upload_PassportPhoto/" + str.ToString();
                Session["PhotoPath"] = file3;
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("InsertIntoChildAdmission", con);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("child_name", txtChildName.Text);
            cmd.Parameters.AddWithValue("child_age", txtage.Text);
            cmd.Parameters.AddWithValue("child_DOB", txtDOB.Text);
            cmd.Parameters.AddWithValue("child_BG", ddlBloodGroup.SelectedItem.Text);
            cmd.Parameters.AddWithValue("child_religion", txtReligion.Text);
            cmd.Parameters.AddWithValue("child_cast", txtcast.Text);
            cmd.Parameters.AddWithValue("child_nationality", txtNationality.Text);
            cmd.Parameters.AddWithValue("child_prevclass", txtPrevClass.Text);
            cmd.Parameters.AddWithValue("child_prevschool", txtPrevSchool.Text);
            cmd.Parameters.AddWithValue("child_gender", ddlGender.Text);
            cmd.Parameters.AddWithValue("father_name", txtFatherName.Text);
            cmd.Parameters.AddWithValue("father_email", txtFatherEmail.Text);
            cmd.Parameters.AddWithValue("father_contact", txtFatherContact.Text);
            cmd.Parameters.AddWithValue("father_occupation", txtFatherOccupation.Text);
            cmd.Parameters.AddWithValue("mother_name", txtMotherName.Text);
            cmd.Parameters.AddWithValue("mother_email", txtMotherEmail.Text);
            cmd.Parameters.AddWithValue("mother_contact", txtMotherContact.Text);
            cmd.Parameters.AddWithValue("mother_occupation", txtMotherOccupation.Text);
            cmd.Parameters.AddWithValue("Parents_Home_Address", txtAddress.Text);
            cmd.Parameters.AddWithValue("child_class", @class.SelectedItem.Text);
            cmd.Parameters.AddWithValue("child_fees", fees.Text);
            cmd.Parameters.AddWithValue("child_birthcertificate", Session["BirthCertificatePath"].ToString());
            cmd.Parameters.AddWithValue("child_Aadhar", Session["AadharPath"].ToString());
            cmd.Parameters.AddWithValue("child_photo", Session["PhotoPath"].ToString());
            cmd.Parameters.AddWithValue("DateTime", DateTime.Now);

            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Admission Successfully Done');</script>");
            }
            catch (SqlException ex)
            {
                // Check for seats full message from stored procedure
                if (ex.Message.Contains("Seats are full"))
                {
                    Response.Write("<script>alert('Admission closed! All 25 seats for this class are full.');</script>");
                }
                else
                {
                    Response.Write("<script>alert('Error: " + ex.Message.Replace("'", "") + "');</script>");
                }
            }

                             Response.Redirect(String.Format("RazorPaycheckout.aspx?father_name={0}&child_name={1}&father_email={2}&father_contact={3}&child_class={4}&fees={5}",
                              txtFatherName.Text,
                              txtChildName.Text,
                              txtFatherEmail.Text,
                              txtFatherContact.Text,
                              @class.SelectedItem.Text,
                              fees.Text // should be numeric
));


            // Clear all fields after submit
            txtChildName.Text = "";
            txtage.Text = "";
            txtDOB.Text = "";
            ddlBloodGroup.ClearSelection();
            txtNationality.Text = "";
            txtcast.Text = "";
            txtPrevClass.Text = "";
            txtPrevSchool.Text = "";
            txtReligion.Text = "";
            ddlGender.ClearSelection();
            txtFatherName.Text = "";
            txtFatherEmail.Text = "";
            txtFatherContact.Text = "";
            txtFatherOccupation.Text = "";
            txtMotherName.Text = "";
            txtMotherEmail.Text = "";
            txtMotherContact.Text = "";
            txtMotherOccupation.Text = "";
            txtAddress.Text = "";
            @class.ClearSelection();
            fees.Text = "";

            Session["BirthCertificatePath"] = null;
            Session["AadharPath"] = null;
            Session["PhotoPath"] = null;
        }

        protected void ddlClass_SelectedIndexChanged(object sender, EventArgs e)
        {
        }

        protected void dob_TextChanged(object sender, EventArgs e)
        {
            // your code
        }
    }
}
